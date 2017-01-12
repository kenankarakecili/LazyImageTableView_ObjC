//
//  ListItem.m
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 11/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

#import "RowItem.h"

@implementation RowItem

- (instancetype)initWithTitle:(NSString *)myTitle
                  description:(NSString *)myDescription
                    imageHref:(NSString *)myImageHref {
  self = [super init];
  if (self) {
    _myTitle = myTitle;
    _myDescription = myDescription;
    _myImageHref = myImageHref;
  }
  return self;
}

+ (NSArray *)getModelArrayWithReturnObject:(NSDictionary *)returnObject {
  NSArray *rows = returnObject[@"rows"];
  NSMutableArray *tempArray = [[NSMutableArray alloc] init];
  for (NSDictionary *row in rows) {
    RowItem *rowItem = [[RowItem alloc] initWithTitle:[self unwrapStr:row[@"title"]]
                                          description:[self unwrapStr:row[@"description"]]
                                            imageHref:[self unwrapStr:row[@"imageHref"]]];
    [tempArray addObject:rowItem];
  }
  return [tempArray copy];
}

+ (NSString *)unwrapStr:(NSString *)str {
  if (str && ![str isKindOfClass:[NSNull class]]) {
    return str;
  }
  return @"";
}

@end
