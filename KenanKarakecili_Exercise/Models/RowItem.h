//
//  ListItem.h
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 11/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

@interface RowItem : NSObject

@property (copy, nonatomic) NSString *myTitle;
@property (copy, nonatomic) NSString *myDescription;
@property (copy, nonatomic) NSString *myImageHref;

- (instancetype)initWithTitle:(NSString *)myTitle
                  description:(NSString *)myDescription
                    imageHref:(NSString *)myImageHref;

+ (NSArray *)getModelArrayWithReturnObject:(NSDictionary *)returnObject;

@end
