//
//  PlayingCard.h
//  Matchismo
//
//  Created by Lyndon Michael Bibera on 9/13/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

#pragma mark - Properties
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

#pragma mark - Class Methods
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
