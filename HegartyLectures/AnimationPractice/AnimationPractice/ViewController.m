//
//  ViewController.m
//  AnimationPractice
//
//  Created by Lyndon Michael Bibera on 9/22/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *whiteBox;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)changeGravity:(id)sender
{
}

- (IBAction)startAnimation:(id)sender
{
    [UIView animateWithDuration:3.0 animations:^{
        self.whiteBox.alpha = 0.5;
        
        CGRect rect = self.whiteBox.frame;
        self.whiteBox.frame = CGRectMake(rect.origin.x+(rect.size.width/4), rect.origin.y+(rect.size.height/4), rect.size.width/2, rect.size.height/2);
    }];
}

@end
