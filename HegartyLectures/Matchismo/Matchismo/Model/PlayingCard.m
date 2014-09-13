//
//  PlayingCard.m
//  Matchismo
//
//  Created by Lyndon Michael Bibera on 9/13/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "PlayingCard.h"

@interface PlayingCard ()

+ (NSArray *)rankStrings;

@end

@implementation PlayingCard

- (NSString *)contents
{
    return [NSString stringWithFormat:@"%@%@", [PlayingCard rankStrings][self.rank], self.suit];
}

@synthesize suit = _suit;

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

+ (NSArray *)validSuits
{
    return @[@"♦︎", @"♥︎", @"♣︎", @"♠︎"];
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
    return 15;
}

@end
