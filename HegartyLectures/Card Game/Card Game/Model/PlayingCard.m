//
//  PlayingCard.m
//  Card Game
//
//  Created by Lyndon Michael Bibera on 9/3/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

//overriding getter
- (NSString *)contents
{
    return [NSString stringWithFormat:@"%@ %@", [PlayingCard rankStrings][self.rank], self.suit];
}

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

+ (NSArray *)validSuits
{
    return @[@"♦︎", @"♥︎", @"♣︎", @"♠︎"];
}

+ (NSArray *)rankStrings
{
    //not good for performance, but readability matters most
    //premature optimization sucks
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

@end
