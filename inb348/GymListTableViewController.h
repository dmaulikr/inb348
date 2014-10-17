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
@property (strong,nonatomic) NSMutableArray *gymList;
@property (strong,nonatomic) NSMutableArray *myArray;
@property (strong,nonatomic) NSMutableArray *gymDistance;
- (IBAction)btnTest:(id)sender;
@end
