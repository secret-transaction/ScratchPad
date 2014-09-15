//
//  Card.m
//  Matchismo
//
//  Created by Lyndon Michael Bibera on 9/13/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "Card.h"

//private interface
@interface Card ()

@end

@implementation Card

//this is how we create an instance variable
@synthesize contents = _contents;

- (NSString *)contents
{
    return _contents;
}

- (int)match:(NSArray *)cards
{
    int score = 0;
    
    for (Card *card in cards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
            break;
        }
    }
    
    return score;
}

- (NSString *)doSomethingPrime:(NSString *)param1 :(NSString *)param2 :(int)param3
{
    return [NSString stringWithFormat:@"doSomethingPrime: %@, %@, %i", param1, param2, param3];
}

- (NSString *)doSomething:(NSString *)param1 withName:(NSString *)name andAge:(int)age
{
    NSLog(@"Running Crap: %@, %@, %d", param1, name, age);
    return [NSString stringWithFormat:@"doSomething: %@ %@, %i", param1, name, age];
}

@end
