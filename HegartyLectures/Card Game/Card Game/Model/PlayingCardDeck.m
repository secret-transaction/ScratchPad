//
//  PlayingCardDeck.m
//  Card Game
//
//  Created by Lyndon Michael Bibera on 9/3/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

//instancetype is new in iOS7
- (instancetype)init
{
    self = [super init];
    
    //in case the superclass init failed to initialize
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *playingCard = [PlayingCard new];
                playingCard.suit = suit;
                playingCard.rank = rank;
                
                [self addCard:playingCard];
            }
        }
    }
    
    return self;
}

@end
