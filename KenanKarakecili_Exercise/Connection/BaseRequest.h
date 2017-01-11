//
//  BaseRequest.h
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 11/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

@interface BaseRequest : NSMutableURLRequest

- (instancetype)initWithMethodType:(NSString *)methodType;

- (NSData *)dataFromObject:(id)object;

@end
