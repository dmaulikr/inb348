//
//  ViewController.h
//  inb348
//
//  Created by DONGMIN LEE on 27/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Exercises.h"
#import "IntroductionViewContoller.h"
#import "ExerciseTableViewCell.h"
#import <FacebookSDK/FacebookSDK.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UITableViewController<UIAlertViewDelegate, FBLoginViewDelegate, MFMailComposeViewControllerDelegate>
@property (weak, nonatomic) IBOutlet FBProfilePictureView *profilePicture;
@property NSMutableArray *exercise;
@property Exercises *selectedExercise;
//@property NSArray *array;
@property NSString *string;
//@property NSArray *selectedWorkout;
- (IBAction)showEmail:(id)sender;
@end
