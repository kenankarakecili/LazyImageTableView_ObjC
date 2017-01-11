//
//  BaseRequest.m
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 11/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

#import "BaseRequest.h"

@implementation BaseRequest

- (instancetype)initWithMethodType:(NSString *)methodType {
  self = [super init];
  if (self) {
    [self addValue:@"text/plain; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    self.HTTPMethod = methodType;
  }
  return self;
}

- (NSData *)dataFromObject:(id)object {
  return [NSJSONSerialization dataWithJSONObject:object
                                         options:NSJSONWritingPrettyPrinted
                                           error:nil];
}

@end
