//
//  MatchismoTests.m
//  MatchismoTests
//
//  Created by Lyndon Michael Bibera on 9/13/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "PlayingCard.h"

@interface MatchismoTests : XCTestCase

@end

@implementation MatchismoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    PlayingCard *card = [PlayingCard new];
    
    NSLog(@"isKindOfClass: %i", [card isKindOfClass:[Card class]]);
    NSLog(@"isMemberOfClass: %i", [card isMemberOfClass:[Card class]]);
    
    SEL matchSelector = @selector(match:);
    NSLog(@"respondsToSelector: %i", [card respondsToSelector:matchSelector]);
    
    //- (NSString *)doSomethingPrime:(NSString *)param1 :(NSString *)param2 :(int)param3;
    SEL doSomethingPrimeSelector = @selector(doSomething:withName:andAge:);
    NSArray *param = [NSArray arrayWithObjects:@"lol1", @"lol2", @233, nil];
    [card performSelector:doSomethingPrimeSelector withObject:param];
    NSLog(@"Done Performing Selector");
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
