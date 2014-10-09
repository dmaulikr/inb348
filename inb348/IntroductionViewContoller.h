//
//  IntroductionViewContoller.h
//  inb348
//
//  Created by DONGMIN LEE on 27/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Exercises.h"



@interface IntroductionViewContoller : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UIImageView *coverView;
@property (weak, nonatomic) IBOutlet UITextView *instructionTextView;

@property Exercises *selectedExercise;
@property NSArray *array;
@property NSString *string;
@end
