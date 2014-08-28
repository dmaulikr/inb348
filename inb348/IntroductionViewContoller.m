//
//  IntroductionViewContoller.m
//  inb348
//
//  Created by DONGMIN LEE on 27/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "IntroductionViewContoller.h"


@interface IntroductionViewContoller ()

@end

@implementation IntroductionViewContoller

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
    
    _nameLabel.text = _selectedExercise.name;
    _instructionTextView.text = _selectedExercise.instruction;
    _coverView.image = _selectedExercise.cover;
    

    


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
- (IBAction)closeButtonTapped:(id)sender {
    
    //dismiss current view
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)addButtonTapped:(id)sender {
    
     _array = [[NSArray alloc]initWithObjects:_selectedExercise.name, nil];
    
    UIAlertView *notification =[[UIAlertView alloc]initWithTitle:@"Great!" message:@"You had added this to today's exercise" delegate:nil cancelButtonTitle:@"Continue" otherButtonTitles:nil];
    
    [notification show];
    
    //HOW TO SHIFT THOSE DATA IN THIS ARRAY TO TODAY'S WORKOUT TABLEVIEW?
    NSLog(@"The array name is %@",_array);
    
    
}

@end
