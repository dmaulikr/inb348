//
//  ViewController.m
//  inb348
//
//  Created by DONGMIN LEE on 27/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "FBLoginViewViewController.h"

@interface ViewController ()
{
    NSString *test;
    NSString *challenge;
    UIAlertView *testView;
    
    NSMutableArray *array;
    NSMutableArray *arrayChallenge;
    
    NSArray *exerciseFilter;
    NSArray *searchResults;
    //NSString *userName;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@",self.userName);
    arrayChallenge = [[NSMutableArray alloc]initWithObjects:@"Do Push Ups for 50 times", @"Do Sit Ups for 50 times", @"Swimming for 1 hour", @"Jogging for 30 minutes",
                      @"Cycling for 30 minutes",nil];
    int i = arc4random() % 5;
    challenge = arrayChallenge[i];
    
    testView = [[UIAlertView alloc] initWithTitle:@"Daily Challenge" message:arrayChallenge[i] delegate:nil cancelButtonTitle:@"Challenge Accepted" otherButtonTitles:nil];
    [testView addButtonWithTitle:@"Not Today"];
    [testView show];
    
    
    
    //MAYBE CAN PUT INTO THE TODAY'S WORK OUT LIST

    
	// Do any additional setup after loading the view, typically from a nib.
    _exercise = [[NSMutableArray alloc] init]; //allocate _exercise array into heap and initialise
    Exercises *exercise = [[Exercises alloc] init]; //create Exercise class object and allocate it in to heap. initialise it.
    
    
    //add data into exercise class object
    //=====================================================
    //                      EX 1
    //=====================================================
    exercise.name = @"Push Up";
    NSString *str1 = @"1: Lie prone on floor with hands slightly wider than shoulder width.";
    NSString *str2 = @"2: Raise body up off floor by extending arms with body straight.";
    NSString *str3 = @"3: Keeping body straight, lower body to floor by bending arms.";
    NSString *str4 = @"4: Push body up until arms are extended.";
    NSString *str5 = @"5: Repeat";
    exercise.instruction = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@",str1,str2,str3,str4,str5];
    exercise.cover = [UIImage imageNamed:@"pushup.jpg"];
    [_exercise addObject:exercise]; //add the object to array
    
    //=====================================================
    //                      EX 2
    //=====================================================
    exercise = [[Exercises alloc] init]; //allocate in heap and initialise
    exercise.name = @"Sit Up";
    NSString *str6 = @"1: Hook feet under support and lie supine on floor or mat with hips and knees bent.";
    NSString *str7 = @"2: With both hands, hold plate on chest with forearms crossed or use no weight.";
    NSString *str8 = @"3: Raise torso from floor by bending waist and hips.";
    NSString *str9 = @"4: Return until back of shoulders contact with floor or mat.";
    NSString *str10 = @"5: Repeat.";
    exercise.instruction = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@",str6,str7,str8,str9,str10];
    exercise.cover = [UIImage imageNamed:@"situp.jpg"];
    [_exercise addObject:exercise]; // add the object to array
    
    //=====================================================
    //                      EX 3
    //=====================================================
    exercise = [[Exercises alloc] init]; //allocate in heap and initialise
    exercise.name = @"Bench Press";
    NSString *str11 = @"1: Sit down on bench with dumbbells resting on lower thigh.";
    NSString *str12 = @"2: Kick weights to shoulder and lie back.";
    NSString *str13 = @"3: Position dumbbells to sides of chest with bent arm under each dumbbell.";
    NSString *str14 = @"4: Press dumbbells up with elbows to sides until arms are extended.";
    NSString *str15 = @"5: Lower weight to sides of upper chest until slight stretch is felt in chest or shoulder.";
    NSString *str16 = @"6: Repeat";
    exercise.instruction = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",str11,str12,str13,str14,str15, str16];
    exercise.cover = [UIImage imageNamed:@"benchpress.jpg"];
    [_exercise addObject:exercise]; // add the object to array
    
