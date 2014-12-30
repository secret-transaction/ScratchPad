//
//  XibTableViewCell.h
//  TableAndCollectionView
//
//  Created by Lyndon Michael Bibera on 12/30/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

//implementing a cell by using xib
@interface XibTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *customImage;
@property (weak, nonatomic) IBOutlet UILabel *customLabel;

@end
