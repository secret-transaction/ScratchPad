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

- (IBAction)outline
{
    [self.textBody.textStorage addAttributes:@{NSStrokeWidthAttributeName:[NSNumber numberWithFloat:-3.0],
                                               NSStrokeColorAttributeName:[UIColor blackColor]}
                                       range:self.textBody.selectedRange];
}

- (IBAction)unoutline
{
    [self.textBody.textStorage removeAttribute:NSStrokeWidthAttributeName range:self.textBody.selectedRange];
}

@end
