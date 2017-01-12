//
//  MYAPI.m
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 11/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

#import "MYAPI.h"
#import "ConnectionHandler.h"
#import "CJSONDeserializer.h"
#import "RowItem.h"

@implementation MYAPI

+ (void)fetchListWithCompletion:(Response)completion {
  [ConnectionHandler requestConnectionWithUrlString:kURLBase completion:^(NSData *responseData) {
    NSString *jsonStr = [[NSString alloc] initWithData:responseData encoding:NSASCIIStringEncoding];
    NSData *data = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
    id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//    id json = [[CJSONDeserializer deserializer] deserialize:responseData error:nil];
    NSArray *rows = [RowItem getModelArrayWithReturnObject:json];
    NSString *title = json[@"title"];
    completion(rows, title);
  }];
}

@end
