//
//  ViewController.m
//  inb348
//
//  Created by DONGMIN LEE on 27/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _exercise = [[NSMutableArray alloc] init]; //allocate _exercise array into heap and initialise
    Exercises *exercise = [[Exercises alloc] init]; //create Exercise class object and allocate it in to heap. initialise it.
    
    
    
    //add data into exercise class object
    exercise.name = @"1st exercise";
    exercise.introduction = @"Just do it";
    exercise.cover = [UIImage imageNamed:@"1st.jpg"];
    [_exercise addObject:exercise]; //add the object to array
    
    
    exercise = [[Exercises alloc] init]; //allocate in heap and initialise
    exercise.name = @"2nd exercise";
    exercise.introduction = @"Do it well";
    exercise.cover = [UIImage imageNamed:@"2nd.jpg"];
    [_exercise addObject:exercise]; // add the object to array

    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//this method decide what cell will show on table view
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Talk to table view that we will use paticular cell which is identified as "Cell"
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    

    
    
    //Create Exercise object of array and assign each row to cell. ex> cell 0 for exercise 0, cell 1 for exercise 1, cell 2 for exercise 2.
    
    Exercises *exercise = [_exercise objectAtIndex:indexPath.row];
    
    
    UILabel *ourLabel = (UILabel *) [cell viewWithTag:42]; //create ourLabel object and this label is located in cell which is tag 42
    
    ourLabel.text = exercise.name; //set label text as name from exercise array
    
    
    cell.imageView.image = exercise.cover; //set cover image from exercise array to imageview in cell
    
    return cell;
    
}



//set number of row on table view
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_exercise count]; //set it as how many objects are in exercise array
}

@end
