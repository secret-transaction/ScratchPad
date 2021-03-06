/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLQueryHelloworld.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   helloworld/v1
// Description:
//   This is an API
// Classes:
//   GTLQueryHelloworld (4 custom class methods, 3 custom properties)

#import "GTLQueryHelloworld.h"

#import "GTLHelloworldHelloGreeting.h"
#import "GTLHelloworldHelloGreetingCollection.h"

@implementation GTLQueryHelloworld

@dynamic fields, identifier, times;

+ (NSDictionary *)parameterNameMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:@"id"
                                forKey:@"identifier"];
  return map;
}

#pragma mark -
#pragma mark "greetings" methods
// These create a GTLQueryHelloworld object.

+ (id)queryForGreetingsAuthed {
  NSString *methodName = @"helloworld.greetings.authed";
  GTLQueryHelloworld *query = [self queryWithMethodName:methodName];
  query.expectedObjectClass = [GTLHelloworldHelloGreeting class];
  return query;
}

+ (id)queryForGreetingsGetGreetingWithIdentifier:(NSInteger)identifier {
  NSString *methodName = @"helloworld.greetings.getGreeting";
  GTLQueryHelloworld *query = [self queryWithMethodName:methodName];
  query.identifier = identifier;
  query.expectedObjectClass = [GTLHelloworldHelloGreeting class];
  return query;
}

+ (id)queryForGreetingsListGreeting {
  NSString *methodName = @"helloworld.greetings.listGreeting";
  GTLQueryHelloworld *query = [self queryWithMethodName:methodName];
  query.expectedObjectClass = [GTLHelloworldHelloGreetingCollection class];
  return query;
}

+ (id)queryForGreetingsMultiplyWithObject:(GTLHelloworldHelloGreeting *)object
                                    times:(NSInteger)times {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"helloworld.greetings.multiply";
  GTLQueryHelloworld *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.times = times;
  query.expectedObjectClass = [GTLHelloworldHelloGreeting class];
  return query;
}

@end
