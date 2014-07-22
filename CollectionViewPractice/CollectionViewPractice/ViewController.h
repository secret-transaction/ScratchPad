//
//  ViewController.h
//  CollectionViewPractice
//
//  Created by Lyndon Michael Bibera on 7/21/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDataSource>

@property (strong, nonatomic) NSArray *images;

@end
