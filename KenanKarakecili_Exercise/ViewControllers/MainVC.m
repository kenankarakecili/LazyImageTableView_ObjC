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
  self.tableView.delegate = self;
  self.tableView.dataSource = self;
  [self.view addSubview:self.tableView];
}

- (void)fetchList {
  [MYAPI fetchListWithCompletion:^(NSArray *rows, NSString *title) {
    self.rows = rows;
    [self.tableView reloadData];
  }];
}

#pragma mark - TableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.rows.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
  if (!cell) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellID"];
  }
  self.rowItem = self.rows[indexPath.row];
  cell.textLabel.text = [NSString stringWithFormat:@"%@", self.rowItem.myTitle];
  return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return UITableViewAutomaticDimension;
}

@end
