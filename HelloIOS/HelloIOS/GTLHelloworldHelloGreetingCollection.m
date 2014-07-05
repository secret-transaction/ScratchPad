/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLHelloworldHelloGreetingCollection.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   helloworld/v1
// Description:
//   This is an API
// Classes:
//   GTLHelloworldHelloGreetingCollection (0 custom class methods, 1 custom properties)

#import "GTLHelloworldHelloGreetingCollection.h"

#import "GTLHelloworldHelloGreeting.h"

// ----------------------------------------------------------------------------
//
//   GTLHelloworldHelloGreetingCollection
//

@implementation GTLHelloworldHelloGreetingCollection
@dynamic items;

+ (NSDictionary *)arrayPropertyToClassMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:[GTLHelloworldHelloGreeting class]
                                forKey:@"items"];
  return map;
}

@end