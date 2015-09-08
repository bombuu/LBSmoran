//
//  LBSquareViewController.m
//  LBSquareViewController
//
//  Created by bombuu on 15/8/22.
//  Copyright (c) 15/8/22 bombuu. All rights reserved.
//


#import "LBSquareViewController.h"
#import "LBSProfile.h"
#import "UIView+Extension.h"
#import "CustomSearchBar.h"
//#import "CustomPopMenu.h"
#import "LBSTitleDropdownContent.h"


@interface LBSquareViewController ()

@end

@implementation LBSquareViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    //use UIButton build text_With_Icon View
    UIButton *titleButton = [[UIButton alloc] init];
    titleButton.width = 180;
    titleButton.height = 40;
    [titleButton setTitle:@"附近1000米" forState:UIControlStateNormal];
    [titleButton setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
    [titleButton setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateHighlighted];
    [titleButton setImage:[UIImage imageNamed:@"navigationbar_arrow_up"] forState:UIControlStateSelected];
    [titleButton addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    titleButton.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    titleButton.imageEdgeInsets = UIEdgeInsetsMake(0, 148, 0,
                                                   20);

    self.navigationItem.titleView = titleButton;

}

- (void)click:(UIButton *)sender {
//    CustomPopMenu *customPopMenu = [CustomPopMenu menu];
    LBSTitleDropdownContent *lbsTitleDropdownContent = [[LBSTitleDropdownContent alloc] init];
    lbsTitleDropdownContent.view.height = 120;
    lbsTitleDropdownContent.view.width = 180;

//    customPopMenu.contentViewController = lbsTitleDropdownContent;
//    [customPopMenu showFrom:(sender)];
    [sender setSelected:YES];
    //ToDo: You need to set other button performance

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
    cell.textLabel.text = [NSString stringWithFormat:@"line = %i", indexPath.row];
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