    //=====================================================
    //                      EX 4
    //=====================================================
    exercise = [[Exercises alloc] init]; //allocate in heap and initialise
    exercise.name = @"Incline Bench Press";
    NSString *str17 = @"1: Lie supine on incline bench.";
    NSString *str18 = @"2: Dismount barbell from rack over upper chest using wide oblique overhand grip.";
    NSString *str19 = @"3: Lower weight to upper chest.";
    NSString *str20 = @"4: Press bar until arms are extended";
    NSString *str21 = @"5: Repeat.";
    exercise.instruction = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@",str17,str18,str19,str20,str21];
    exercise.cover = [UIImage imageNamed:@"inclinepress.jpg"];
    [_exercise addObject:exercise]; // add the object to array
    
    //=====================================================
    //                      EX 5
    //=====================================================
    exercise = [[Exercises alloc] init]; //allocate in heap and initialise
    exercise.name = @"Decline Bench Press";
    NSString *str22 = @"1: Sit down on decline bench with feet under leg brace and dumbbells resting on thigh.";
    NSString *str23 = @"2: Lie back with barbell/dumbell.";
    NSString *str24 = @"3: Position dumbbells to sides of chest with bent arm under each dumbbell";
    NSString *str25 = @"4: Press dumbbells up with elbows to sides until arms are extended.";
    NSString *str26 = @"5: Lower weight to sides of chest until slight stretch is felt in chest or shoulder.";
    NSString *str27 = @"6: Repeat";
    exercise.instruction = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",str22,str23,str24,str25,str26,str27];
    exercise.cover = [UIImage imageNamed:@"declinepress.jpg"];
    [_exercise addObject:exercise]; // add the object to array
    
    //=====================================================
    //                      EX 6
    //=====================================================
    exercise = [[Exercises alloc] init]; //allocate in heap and initialise
    exercise.name = @"Leg Curls";
    NSString *str28 = @"1: Facing bench, stand between bench and lever pads.";
    NSString *str29 = @"2: Lie prone on bench with knees just beyond edge of bench and lower legs under lever pads.";
    NSString *str30 = @"3: Grasp handles.";
    NSString *str31 = @"4: Raise lever pad to back of thighs by flexing knees.";
    NSString *str32 = @"5: Lower lever pads until knees are straight.";
    NSString *str33 = @"6: Repeat";
    exercise.instruction = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",str28,str29,str30,str31,str32,str33];
    exercise.cover = [UIImage imageNamed:@"legcurl.jpg"];
    [_exercise addObject:exercise]; // add the object to array

    //=====================================================
    //                      EX 7
    //=====================================================
    exercise = [[Exercises alloc] init]; //allocate in heap and initialise
    exercise.name = @"Leg Extensions";
    NSString *str34 = @"1: Sit on apparatus with back against padded back support.";
    NSString *str35 = @"2: Place front of lower legs under padded lever. ";
    NSString *str36 = @"3: Position knee articulation at same axis as lever fulcrum.";
    NSString *str37 = @"4: Grasp handles to sides for support.";
    NSString *str38 = @"5: Move lever forward and upward by extending knees until legs are straight.";
    NSString *str39 = @"6: Return lever to original position by bending knees.";
    NSString *str40 = @"7: Repeat";
    exercise.instruction = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@",str34,str35,str36,str37,str38,str39,str40];
    exercise.cover = [UIImage imageNamed:@"legextension.jpg"];
    [_exercise addObject:exercise]; // add the object to array
    
    //=====================================================
    //                      EX 8
    //=====================================================
    exercise = [[Exercises alloc] init]; //allocate in heap and initialise
    exercise.name = @"Dead Lifts";
    NSString *str41 = @"1: For each rep start in a low squat position and grab the bar with an overhand grip.";
    NSString *str42 = @"2: Sit back in your hips, push through your heels, ascend upward, and raise your torso until you’re in a full stand.";
    NSString *str43 = @"3: maintain a tight core and straight back throughout the motion.";
    NSString *str44 = @"4: Slowly lower under control by dropping your torso and hips down until the bar touches the floor.";
    exercise.instruction = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",str41,str42,str43,str44];

