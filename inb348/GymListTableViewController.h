//
//  GymListTableViewController.h
//  inb348
//
//  Created by Clement Ng Chwin Chiat Ng on 29/09/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GymListTableViewCell.h"

@interface GymListTableViewController : UITableViewController
@property (strong,nonatomic) NSArray *gymList;
@end