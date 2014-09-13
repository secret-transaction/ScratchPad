//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Lyndon Michael Bibera on 9/13/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

//instancetype - new in iOS7
- (instancetype)init
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (int rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [PlayingCard new];
                card.suit = suit;
                card.rank = rank;
                
                [self addCard:card];
            }
        }
        
    }
    
    return self;
}

@end
