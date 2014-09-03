//
//  Deck.h
//  Card Game
//
//  Created by Lyndon Michael Bibera on 9/3/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

@import Foundation;
#import "Card.h"

@interface Deck : NSObject

//adds the card to the deck
- (void)addCard:(Card *)card atTop:(BOOL)atTop;

//looks like method overloading but actually a different method
//this methods look like the add card method from above
- (void)addCard:(Card *)card;

//draws a random card and remove it from the Deck
- (Card *)drawRandomCard;

@end
