//
//  DemoTableViewController.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/23.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "DemoTableViewController.h"
#import "DemoFactory.h"
#import "DemoModel.h"

@interface DemoTableViewController ()
@end

@implementation DemoTableViewController

- (instancetype)initWithDemo:(DemoModel *)demo {
	if (self = [super init]) {
		self.mDemoModel = demo;
	}
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[self initUI];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)initUI {
	[self initNavigator];
}

- (void)initNavigator {
	/* init navigation bar */
//    // auto adjust scrollView
//    self.automaticallyAdjustsScrollViewInsets = YES;
//    self.edgesForExtendedLayout = UIRectEdgeNone;
	// set navigationBar's color
	//    self.navigationController.navigationBar.barTintColor = [Utility colorWithHexString:@"#ffea00"];
	// set title
	[self.navigationItem setTitle:@"iOS demo 大全"];
	UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
	[self.navigationItem setBackBarButtonItem:backButton];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.mDemoModel.mDemoArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *ID = @"cell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
	}
	
	DemoModel *demoItem = self.mDemoModel.mDemoArray[indexPath.row];
	
	if (indexPath.row == 0 && self.mDemoModel.mDemoType != DemoTypeDemoRoot) {
		cell.textLabel.text = @"返回上一级..";
	}
	else {
		cell.textLabel.text = demoItem.mDemoName;
	}
	
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	DemoModel *demoItem = self.mDemoModel.mDemoArray[indexPath.row];
	
	switch (demoItem.mDemoType) {
		case DemoTypeDemo:
			[self push:demoItem.mDemoViewController animated:YES];
			break;
			
		case DemoTypeDemoGroup:
		case DemoTypeDemoRoot:
		default:
			self.mDemoModel = demoItem;
			[self.tableView reloadData];
			break;
	}
}

#pragma mark - pop and push viewcontroller

- (void)push:(UIViewController *)viewController animated:(BOOL)animated {
	[self.navigationController pushViewController:viewController animated:YES];
}

- (void)pop {
	[self.navigationController popViewControllerAnimated:YES];
}

@end
