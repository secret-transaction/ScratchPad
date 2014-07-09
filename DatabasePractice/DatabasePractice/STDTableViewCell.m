//
//  STDTableViewCell.m
//  DatabasePractice
//
//  Created by Lyndon Michael Bibera on 7/9/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "STDTableViewCell.h"

@implementation STDTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
