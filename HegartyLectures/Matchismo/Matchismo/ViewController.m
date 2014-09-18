//
//  ViewController.m
//  Matchismo
//
//  Created by Lyndon Michael Bibera on 9/13/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) CardMatchingGame *game;
@property (weak, nonatomic) IBOutlet UISegmentedControl *modeSegmentControl;
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;
@property (weak, nonatomic) IBOutlet UISlider *resultSlider;

@end

@implementation ViewController

- (CardMatchingGame *)game
{
    if (!_game) {
        _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck] matchCardCount:self.modeSegmentControl.selectedSegmentIndex==0 ? 1 : 2];
        NSLog(@"Created a new Game [%@]", _game);
    }
    
    return _game;
}

- (IBAction)changeGameMode {
    self.game = nil;
    [self updateUI];
}

- (IBAction)dealCard:(UIButton *)sender {
    NSLog(@"Deal!");
    
    self.modeSegmentControl.enabled = YES;
    self.game = nil;
    [self updateUI];
}

//IBAction is actually void - not used by compiler, only XCode uses this
- (IBAction)touchCardButton:(UIButton *)sender
{
    NSLog(@"Touched");
    self.modeSegmentControl.enabled = NO;
    int cardIndex = (int)[self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

- (IBAction)updateHistory:(UISlider *)sender
{
    int val = (int)sender.value;
    self.resultsLabel.text = self.game.results[val];
}

- (void)updateUI
{
    for (UIButton *cardButton in self.cardButtons) {
        int cardIndex = (int)[self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        
        NSString *title = card.isChosen ? card.contents : @"";
        NSString *backgroundImage = card.isChosen ? @"cardfront" : @"cardback";
        
        [cardButton setTitle:title forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[UIImage imageNamed:backgroundImage] forState:UIControlStateNormal];
        
        cardButton.enabled = !card.isMatched;
    }
    
    self.scoreLabel.text = [NSString stringWithFormat:@"Score:%ld", (long)self.game.score];
    self.resultsLabel.text = [self.game.results lastObject];
    self.resultSlider.maximumValue = [self.game.results count];
    self.resultSlider.value = [self.game.results count];
}

- (Deck *)createDeck
{
    return [PlayingCardDeck new];
}


@end
