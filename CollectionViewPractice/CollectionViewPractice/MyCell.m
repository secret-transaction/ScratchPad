//
//  MyCell.m
//  CollectionViewPractice
//
//  Created by Lyndon Michael Bibera on 7/21/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "MyCell.h"
#import "STRAsyncImageDownloader.h"

@interface MyCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation MyCell

-(void) setImageUrl:(NSString *)imageUrl
{
    _imageUrl = imageUrl;
    [STRAsyncImageDownloader loadFromURL:imageUrl toImageView:self.imageView];
}

@end
