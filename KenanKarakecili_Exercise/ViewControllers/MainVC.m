//
//  MainVC.m
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 11/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

#import "MainVC.h"
#import "MYAPI.h"
#import "RowItem.h"
#import "TableCell.h"

@interface MainVC ()
@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) RowItem *rowItem;
@property (strong, nonatomic) NSArray *rows;
@end

@implementation MainVC

- (void)viewDidLoad {
  [super viewDidLoad];
  [self createUI];
  [self fetchList];
}

- (void)createUI {
  self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
  self.tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
  self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
  self.tableView.delegate = self;
  self.tableView.dataSource = self;
  self.tableView.estimatedRowHeight = 200;
  self.tableView.rowHeight = UITableViewAutomaticDimension;
  [self.view addSubview:self.tableView];
  UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(fetchList)];
  self.navigationItem.rightBarButtonItem = rightButton;
}

- (void)fetchList {
  [MYAPI fetchListWithCompletion:^(NSArray *rows, NSString *title) {
    self.rows = rows;
    self.navigationItem.title = title;
    [self.tableView reloadData];
  }];
}

#pragma mark - TableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.rows.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  TableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
  if (!cell) {
    cell = [[TableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellID"];
  }
  self.rowItem = self.rows[indexPath.row];
  cell.cellTitleLabel.text = [NSString stringWithFormat:@"%@", self.rowItem.myTitle];
  cell.cellDescriptionLabel.text = [NSString stringWithFormat:@"%@", self.rowItem.myDescription];
  [cell.cellImageView sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@", self.rowItem.myImageHref]]];
  [cell setNeedsLayout];
  [cell layoutIfNeeded];
  return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return UITableViewAutomaticDimension;
}

@end
