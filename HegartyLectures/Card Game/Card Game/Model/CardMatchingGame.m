//
//  CardMatchingGame.m
//  Card Game
//
//  Created by Lyndon Michael Bibera on 9/5/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "CardMatchingGame.h"
#import "Deck.h"

@interface CardMatchingGame ()

//read-write is for redeclaring the readonly score
@property (nonatomic, readwrite) NSInteger score;
@property (strong, nonatomic) NSMutableArray *cards; //of Cards

@end

@implementation CardMatchingGame

- (instancetype)initWithCardCount:(NSInteger)count usingDeck:(Deck *)deck
{
    self = [super init];
    
    if (self) {
        for (int i=0; i<=count; i++) {
            self.cards[i] = [deck drawRandomCard];
        }
    }
    
    return self;
}

- (void)chooseCardAtIndex:(NSInteger)index
{
    Card *chosenCard = [self cardAtIndex:index];
    
    if (!chosenCard.isMatched) {
        
        if (chosenCard.isChosen) {
            chosenCard.chosen = NO;
        } else {
            //match it against another card
            chosenCard.chosen = YES;
            for (Card *otherCard in self.cards) {
                if (otherCard.isChosen && otherCard!=chosenCard) {
                    int tempScore = [chosenCard match:@[otherCard]];
                    if (tempScore) {
                        otherCard.matched = YES;
                        chosenCard.matched = YES;
                        self.score += 4 * tempScore;
                    } else {
                        otherCard.chosen = NO;
                        chosenCard.chosen = NO;
                        self.score -= 2;
                    }
                    break;
                }
            }
            
            self.score -= 1;
        }
    }
}

- (Card *)cardAtIndex:(NSInteger)index
{
    return (index < self.cards.count) ? self.cards[index] : nil;
}

- (NSMutableArray *)cards
{
    if (!_cards) {
        _cards = [NSMutableArray new];
    }
    return _cards;
}

@end
