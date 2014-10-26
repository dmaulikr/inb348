//
//  FeedbackViewController.h
//  inb348
//
//  Created by Daniel Avelino Cham on 26/10/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h> 

@interface FeedbackViewController : UIViewController <MFMailComposeViewControllerDelegate>
- (IBAction)showEmail:(id)sender;

@end
