//
//  SampleTableViewController.m
//  TableAndCollectionView
//
//  Created by Lyndon Michael Bibera on 12/30/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "SampleTableViewController.h"

@interface SampleTableViewController ()

@end

@implementation SampleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //registration:
    //1. using storyboard identifier
    
    //2. manual class registration
    [self.tableView registerClass:[SimpleTableViewCell class] forCellReuseIdentifier:@"overrideSimpleCell"];
    
    //3. xib registration
    [self.tableView registerNib:[UINib nibWithNibName:@"XibTableViewCell" bundle:nil] forCellReuseIdentifier:@"xibSimpleCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2000;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    XibTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"xibSimpleCell" forIndexPath:indexPath];
    cell.customLabel.text = [NSString stringWithFormat:@"Label: %li", (long)indexPath.row];
    
    //cell.textLabel.text = [NSString stringWithFormat:@"Test %ld", (long)indexPath.row];
    //rcell.textLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:12.0];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
