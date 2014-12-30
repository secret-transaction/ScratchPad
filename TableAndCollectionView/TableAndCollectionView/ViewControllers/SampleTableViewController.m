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
    return 20;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    XibTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"xibSimpleCell" forIndexPath:indexPath];
    cell.customLabel.text = [NSString stringWithFormat:@"Label: %li", (long)indexPath.row];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"Header %i", section];
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"Footer %i", section];
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    NSMutableArray *arr = [NSMutableArray new];
    for (int i = 0; i < [self numberOfSectionsInTableView:tableView]; i++) {
        arr[i] = [NSString stringWithFormat:@"L%i", i];
    }
    
    return arr;
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
