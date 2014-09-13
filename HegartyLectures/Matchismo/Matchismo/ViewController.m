//
//  ViewController.m
//  Matchismo
//
//  Created by Lyndon Michael Bibera on 9/13/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) NSUInteger flipsCount;

@end

@implementation ViewController

//IBAction is actually void - not used by compiler, only XCode uses this
- (IBAction)touchCardButton:(UIButton *)sender
{
    NSLog(@"Touched");
    
    if ([sender.currentTitle length]) {
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }
    
    self.flipsCount++;
}

- (void)setFlipsCount:(NSUInteger)flipsCount
{
    _flipsCount = flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %lu", (unsigned long)_flipsCount];
}


@end
