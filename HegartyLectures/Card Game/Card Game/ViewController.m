//
//  ViewController.m
//  Card Game
//
//  Created by Lyndon Michael Bibera on 9/3/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//views are held by the ViewController using a weak
//pointer, because the view is held strongly by the root view
@property (weak, nonatomic) IBOutlet UIButton *card;
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;

@property (nonatomic, getter = isBack) BOOL back;
@property (nonatomic) int flipCount;

@end

@implementation ViewController

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %i", _flipCount];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    NSString *backgroundImage = @"card_front";
    if (self.isBack) {
        backgroundImage = @"card_back";
    }
    
    NSLog(@"Set Image:%@", backgroundImage);
    
    [sender setBackgroundImage:[UIImage imageNamed:backgroundImage] forState:UIControlStateNormal];
    
    self.back = !self.isBack;
    self.flipCount++;
}

@end
