//
//  File.m
//  SwiftCocoa
//
//  Created by Lyndon Michael Bibera on 6/21/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "CalculatorOld.h"

@implementation CalculatorOld

#pragma mark - Initializer (Designated)

- (id)initWithPrefix:(NSString *)prefix postFix:(NSString *)postfix {
    if (self = [super init]) {
        self.prefix = prefix;
        self.postfix = postfix;
        return self;
    } else {
        return nil;
    }
}

#pragma mark - Initializers (Convenience)

- (id)init {
    return [self initWithPrefix:@"" postFix:@""];
}

- (id)initWithPrefix:(NSString *)prefix {
    return [self initWithPrefix:prefix postFix:@""];
}

- (id)initWithPostfix:(NSString *)postfix {
    return [self initWithPrefix:@"" postFix:postfix];
}

#pragma mark - Methods

- (NSString *)combine {
    return [NSString stringWithFormat:@"%@ Nobody %@", self.prefix, self.postfix];
}

- (NSString *)combineWithName:(NSString *)name {
    return [NSString stringWithFormat:@"%@ %@, %@",self.prefix, name, self.postfix];
}

- (NSString *)combineWithName:(NSString *)name lastName:(NSString *)lastName {
    return [NSString stringWithFormat:@"%@ %@ %@, %@",self.prefix, name, lastName, self.postfix];
}

@end

