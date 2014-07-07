//
//  STDViewController.m
//  DatabasePractice
//
//  Created by Lyndon Michael Bibera on 7/7/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "STDViewController.h"
#import "STDAppDelegate.h"

@interface STDViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *address;

@end

@implementation STDViewController

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

- (IBAction)save
{
    NSLog(@"Save:%@,%@", self.name.text, self.address.text);
    
    STDAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    NSManagedObject *person = [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:context];
    [person setValue:self.name.text forKey:@"name"];
    [person setValue:self.address.text forKey:@"address"];
    
    NSError *error;
    [context save:&error];
}

@end
