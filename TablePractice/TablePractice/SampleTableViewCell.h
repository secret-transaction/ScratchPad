//
//  SampleTableViewCell.h
//  TablePractice
//
//  Created by Lyndon Michael Bibera on 8/16/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UITextView *details;
@property (weak, nonatomic) IBOutlet UILabel *date;

@end
