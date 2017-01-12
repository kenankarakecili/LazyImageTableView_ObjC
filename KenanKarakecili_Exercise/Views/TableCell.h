//
//  TableCell.h
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 12/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableCell : UITableViewCell

@property (strong, nonatomic) UILabel * _Nullable cellTitleLabel;
@property (strong, nonatomic) UILabel * _Nullable cellDescriptionLabel;
@property (strong, nonatomic) UIImageView * _Nullable cellImageView;

@end
