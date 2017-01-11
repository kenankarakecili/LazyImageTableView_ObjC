//
//  MYAPI.h
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 11/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

typedef void(^Response)(NSArray *rows, NSString *title);

@interface MYAPI : NSObject

+ (void)fetchListWithCompletion:(Response)completion;

@end
