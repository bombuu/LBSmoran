//
//  LBSquareViewController.m
//  LBSquareViewController
//
//  Created by bombuu on 15/8/22.
//  Copyright (c) 15/8/22 bombuu. All rights reserved.
//


#import "LBSquareViewController.h"
#import "LBSProfile.h"

@interface LBSquareViewController ()

@end

@implementation LBSquareViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *testIdentifyer = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:testIdentifyer];
    if (!cell) {
        cell = [[UITableViewCell alloc]
                                 initWithStyle:UITableViewCellStyleSubtitle
                               reuseIdentifier:testIdentifyer];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"line = %d", indexPath.row];
    // Configure the cell...

    return cell;
}



#pragma mark - 代理方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    LBSProfile *lbsProfile = [[LBSProfile alloc] init];
    lbsProfile.title = @"helloworld";
    [self.navigationController pushViewController:lbsProfile animated:YES];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
