//
//  ConnectionHandler.h
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 11/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

typedef void(^ResponseData)(NSData *responseData);

@interface ConnectionHandler : NSObject

+ (void)requestConnectionWithUrlString:(NSString *)urlString
                            completion:(ResponseData)responseData;

@end
