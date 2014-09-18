//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Lyndon Michael Bibera on 9/14/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

#pragma mark - Initializers
- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck matchCardCount:(NSUInteger)cardCount;

#pragma mark - Properties
@property (nonatomic, readonly) NSInteger score;

//number of cards flipped up before doing a match
@property (nonatomic, readonly) NSUInteger matchCardCount;

@property (strong, nonatomic) NSMutableArray *results; //of NSString

#pragma mark - Methods
- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;

@end
