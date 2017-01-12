//
//  TableCell.m
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 12/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

#import "TableCell.h"

@implementation TableCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    // CellTitleLabel
    _cellTitleLabel = [[UILabel alloc] init];
    _cellTitleLabel.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1.0];
    _cellTitleLabel.textAlignment = NSTextAlignmentCenter;
    [_cellTitleLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.contentView addSubview:_cellTitleLabel];
    // CellImageView
    _cellImageView = [[UIImageView alloc] init];
    _cellImageView.frame = CGRectMake(8, 46, 50, 50);
    _cellImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:_cellImageView];
    // CellDescriptionLabel
    _cellDescriptionLabel = [[UILabel alloc] init];
    _cellDescriptionLabel.numberOfLines = 0;
    [_cellDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.contentView addSubview:_cellDescriptionLabel];
    self.contentView.backgroundColor = [UIColor yellowColor];
  }
  return self;
}

- (void)layoutSubviews {
  [super layoutSubviews];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellTitleLabel
                                                               attribute:NSLayoutAttributeLeading
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeLeading
                                                              multiplier:1.0
                                                                constant:8.0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellTitleLabel
                                                               attribute:NSLayoutAttributeTrailing
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeTrailing
                                                              multiplier:1.0
                                                                constant:-8.0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellTitleLabel
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeTop
                                                              multiplier:1.0
                                                                constant:8.0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellTitleLabel
                                                               attribute:NSLayoutAttributeHeight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:nil
                                                               attribute:NSLayoutAttributeHeight
                                                              multiplier:1.0
                                                                constant:30.0]];
  
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellImageView
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeTop
                                                              multiplier:1.0
                                                                constant:46.0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellImageView
                                                               attribute:NSLayoutAttributeLeading
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeLeading
                                                              multiplier:1.0
                                                                constant:8.0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellImageView
                                                               attribute:NSLayoutAttributeTrailing
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeTrailing
                                                              multiplier:1.0
                                                                constant:-8.0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellImageView
                                                               attribute:NSLayoutAttributeHeight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:nil
                                                               attribute:NSLayoutAttributeHeight
                                                              multiplier:1.0
                                                                constant:50.0]];
  
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellDescriptionLabel
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeTop
                                                              multiplier:1.0
                                                                constant:46.0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellDescriptionLabel
                                                               attribute:NSLayoutAttributeLeading
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeLeading
                                                              multiplier:1.0
                                                                constant:66.0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellDescriptionLabel
                                                               attribute:NSLayoutAttributeTrailing
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeTrailing
                                                              multiplier:1.0
                                                                constant:-8.0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.cellDescriptionLabel
                                                               attribute:NSLayoutAttributeBottom
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeBottom
                                                              multiplier:1.0
                                                                constant:-8.0]];
}

@end