    exercise.cover = [UIImage imageNamed:@"deadlifts.png"];
    [_exercise addObject:exercise]; // add the object to array
   
    //=====================================================
    //                      EX 9
    //=====================================================
    exercise = [[Exercises alloc] init]; //allocate in heap and initialise
    exercise.name = @"Bent Over Barbell Row";
    NSString *str45 = @"1: Hold a barbell in front of your body with an overhand grip slightly wider than shoulder width";
    NSString *str46 = @"2: Tighten your core, straighten your back, and drop your torso down to 60º.";
    NSString *str47 = @"3: Powerfully contract your back and biceps, and pull the barbell upwards into the top of your core. Hold for 1s and return down to a full extension.";
    NSString *str48 = @"4: Repeat.";
    exercise.instruction = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",str45,str46,str47,str48];
    exercise.cover = [UIImage imageNamed:@"barbellrow.jpg"];
    [_exercise addObject:exercise]; // add the object to array
    
    //=====================================================
    //                      EX 10
    //=====================================================
    exercise = [[Exercises alloc] init]; //allocate in heap and initialise
    exercise.name = @"Bent Over One Arm Dumbell Rows";
    NSString *str49 = @"1: Place your left knee and left hand firmly anchored on a flat bench. Your left hand should serve as support for your body.";
    NSString *str50 = @"2: Maintain a tight core and flat back, contract your lats and biceps, and slowly row the dumbbell upwards until it’s above your torso.";
    NSString *str51 = @"3: Hold 1s and slowly lower the dumbbell to a full extension — you should feel a stretch throughout your upper backout.";
    NSString *str52 = @"4: Repeat.";
    exercise.instruction = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",str49,str50,str51,str52];
    exercise.cover = [UIImage imageNamed:@"bodumbellrow.jpg"];
    [_exercise addObject:exercise]; // add the object to array
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//SEARCH FILTER LOGICS
/*
-(void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    NSPredicate *resultsPredicate = [NSPredicate predicateWithFormat:@"SELF contains [cd] %@", searchText];
    searchResults = [exerciseFilter filteredArrayUsingPredicate:resultsPredicate];
}


-(BOOL)searchDisplayController:(UISearchDisplayController *)controller
shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}
*/

//FOR SHAKE EVENT
-(BOOL)canBecomeFirstResponder
{
    return YES;
}

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if(motion == UIEventSubtypeMotionShake)
    {
        [self showAlert];
    }
}

-(IBAction)showAlert
{
    //_exercise = [[NSMutableArray alloc] init]; //allocate _exercise array into heap and initialise
    //Exercises *exercise = [[Exercises alloc] init]; //create Exercise class object and allocate it in to heap. initialise it.
    
    array = [[NSMutableArray alloc]initWithObjects:@"Dead Lifts",@"Push Ups",@"Bent Over One Arm Dumbell Rows",@"Bent Over Barbell Row",@"Leg Extensions",
       @"Leg Curls", @"Incline Bench Press", @"Decline Bench Press",@"Sit Ups", @"Bench Press", nil];
    
    int i = arc4random() % 10;
    
    //int x = arc4random() % 50;
    
    NSLog(@"Exercise array has %lu", (unsigned long)[array count]);
    NSLog(@"Exercise random %@", array[i]);
    test = array[i];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Random Exercise" message:array[i] delegate:self cancelButtonTitle:@"Try it!" otherButtonTitles:nil];
    [alertView addButtonWithTitle:@"No, Thank You"];
    [alertView show];
    
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0)
    {
        _string = test;
        //==========================
        //ADD TO GLOBAL ARRAY LOGIC
        //==========================
        
        //SAVE THE SELECTED EXERCISES INTO GLOBAL ARRAY
        AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
        
        if([appDelegate.exerciseList containsObject:_string])
        {
            UIAlertView *notification =[[UIAlertView alloc]initWithTitle:@"Sorry!" message:@"You already registered this exercise" delegate:nil cancelButtonTitle:@"Continue" otherButtonTitles:nil];
            [notification show];
        }
        else
        {
            UIAlertView *notification =[[UIAlertView alloc]initWithTitle:@"Great!" message:@"You had added this to today's exercise" delegate:nil cancelButtonTitle:@"Continue" otherButtonTitles:nil];
            [notification show];
            [appDelegate.exerciseList addObject:[NSString stringWithFormat:@"%@",_string]];
            NSLog(@"%@",_string);
            // NSLog(@"%@",appDelegate.exerciseList);
            // NSLog(@"%lu",(unsigned long)appDelegate.exerciseList.count);
            
            
            NSString *documentsDirectoryPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
            NSString *filePath = [documentsDirectoryPath stringByAppendingPathComponent:@"exercise.plist"];
            [appDelegate.exerciseList writeToFile:filePath atomically:YES];
        }
        
    }
    if(buttonIndex == 1)
    {
        
    }
}



