//
//  ViewController.m
//  VC Life Cycle
//
//  Created by Lyndon Michael Bibera on 9/15/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property (weak, nonatomic) IBOutlet UIButton *testButton;
@property (weak, nonatomic) IBOutlet UITextView *testBody;

@end

@implementation ViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self displayContents:@"awakeFromNib"];
}

- (instancetype)initWithNibName:(NSString *)name bundle:(NSBundle *)bundle
{
    self = [super initWithNibName:name bundle:bundle];
    
    if (self) {
        [self displayContents:@"initWithNibName"];
    }
    
    return self;
}

- (void)viewDidLoad
{
    //Outlets loaded
    [super viewDidLoad];
    [self displayContents:@"viewDidLoad"];
}

- (void)viewDidLayoutSubviews
{
    [self displayContents:@"viewDidLayoutSubviews"];
}

- (void)viewDidAppear:(BOOL)animated
{
    [self displayContents:@"viewDidAppear"];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self displayContents:@"viewWillDisappear"];
}

- (IBAction)touchButton:(id)sender
{
    [self displayContents:@"touchButton"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    [self displayContents:@"didReceiveMemoryWarning"];
}

- (void)displayContents:(NSString *)source
{
    NSLog(@"======================================");
    NSLog(@"Displaying from %@", source);
    NSLog(@"Label: %@", self.testLabel);
    NSLog(@"Button: %@", self.testButton);
    NSLog(@"Body: %@", self.testButton);
}

@end
