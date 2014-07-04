//
//  SPTActor.m
//  Spot
//
//  Created by Lyndon Michael Bibera on 7/4/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "SPTActor.h"

@implementation SPTActor

-(NSString*) description {
    return [NSString stringWithFormat:@"id=%@, name=%@, desc=%@", self.id, self.name, self.description];
}

@end
