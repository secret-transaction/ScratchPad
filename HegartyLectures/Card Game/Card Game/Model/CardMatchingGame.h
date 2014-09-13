//
//  CardMatchingGame.h
//  Card Game
//
//  Created by Lyndon Michael Bibera on 9/5/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

@import Foundation;
#import "Card.h"
#import "Deck.h"

@interface CardMatchingGame : NSObject

#pragma mark - Properties
@property (nonatomic, readonly) NSInteger score;

#pragma mark - Initializers
- (id)initWithCardCount:(NSInteger)count usingDeck:(Deck *)deck;

#pragma mark - Methods
- (void)chooseCardAtIndex:(NSInteger)index;
- (Card *)cardAtIndex:(NSInteger)index;

@end
