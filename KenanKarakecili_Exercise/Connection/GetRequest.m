//
//  GetRequest.m
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 11/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

#import "GetRequest.h"

@implementation GetRequest

- (instancetype)initWithUrlString:(NSString *)urlString {
  self = [super initWithMethodType:@"GET"];
  if (self) {
    self.URL = [NSURL URLWithString:urlString];
  }
  return self;
}

@end
