//
//  SPTLoginViewController.m
//  Spot
//
//  Created by Lyndon Michael Bibera on 7/4/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "SPTLoginViewController.h"

@interface SPTLoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation SPTLoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)login {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:self.usernameTextField.text forKey:@"userId"];
    [ud setObject:self.passwordTextField.text forKey:@"accessToken"];
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
