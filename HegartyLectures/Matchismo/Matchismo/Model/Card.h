//
//  Card.h
//  Matchismo
//
//  Created by Lyndon Michael Bibera on 9/13/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

#pragma mark - Properties
@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

#pragma mark - Methods
- (int)match:(NSArray *)cards;

//methods with multiple params
- (NSString *)doSomethingPrime:(NSString *)param1 :(NSString *)param2 :(int)param3;
- (NSString *)doSomething:(NSString *)param1 withName:(NSString *)name andAge:(int)age;

@end
