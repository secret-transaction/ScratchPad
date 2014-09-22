//
//  ViewController.m
//  ViewPractice
//
//  Created by Lyndon Michael Bibera on 9/21/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ViewController.h"
#import "BezierPathTriangle.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *red;
@property (weak, nonatomic) IBOutlet UIView *white;
@property (weak, nonatomic) IBOutlet UIView *green;
@property CGFloat origin;

@end

@implementation ViewController

- (IBAction)addView
{
    //CGPoint origin = CGPointMake(5.0, 5.0);
    //CGSize size = CGSizeMake(50.0, 50.0);
    
    CGRect rect = CGRectMake(self.origin + 5.0, self.origin + 5.0, 50.0, 50.0);
    
    self.origin += 50.0;
    
    UIView *view = [[BezierPathTriangle alloc] initWithFrame:rect];
    view.backgroundColor = [UIColor purpleColor];
    
    [self.red addSubview:view];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Red:%@", self.red);
    
    //one view has N subviews
    NSLog(@"Red Subviews: %@", self.red.subviews);
    
    //a view has 1 view
    NSLog(@"Red is Superview of White? %d", self.white.superview == self.red);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
