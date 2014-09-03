//
//  PlayingCard.h
//  Card Game
//
//  Created by Lyndon Michael Bibera on 9/3/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

#pragma mark - Properties
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

#pragma mark - Class Methods
+ (NSArray *)validSuits;
+ (NSArray *)rankStrings;

@end
