//
//  SampleTableViewController.m
//  TablePractice
//
//  Created by Lyndon Michael Bibera on 8/16/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "SampleTableViewController.h"
#import "SampleTableViewCell.h"
#import "SampleEntity.h"
#import "DataManager.h"

@interface SampleTableViewController ()

@property BOOL hasNewData;

@end

@implementation SampleTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.context =  [[DataManager sharedInstance] managedObjectContext];
}

- (IBAction)add:(id)sender
{
    NSLog(@"Adding Item");
    SampleEntity *en = [NSEntityDescription insertNewObjectForEntityForName:@"SampleEntity" inManagedObjectContext:self.context];
    
    en.title = @"Test";
    en.details = @"Details...";
    en.isPrivate = NO;
    en.dateCreated = [NSDate date];
    
    [[DataManager sharedInstance] saveContext];
    self.hasNewData = YES;
    
    [self.tableView reloadData];
    
    NSIndexPath *indexPath = [self.fetchedResultsController indexPathForObject:en];
    
    //scrolling bwahahaha
    [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[self.fetchedResultsController sections] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    id <NSFetchedResultsSectionInfo> sectionInfo = [self.fetchedResultsController sections][section];
    return [sectionInfo numberOfObjects];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SampleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sampleCell" forIndexPath:indexPath];
    
    SampleEntity *en = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    cell.cellTitle.text = en.title;
    cell.details.text = en.details;
    
    //TODO: share object instance
    NSDateFormatter *objDateFormatter = [[NSDateFormatter alloc] init];
    [objDateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    cell.date.text = [objDateFormatter stringFromDate:en.dateCreated];
    
    return cell;
}

- (NSFetchedResultsController *)fetchedResultsController
{
    if (_fetchedResultsController != nil && !self.hasNewData) {
        self.hasNewData = NO;
        return _fetchedResultsController;
    }
    
    NSFetchRequest *request = [NSFetchRequest new];
    [request setEntity:[NSEntityDescription entityForName:@"SampleEntity" inManagedObjectContext:self.context]];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"dateCreated" ascending:YES];
    request.sortDescriptors = @[sortDescriptor];
    
    NSFetchedResultsController *fetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:request managedObjectContext:self.context sectionNameKeyPath:@"dateCreated" cacheName:@"mainCache"];
    
    NSError *error = nil;
    if (![fetchedResultsController performFetch:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    } else {
        self.fetchedResultsController = fetchedResultsController;
    }
    
    return _fetchedResultsController;
}

@end
