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

//GLOBAL VARIABLE
int rowNo;

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
    //PARSE
    _gymList = [[NSMutableArray alloc]init];
    //PFQuery *query = [PFQuery queryWithClassName:@"location"];
    [self loadLocationFromParse];
    [self loadDistanceFromParse];
    NSLog(@"%@", self.gymList);
    
    UIAlertView *notification =[[UIAlertView alloc]initWithTitle:@"Calculating Distance!" message:@"Press the find button after a few seconds." delegate:nil cancelButtonTitle:@"Continue" otherButtonTitles:nil];
    [notification show];

//    [query orderByAscending:@"distance"];
//    __block int counter = 0;
//
//    //ARRAY OF GYMS (SORTED)
//    [query findObjectsInBackgroundWithBlock:^(NSArray *tests, NSError *error)
//     {
//         for (PFObject *test in tests)
//         {
//             PFObject *post = [test objectForKey:@"title"];
//             [_gymList insertObject:post atIndex:counter];
//             counter++;
//             NSLog(@"GYM LIST %@", self.gymList);
//        }
//         NSLog(@"OUTER GYM LIST %@", _gymList);
//
//     }];
    
//    [query findObjectsInBackgroundWithBlock:^(NSArray *test2s, NSError *error) {
//        for(PFObject *test2 in test2s)
//        {
//            PFObject *post2 = [test2 objectForKey:@"distance"];
//            [_gymDistance insertObject:post2 atIndex:counter];
//            counter++;
//            NSLog(@"GYM DISTANCE %@",_gymDistance);
//        }
//    }];
    
    

    
//    NSMutableArray *allObjects = [NSMutableArray array];
//    PFQuery *query = [PFQuery queryWithClassName:@"location"];
//    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error)
//     {
//         [allObjects addObjectsFromArray:objects];
//         NSLog(@"%@", allObjects);
//     }];
//  
//    [query getObjectInBackgroundWithId:@"bN16ACmFmf" block:^(PFObject *test, NSError *error) {
//        NSLog(@"%@", test);
//        [self.gymList insertObject:test atIndex:0];
//    }];
   // NSLog(@"GYM LIST: %@",self.gymList);
    
    
    
    //NSString *path = [[NSBundle mainBundle]pathForResource:@"location" ofType:@"plist"];
    //self.gymList = [[NSArray alloc]initWithContentsOfFile:path];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    //NSLog(@"%@",self.gymList[0]);
    
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
    
    //NSDictionary *eachGym = [self.gymList objectAtIndex:indexPath.row];

    
   // NSLog(@"TABLE CELL GYM LIST %@", self.gymList);
        //NSDictionary *eachGymTest = [self.gymList objectAtIndex:indexPath.row];
        cell.myLabel.text = [self.gymList objectAtIndex:indexPath.row];
        NSNumber *test = [self.gymDistance objectAtIndex:indexPath.row];
        NSString *distance = [test stringValue];
        cell.lblDistance.text = distance;
    
    //SORTING ALGO
    //GOES HERE
//    NSSortDescriptor *sortDescriptor;
//    sortDescriptor = [[NSSortDescriptor alloc]initWithKey:@"distance" ascending:YES];
//    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
//    NSArray *sortedArray;
//    sortedArray = [self.gymList sortedArrayUsingDescriptors:sortDescriptors];
//    //NSLog(@"%@SORTED ARRAY",sortedArray);
//    
//    NSDictionary *eachGymTest = [sortedArray objectAtIndex:indexPath.row];
//    cell.myLabel.text = [eachGymTest objectForKey:@"title"];
//    
//    //PREVIOUS CODE
//    //cell.myLabel.text = [eachGym objectForKey:@"title"];
//    //cell.lblDistance.text = [eachGym objectForKey:@"distance"];
//    
//    //MUST CONVERT FROM NSNUMBER TO NSSTRING SINCE LABEL COULD NOT SET TEXT AS NSNUMBER
//    NSNumber *test = [eachGymTest objectForKey:@"distance"];
//    NSLog(@"%@",test);
//    NSString *distance = [test stringValue];
//    cell.lblDistance.text = [distance stringByAppendingString:@" m"];

    
    // Configure the cell...
    
    return cell;
}

/*
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    rowNo = indexPath.row;
    
    for (NSInteger i=0; i<7; i++)
    {
        if(rowNo == i)
        {
            NSString *string;
            GymListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
            NSDictionary *eachGym = [self.gymList objectAtIndex:indexPath.row];
            cell.myLabel.text = [eachGym objectForKey:@"title"];
            string = cell.myLabel.text;
            NSLog(@"%@", string);
            
            
        }
    }
    
    //[self.parentViewController dismissViewControllerAnimated:YES completion:nil];
}
*/

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

-(void)loadLocationFromParse
{

    PFQuery *query = [PFQuery queryWithClassName:@"location"];
    [query orderByAscending:@"distance"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error)
     {
        self.gymList = [[NSMutableArray alloc]init];
        if(!error)
        {
            NSLog(@"successful. %d", objects.count);
            for(PFObject *object in objects)
            {
                NSLog(@"%@", object);
                PFObject *post = [object objectForKey:@"title"];
                [self.gymList addObject:post];
            }
        }
        else{
            NSLog(@"Errror %@", error);
        }
     }];
}


-(void)loadDistanceFromParse
{
    PFQuery *query = [PFQuery queryWithClassName:@"location"];
    [query orderByAscending:@"distance"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
       if(!error)
       {
           for(PFObject *object in objects)
           {
               PFObject *post =[object objectForKey:@"distance"];
               [self.gymDistance addObject:post];
               //HOW TO PUT NSNUMBER INTO ARRAY
           }
       }
       else{
           NSLog(@"Errror %@", error);
       }
    }];
}

- (IBAction)btnTest:(id)sender {
    GymListTableViewCell *cell;
    cell.myLabel.text = @"TEST";
    
    
    if(!cell)
    {
        cell = [[GymListTableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"myCell"];
    }
    [self.tableView reloadData];

    NSLog(@"%@", self.gymList);
    NSLog(@"%@",self.gymDistance);
}
@end
