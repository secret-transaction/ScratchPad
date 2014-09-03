//
//  ViewController.m
//  Card Game
//
//  Created by Lyndon Michael Bibera on 9/3/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *card;
@property (nonatomic, getter = isBack) BOOL back;

@end

@implementation ViewController

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
}

@end
