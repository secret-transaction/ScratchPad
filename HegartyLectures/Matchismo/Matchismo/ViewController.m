//
//  ViewController.m
//  Matchismo
//
//  Created by Lyndon Michael Bibera on 9/13/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) NSUInteger flipsCount;
@property (strong, nonatomic) Deck *deck;

@end

@implementation ViewController

//IBAction is actually void - not used by compiler, only XCode uses this
- (IBAction)touchCardButton:(UIButton *)sender
{
    NSLog(@"Touched");
    
    if ([sender.currentTitle length]) {
        [sender setTitle:@"" forState:UIControlStateNormal];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
    } else {
        Card *card = [self.deck drawRandomCard];
        
        if (card) {
            [sender setTitle:card.contents forState:UIControlStateNormal];
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
            self.flipsCount++;
        }
    }
    
}

- (void)setFlipsCount:(NSUInteger)flipsCount
{
    _flipsCount = flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %lu", (unsigned long)_flipsCount];
}

- (Deck *)deck
{
    if (!_deck) {
        _deck = [PlayingCardDeck new];
    }
    
    return _deck;
}


@end
