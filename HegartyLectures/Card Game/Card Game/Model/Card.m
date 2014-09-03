//
//  Card.m
//  Card Game
//
//  Created by Lyndon Michael Bibera on 9/3/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "Card.h"

//private properties here (ussually)
@interface Card()

@end

@implementation Card

@synthesize contents = _contents;

//this is how the free getter looks like
- (NSString *)contents
{
    return _contents;
}

//this is how the free setter looks like
- (void)setContents:(NSString *)contents
{
    _contents = contents;
}

- (int)match:(NSArray *)otherCards
{
    //no need to initialize with zero
    //but Paul Hegarty believes that this
    //is a cool thing to do
    int score = 0;
    
    for (Card *card in otherCards) {
        //simple scoring using content matching
        //1 point for a match
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
            break;
        }
    }
    
    return score;
}

@end
