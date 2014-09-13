//
//  MatchismoTests.m
//  MatchismoTests
//
//  Created by Lyndon Michael Bibera on 9/13/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Card.h"

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
    Card *card = [Card new];
    card.contents = @"Lollll";
    
    NSLog(@"Contents: %@", card.contents);
    
    NSLog(@"%@", [card doSomethingPrime:@"p1" :@"p2" :1]);
    
    NSLog(@"%@", [card doSomething:@"p1" withName:@"myName" andAge:111]);
    
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
