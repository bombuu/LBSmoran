//
//  LBSProfile.m
//  LBSProfile
//
//  Created by bombuu on 15/8/22.
//  Copyright (c) 15/8/22 bombuu. All rights reserved.
//


#import "LBSProfile.h"

@interface LBSProfile ()

@end

@implementation LBSProfile

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"详情"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(detail:)];


}

- (void)detail:(UIButton *)sender {

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];

    // Configure the cell...

    return cell;
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
