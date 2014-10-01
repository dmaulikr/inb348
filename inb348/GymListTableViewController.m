//
//  GymListTableViewController.m
//  inb348
//
//  Created by Clement Ng Chwin Chiat Ng on 29/09/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "GymListTableViewController.h"

@interface GymListTableViewController ()

@end

@implementation GymListTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle]pathForResource:@"location" ofType:@"plist"];
    self.gymList = [[NSArray alloc]initWithContentsOfFile:path];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    NSLog(@"%@",self.gymList[0]);
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.gymList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GymListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];

    
    if(!cell)
    {
        cell = [[GymListTableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"myCell"];
    }
    
    NSDictionary *eachGym = [self.gymList objectAtIndex:indexPath.row];
    cell.myLabel.text = [eachGym objectForKey:@"title"];
    //cell.lblDistance.text = [eachGym objectForKey:@"distance"];
    
    //MUST CONVERT FROM NSNUMBER TO NSSTRING SINCE LABEL COULD NOT SET TEXT AS NSNUMBER
    NSNumber *test = [eachGym objectForKey:@"distance"];
    NSLog(@"%@",test);
    NSString *distance = [test stringValue];
    cell.lblDistance.text = distance;

    
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
