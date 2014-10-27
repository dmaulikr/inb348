//
//  TodayWorkoutViewControllerTableViewController.h
//  inb348
//
//  Created by hehuan on 8/28/14.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <Social/Social.h>
#import "TodayDetailViewController.h"

@interface TodayWorkoutViewControllerTableViewController : UITableViewController
@property (nonatomic,strong) NSMutableArray *exerciseHistory;
- (IBAction)postTwitter:(id)sender;
- (IBAction)postFacebook:(id)sender;
@end
