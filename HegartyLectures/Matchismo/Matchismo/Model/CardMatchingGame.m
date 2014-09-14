//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by Lyndon Michael Bibera on 9/14/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame ()

@property (nonatomic, readwrite) NSInteger score;
@property (strong, nonatomic) NSMutableArray *cards;
@property (nonatomic, readwrite) NSUInteger matchCardCount; //minimum cards to match

@end

@implementation CardMatchingGame

static const int MISMATCH_PENALTY = 2;
static const int MATCH_BONUS = 4;
static const int COST_TO_CHOOSE = 1;

- (instancetype)init
{
    return nil;
}

- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck matchCardCount:(NSUInteger)cardCount
{
    self = [super init];
    
    if (self) {
        self.matchCardCount = cardCount;
        
        for (int i= 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            
            if (card) {
                [self.cards addObject:card];
            } else {
                self = nil;
                break;
            }
        }
    }
    
    return self;
}

- (void)chooseCardAtIndex:(NSUInteger)index
{
    Card *card = [self cardAtIndex:index];
    
    if (!card.isMatched) {
        if (card.isChosen) {
            card.chosen = NO;
        } else {
            NSMutableArray *chosenCards = [[NSMutableArray alloc] init];
            
            for (Card *otherCard in self.cards) {
                //match against other cards
                if (otherCard.isChosen && !otherCard.isMatched) {
                    [chosenCards addObject:otherCard];
                }
            }
            
            if ([chosenCards count] == self.matchCardCount) {
                NSLog(@"We have enough cards to match. Start Matching.");
                int score = [card match:chosenCards];
                NSLog(@"Score: %d", score);
                
                if (score) {
                    for (Card *otherCard in chosenCards) {
                        otherCard.matched = YES;
                    }
                    card.matched = YES;
                    card.chosen = YES;
                    
                    self.score += score * MATCH_BONUS;
                } else {
                    for (Card *otherCard in chosenCards) {
                        otherCard.chosen = NO;
                    }
                    card.chosen = NO;
                    
                    self.score -= MISMATCH_PENALTY;
                }

            } else {
                NSLog(@"Not Enough Cards. We need %d", self.matchCardCount);
                card.chosen = YES;
            }
        }
        self.score -= COST_TO_CHOOSE;
    }
}

- (Card *)cardAtIndex:(NSUInteger)index
{
    return index < [self.cards count] ? self.cards[index] : nil;
}

- (NSMutableArray *)cards
{
    if (!_cards) {
        _cards = [NSMutableArray new];
    }
    
    return _cards;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"CardMatchingGame[%d]:%d", self.matchCardCount, self.score];
}

@end
