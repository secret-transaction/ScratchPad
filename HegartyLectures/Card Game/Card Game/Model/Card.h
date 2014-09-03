//
//  Card.h
//  Card Game
//
//  Created by Lyndon Michael Bibera on 9/3/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

//iOS7 module import
@import Foundation;

@interface Card : NSObject

#pragma mark - Properties

//strong - ARC stuff, as long as a strong pointer exists for this object, it wont be deallocated
//nonatomic - dont guarantee thread safety, keep it simple
//@property - free getters/setters for _contents
//name of the getter = contents, and setter = setContents
@property (strong, nonatomic) NSString *contents;

//primitive = hence no strong/weak (doesnt live in the heap)
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

#pragma mark - Methods

//matches a card against another card
//good match will return a higher score
- (int)match:(NSArray *)otherCards;

@end
