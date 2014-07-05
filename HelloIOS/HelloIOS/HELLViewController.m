//
//  HELLViewController.m
//  HelloIOS
//
//  Created by Lyndon Michael Bibera on 7/5/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "HELLViewController.h"
#import "GTLHelloworld.h"

@interface HELLViewController ()

@property (strong, nonatomic) GTLServiceHelloworld *service;

@end

@implementation HELLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (!self.service) {
        self.service = [GTLServiceHelloworld new];
        self.service.retryEnabled = YES;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)pressHelow
{
    
    GTLQueryHelloworld *query = [GTLQueryHelloworld queryForGreetingsListGreeting];
    
    void (^handler)(GTLServiceTicket *ticket, id object, NSError *error) = ^(GTLServiceTicket *ticket, id object, NSError *error) {
        NSLog(@"ticket=%@", ticket);
    };
    
    [self.service executeQuery:query completionHandler:handler];
}

@end
