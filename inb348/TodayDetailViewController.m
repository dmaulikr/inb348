//
//  TodayDetailViewController.m
//  inb348
//
//  Created by DONGMIN LEE on 25/10/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "TodayDetailViewController.h"

@interface TodayDetailViewController ()

@end

@implementation TodayDetailViewController
@synthesize kgTextField;
@synthesize repsTextField;
@synthesize setsTextField;
@synthesize logButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.kgTextField.delegate = self;
    self.repsTextField.delegate = self;
    self.setsTextField.delegate = self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.kgTextField resignFirstResponder];
    [self.repsTextField resignFirstResponder];
    [self.setsTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
