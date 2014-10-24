//
//  TodayDetailViewController.h
//  inb348
//
//  Created by DONGMIN LEE on 25/10/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TodayWorkoutViewControllerTableViewController.h"

@interface TodayDetailViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *kgTextField;
@property (weak, nonatomic) IBOutlet UITextField *repsTextField;
@property (weak, nonatomic) IBOutlet UITextField *setsTextField;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

- (IBAction)logButton:(id)sender;

@end
