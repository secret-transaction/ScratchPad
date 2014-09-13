//
//  Deck.m
//  Matchismo
//
//  Created by Lyndon Michael Bibera on 9/13/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "Deck.h"

@interface Deck ()

//ordinary arrays are IMMUTABLE
@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count] > 0) {
        int index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }

    return randomCard;
}

- (NSMutableArray *)cards
{
    //overriding generated getter:
    //commonly used for lazy instantiation
    if (!_cards) {
        _cards = [NSMutableArray new];
    }
    
    return _cards;
}

@end
