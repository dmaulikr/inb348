//
//  MainViewController.h
//  inb348
//
//  Created by Clement Chwin Chiat Ng on 29/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageContentViewController.h"

@interface MainViewController : UIViewController <UIPageViewControllerDataSource>
- (IBAction)startWalkthrough:(id)sender;
@property (strong,nonatomic) UIPageViewController *pageViewController;
@property (strong,nonatomic) NSArray *pageTitles;
@property (strong,nonatomic) NSArray *pageImages;
@end
