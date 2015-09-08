//
//  LBSTitleDropdownContent.m
//  LBSTitleDropdownContent
//
//  Created by bombuu on 15/8/25.
//  Copyright (c) 15/8/25 bombuu. All rights reserved.
//


#import "LBSTitleDropdownContent.h"

@interface LBSTitleDropdownContent ()

@end

@implementation LBSTitleDropdownContent

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
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identify = @"titlecell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:identify];

    }
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"附近1000米";
            break;
        case 1:
            cell.textLabel.text = @"附近2000米";
            break;
        case 2:
            cell.textLabel.text = @"附近3000米";
            break;
        default:
            NSLog(@"unexcepted title add in");
            break;
    }
    // Configure the cell...

    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
