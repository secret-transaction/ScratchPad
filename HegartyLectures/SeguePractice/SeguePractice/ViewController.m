//
//  ViewController.m
//  SeguePractice
//
//  Created by Lyndon Michael Bibera on 9/20/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ViewController.h"
#import "IndieViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//note: only gets triggered when segue is done in UI (manual segue skips this part)
- (IBAction)manualSegueTriggered:(UIButton *)sender
{
    [self performSegueWithIdentifier:@"manualSegue" sender:self];
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"Should we allow this segue? %@", identifier);
    return YES;
}

//create a VC without using segue
- (IBAction)startIndie
{
    NSString *restorationId = @"indieViewController";
    IndieViewController *ivc = [self.storyboard instantiateViewControllerWithIdentifier:restorationId];
    [self.navigationController pushViewController:ivc animated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"Prepare for Segue: %@ [%@ -> %@]", segue.identifier, [segue.sourceViewController class], [segue.destinationViewController class]);
}

@end
