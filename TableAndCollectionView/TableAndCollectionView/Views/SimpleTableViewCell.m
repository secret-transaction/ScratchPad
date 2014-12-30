//
//  SimpleTableViewCell.m
//  TableAndCollectionView
//
//  Created by Lyndon Michael Bibera on 12/30/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "SimpleTableViewCell.h"

@implementation SimpleTableViewCell

- (void)awakeFromNib {
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void) layoutSubviews {
    [super layoutSubviews];
    CGRect cvb = self.contentView.bounds;
    CGRect imf = self.imageView.frame;
    imf.origin.x = cvb.size.width - imf.size.width - 15;
    self.imageView.frame = imf;
    CGRect tf = self.textLabel.frame;
    tf.origin.x = 15;
    self.textLabel.frame = tf;
}

@end
