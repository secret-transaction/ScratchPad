//
//  SPTActor.h
//  Spot
//
//  Created by Lyndon Michael Bibera on 7/4/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SPTActor : NSObject

@property (strong, nonatomic) NSString *id;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *facebookId;
@property (strong, nonatomic) NSString *followedStatus;
@property (nonatomic) NSInteger followerCount;
@property (nonatomic) NSInteger followingCount;

@end
