//
//  TodayDetailViewController.m
//  inb348
//
//  Created by DONGMIN LEE on 25/10/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "TodayDetailViewController.h"
#import "AppDelegate.h"
#import "TodayDetail.h"
@interface TodayDetailViewController ()




@end

@implementation TodayDetailViewController
@synthesize nameLabel;
@synthesize kgTextField;
@synthesize repsTextField;
@synthesize setsTextField;
@synthesize managedObjectContext;


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
    //nameLabel.setText :[self.exerciseHistory objectAtIndex:indexPath.row]];
    //1
    AppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
    //2
    self.managedObjectContext = appDelegate.managedObjectContext;
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






- (IBAction)logButton:(id)sender {
    //  1
    TodayDetail * newEntry = [NSEntityDescription insertNewObjectForEntityForName:@"TodayDetail"
                                                      inManagedObjectContext:self.managedObjectContext];
    //  2
    newEntry.name = self.nameLabel.text;
    newEntry.kg = self.kgTextField.text;
    newEntry.reps = self.repsTextField.text;
    newEntry.sets = self.setsTextField.text;
    //  3
    
    
    
    NSError *error;
    if (![self.managedObjectContext save:&error]) {
        NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    }
    //  4
    self.kgTextField.text = @"";
    self.repsTextField.text = @"";
    self.setsTextField.text = @"";
    
}
@end
