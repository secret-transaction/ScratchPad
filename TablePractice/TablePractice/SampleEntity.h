//
//  SampleEntity.h
//  TablePractice
//
//  Created by Lyndon Michael Bibera on 8/16/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface SampleEntity : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * details;
@property (nonatomic, retain) NSDate * dateCreated;
@property (nonatomic, retain) NSNumber * isPrivate;

@end