//this method decide what cell will show on table view
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Talk to table view that we will use paticular cell which is identified as "Cell"
    //static NSString *simpleTableIdentifier = @"ExerciseCell";
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
 
    
    ExerciseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EXCell"];

    
    
    //Create Exercise object of array and assign each row to cell. ex> cell 0 for exercise 0, cell 1 for exercise 1, cell 2 for exercise 2.
    
    
    Exercises *exercise = [_exercise objectAtIndex:indexPath.row];
    
    
    //UILabel *ourLabel = (UILabel *) [cell viewWithTag:42]; //create ourLabel object and this label is located in cell which is tag 42
    //ourLabel.text = exercise.name; //set label text as name from exercise array
    //cell.imageView.image = exercise.cover; //set cover image from exercise array to imageview in cell
    
    cell.nameStr.text = exercise.name;
    cell.coverImageView.image = exercise.cover; //set cover image from exercise array to imageview in cell
    
    return  cell;
  
    
    //=======
    /*
    //static NSString *simpleIdentifier = @"ExCell";
    
    ExerciseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EXCell"];
    Exercises *exercise = [_exercise objectAtIndex:indexPath.row];
    if(tableView == self.searchDisplayController.searchResultsTableView)
    {
        cell.nameStr.text = [searchResults objectAtIndex:indexPath.row];
        cell.coverImageView.image = [searchResults objectAtIndex:indexPath.row];
    }
    else
    {
        cell.nameStr.text = exercise.name;
        cell.coverImageView.image = exercise.cover;
    }
     */
    //=========
    return cell;
    
}

//set number of row on table view
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    /*
    if(tableView == self.searchDisplayController.searchResultsTableView)
    {
        return [searchResults count];
    }
    else
    {
        return [_exercise count]; //set it as how many objects are in exercise array
    }
     */
    return [_exercise count];
}



//this method manages what happens when a row is tapped
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES]; //when a row is tapped, deselect highlighted row automatically.
    
    //create IntroductionViewController class object and tell App that we have ViewController on storyboard which is called "IntroductionViewController"
    IntroductionViewContoller *introViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"IntroductionViewController"];
    
    
    //create navigationController object and initialise on "IntroViewController"
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:introViewController];
    
    
    [self presentViewController:navigationController animated:YES completion:nil];//Current view will change to navigationController which is on "IntroductionViewController"
    
    
    introViewController.selectedExercise = [_exercise objectAtIndex:indexPath.row];
    // Assign a value to "selectedExercise" property of InstructionViewController. the value is exercise object that user selected from cell.
    
    
}

-(void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user
{
    NSLog(@"%@", user);
    self.profilePicture.profileID = user.id;
    //userName = [user objectForKey:@"first_name"];
}



@end
