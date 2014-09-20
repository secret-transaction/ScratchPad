//
//  ManualViewController.m
//  SeguePractice
//
//  Created by Lyndon Michael Bibera on 9/20/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ManualViewController.h"

@interface ManualViewController ()

@end

@implementation ManualViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"Should we allow this segue? %@", identifier);
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"Manual Prepare for Segue: %@ [%@ -> %@]", segue.identifier, [segue.sourceViewController class], [segue.destinationViewController class]);
}

- (IBAction)touchedNextPageButton
{
    [self performSegueWithIdentifier:@"manualSegue2" sender:self];
}

@end
