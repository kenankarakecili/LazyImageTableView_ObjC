//
//  ConnectionHandler.m
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 11/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

#import "ConnectionHandler.h"
#import "GetRequest.h"

@implementation ConnectionHandler

+ (void)startConnectionWithRequest:(GetRequest *)request completion:(ResponseData)responseData {
  NSURLSession *session = [NSURLSession sharedSession];
  NSURLSessionDataTask *task = [session dataTaskWithRequest:request
                                           completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                                             dispatch_async(dispatch_get_main_queue(), ^{
                                               if (error || !data) {
                                                 responseData(nil);
                                               } else {
                                                 NSLog(@"Response: %@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
                                                 responseData(data);
                                               }
                                             });
                                           }];
  [task resume];
}

+ (void)requestConnectionWithUrlString:(NSString *)urlString completion:(ResponseData)responseData {
  GetRequest *getRequest = [[GetRequest alloc] initWithUrlString:urlString];
  [self startConnectionWithRequest:getRequest completion:responseData];
}

@end
