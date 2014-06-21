//
//  CalculatorOld.h
//  SwiftCocoa
//
//  Created by Lyndon Michael Bibera on 6/21/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface CalculatorOld : NSObject

#pragma mark - Properties
@property (strong, nonatomic) NSString *prefix;
@property (strong, nonatomic) NSString *postfix;

#pragma mark - Initializers (Convenience)
- (id)initWithPrefix:(NSString *)prefix postFix:(NSString *)postfix;

#pragma mark - Initializer (Designated)
- (id)init;
- (id)initWithPrefix:(NSString *)prefix;
- (id)initWithPostfix:(NSString *)postfix;

#pragma mark - Methods
- (NSString *)combine;
- (NSString *)combineWithName:(NSString *)name;
- (NSString *)combineWithName:(NSString *)name lastName:(NSString *)lastName;

@end
