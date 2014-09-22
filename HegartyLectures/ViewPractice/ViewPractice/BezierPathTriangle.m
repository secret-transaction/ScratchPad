//
//  BezierPathTriangle.m
//  ViewPractice
//
//  Created by Lyndon Michael Bibera on 9/22/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "BezierPathTriangle.h"

@implementation BezierPathTriangle

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    [path moveToPoint:CGPointMake(0.0, 0.0)];
    [path addLineToPoint:CGPointMake(25, 25)];
    [path addLineToPoint:CGPointMake(0, 25)];
    [path closePath];
    
    [[UIColor greenColor] setFill];
    [[UIColor redColor] setStroke];
    
    [path fill];
    [path stroke];
}

@end
