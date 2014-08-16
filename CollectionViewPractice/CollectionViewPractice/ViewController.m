//
//  ViewController.m
//  CollectionViewPractice
//
//  Created by Lyndon Michael Bibera on 7/21/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//
//  special tnx for this dude's mini-guide:
//  http://www.techotopia.com/index.php/An_iOS_7_Storyboard-based_Collection_View_Tutorial

#import "ViewController.h"
#import "MyCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.images = @[@"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg",
                    @"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg",
                    @"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg",
                    @"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg",
                    @"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg",
                    @"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg",
                    @"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg",
                    @"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg",
                    @"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg",
                    @"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg",
                    @"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg",
                    @"http://www.how-to-draw-funny-cartoons.com/image-files/scientist-cartoon-008.jpg",
                    @"http://www.picturesnew.com/media/images/cars_farrari.jpg",
                    @"http://www.cttechact.com/news/images/Summer2012/Summer2012_07.jpg"];
}

#pragma mark - Collection View Data Source And Delegates

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return self.images.count == 0 ? 0 : 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.images.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MyCell *myCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"imageCell" forIndexPath:indexPath];
    myCell.imageUrl = self.images[[indexPath row]];
    
    return myCell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize size = CGSizeMake(100, 100);
    
    return size;
}


@end
