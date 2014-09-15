//
//  ViewController.m
//  Attributor
//
//  Created by Lyndon Michael Bibera on 9/15/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textBody;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)updateColorOfSelectedText:(UIButton *)sender
{
    [self.textBody.textStorage addAttributes:@{NSForegroundColorAttributeName:sender.backgroundColor} range:self.textBody.selectedRange];
}

@end
