//
//  LocationViewController.m
//  inb348
//
//  Created by Clement Chwin Chiat Ng on 26/09/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "LocationViewController.h"
#import "MapViewAnnotation.h"

@interface LocationViewController ()
@property (strong,nonatomic)CLLocationManager *locationManager;
@end

@implementation LocationViewController

//GLOBAL VARIABLE LAT AND LNG
double currentLat, currentLng;

@synthesize mapView;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void)updateLocationView
{
    
    [self.mapView addAnnotations:[self createAnnotations]];
    //
    CLLocationCoordinate2D zoomLocation;
    //
    //    //CURRENT POSITION
        zoomLocation.latitude = locationCoordinate.latitude;
        zoomLocation.longitude = locationCoordinate.longitude;
    
    
    //
    NSLog(@"CURRENT LAT %f",locationCoordinate.latitude);
    NSLog(@"CURRENT LNG %f",locationCoordinate.longitude);
    //
    //    //DEFAULT POSITION
    //    //zoomLocation.latitude = -27.476015;
    //    //zoomLocation.longitude = 153.028457;
    //
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 500, 500);
    [self.mapView setRegion:viewRegion animated:YES];
    [self.mapView regionThatFits:viewRegion];
    //
        CLLocation *location1 = [[CLLocation alloc]initWithLatitude:zoomLocation.latitude longitude:zoomLocation.longitude];
        CLLocation *location2 = [[CLLocation alloc]initWithLatitude:-27.477776 longitude:153.007106];
        CLLocation *location3 = [[CLLocation alloc]initWithLatitude:-27.472458 longitude:153.014545];
        CLLocation *location4 = [[CLLocation alloc]initWithLatitude:-27.482322 longitude:153.002473];
        CLLocation *location5 = [[CLLocation alloc]initWithLatitude:-27.445713 longitude:153.02868];
        CLLocation *location6 = [[CLLocation alloc]initWithLatitude:-27.486554 longitude:153.035959];
        CLLocation *location7 = [[CLLocation alloc]initWithLatitude:-27.477488 longitude:153.028461];
        CLLocation *location8 = [[CLLocation alloc]initWithLatitude:-27.453214 longitude:153.008523];
        CLLocation *location9 = [[CLLocation alloc]initWithLatitude:-27.468635 longitude:153.002898];
        CLLocation *location10 = [[CLLocation alloc]initWithLatitude:-27.465577 longitude:153.027577];
        CLLocation *location11 = [[CLLocation alloc]initWithLatitude:-27.480834 longitude:153.00821];
        CLLocation *location12 = [[CLLocation alloc]initWithLatitude:-27.480756 longitude:153.007897];
        CLLocation *location13 = [[CLLocation alloc]initWithLatitude:-27.477016 longitude:153.012277];
    
        //DISTANCE BETWEEN DEFAULT LOCATION AND QUT HEALTHSTREAM iN METERS
        NSLog(@"Distance between these two coordinates: %f",[location1 distanceFromLocation:location2]);
        NSInteger distance1 = [location1 distanceFromLocation:location2];
        NSInteger distance2 = [location1 distanceFromLocation:location3];
        NSInteger distance3 = [location1 distanceFromLocation:location4];
        NSInteger distance4 = [location1 distanceFromLocation:location5];
        NSInteger distance5 = [location1 distanceFromLocation:location6];
        NSInteger distance6 = [location1 distanceFromLocation:location7];
        NSInteger distance7 = [location1 distanceFromLocation:location8];
        NSInteger distance8 = [location1 distanceFromLocation:location9];
        NSInteger distance9 = [location1 distanceFromLocation:location10];
        NSInteger distance10 = [location1 distanceFromLocation:location11];
        NSInteger distance11 = [location1 distanceFromLocation:location12];
        NSInteger distance12 = [location1 distanceFromLocation:location13];
    //
        NSLog(@"Distance from QUT GP %ld meters", (long)distance1);
        NSLog(@"Distance from QUT KG %ld meters", (long)distance2);
    //    NSLog(@"Distance from Jetts %ld meters",(long)distance3);
    //
    //
        //CREATING DISTANCEOBJECT CAUSE PLIST ONLY ACCEPTS NSNUMBER INSTEAD OF NSINTEGER
        NSNumber *distanceObject1 = [NSNumber numberWithInteger:distance1];
        NSNumber *distanceObject2 = [NSNumber numberWithInteger:distance2];
        NSNumber *distanceObject3 = [NSNumber numberWithInteger:distance3];
        NSNumber *distanceObject4 = [NSNumber numberWithInteger:distance4];
        NSNumber *distanceObject5 = [NSNumber numberWithInteger:distance5];
        NSNumber *distanceObject6 = [NSNumber numberWithInteger:distance6];
        NSNumber *distanceObject7 = [NSNumber numberWithInteger:distance7];
        NSNumber *distanceObject8 = [NSNumber numberWithInteger:distance8];
        NSNumber *distanceObject9 = [NSNumber numberWithInteger:distance9];
        NSNumber *distanceObject10 = [NSNumber numberWithInteger:distance10];
        NSNumber *distanceObject11 = [NSNumber numberWithInteger:distance11];
        NSNumber *distanceObject12 = [NSNumber numberWithInteger:distance12];
    
    
    
    //PARSE SAVING DATA
    PFQuery *query1 = [PFQuery queryWithClassName:@"location"];
    [query1 getObjectInBackgroundWithId:@"bN16ACmFmf" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject1;
         [test saveInBackground];
     }];
    PFQuery *query2 = [PFQuery queryWithClassName:@"location"];
    [query2 getObjectInBackgroundWithId:@"TvMREtZQyv" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject2;
         [test saveInBackground];
     }];
    PFQuery *query3 = [PFQuery queryWithClassName:@"location"];
    [query3 getObjectInBackgroundWithId:@"vVW72DcLmU" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject3;
         [test saveInBackground];
     }];
    PFQuery *query4 = [PFQuery queryWithClassName:@"location"];
    [query4 getObjectInBackgroundWithId:@"4zxoSSqetn" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject4;
         [test saveInBackground];
     }];
    PFQuery *query5 = [PFQuery queryWithClassName:@"location"];
    [query5 getObjectInBackgroundWithId:@"yNzPepc5iH" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject5;
         [test saveInBackground];
     }];
    PFQuery *query6 = [PFQuery queryWithClassName:@"location"];
    [query6 getObjectInBackgroundWithId:@"0wNrwcw087" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject6;
         [test saveInBackground];
     }];
    PFQuery *query7 = [PFQuery queryWithClassName:@"location"];
    [query7 getObjectInBackgroundWithId:@"7wxdNYfVQ8" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject7;
         [test saveInBackground];
     }];
    PFQuery *query8 = [PFQuery queryWithClassName:@"location"];
    [query8 getObjectInBackgroundWithId:@"6rL5mGwWpB" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject8;
         [test saveInBackground];
     }];
    PFQuery *query9 = [PFQuery queryWithClassName:@"location"];
    [query9 getObjectInBackgroundWithId:@"xOXiZ6cGYI" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject9;
         [test saveInBackground];
     }];
    PFQuery *query10 = [PFQuery queryWithClassName:@"location"];
    [query10 getObjectInBackgroundWithId:@"OK3k7XYMu2" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject10;
         [test saveInBackground];
     }];
    PFQuery *query11 = [PFQuery queryWithClassName:@"location"];
    [query11 getObjectInBackgroundWithId:@"Vo1wgTbtB7" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject11;
         [test saveInBackground];
     }];
    PFQuery *query12 = [PFQuery queryWithClassName:@"location"];
    [query12 getObjectInBackgroundWithId:@"gOYNln3xw2" block:^(PFObject *test, NSError *error)
     {
         test[@"distance"]=distanceObject12;
         [test saveInBackground];
     }];
    

    //    //LOCATION OF PLIST
    //    NSString *dataFilePath = [[NSBundle mainBundle]pathForResource:@"location" ofType:@"plist"];

    NSString *path = [[NSBundle mainBundle]pathForResource:@"location" ofType:@"plist"];
    //   // NSString *documentsDirectoryPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    //    //NSString *filePath = [documentsDirectoryPath stringByAppendingPathComponent:@"location.plist"];
    //
    //
    //    //CREATE ARRAY WITH CONTENTS OF PLIST
   
    
        NSMutableArray *plistArray = [[NSMutableArray alloc] initWithContentsOfFile: path];
        NSLog(@"plistArray before additon: %@", plistArray);
        for (NSMutableDictionary *dict in plistArray)
        {
            //if you want to search for a record only otherwise remove the if statement
            if ([[dict objectForKey:@"title"] isEqualToString:@"QUT KG Healthstream"])  //this just an example, modify this per your needed
                [dict setObject:distanceObject2 forKey:@"distance"];  //select which dictionary record to set the Top key
            if([[dict objectForKey:@"title"]isEqualToString:@"QUT GP Healthstream"])
                [dict setObject:distanceObject1 forKey:@"distance"];
            if([[dict objectForKey:@"title"]isEqualToString:@"Jetts Health Gym"])
                [dict setObject:distanceObject3 forKey:@"distance"];
            if([[dict objectForKey:@"title"]isEqualToString:@"EFM Health Club Herston"])
                [dict setObject:distanceObject4 forKey:@"distance"];
            if([[dict objectForKey:@"title"]isEqualToString:@"Gym Nation"])
                [dict setObject:distanceObject5 forKey:@"distance"];
            if([[dict objectForKey:@"title"]isEqualToString:@"Body Transformation"])
                [dict setObject:distanceObject6 forKey:@"distance"];
            if([[dict objectForKey:@"title"]isEqualToString:@"Dundee's Fitness Gym"])
                [dict setObject:distanceObject7 forKey:@"distance"];
            if([[dict objectForKey:@"title"]isEqualToString:@"Tough Spot Gym"])
                [dict setObject:distanceObject8 forKey:@"distance"];
           if([[dict objectForKey:@"title"]isEqualToString:@"West End Boxing Gym"])
                [dict setObject:distanceObject9 forKey:@"distance"];
            if([[dict objectForKey:@"title"]isEqualToString:@"Healthworks West End"])
                [dict setObject:distanceObject10 forKey:@"distance"];
            if([[dict objectForKey:@"title"]isEqualToString:@"Momentum Fitness"])
                [dict setObject:distanceObject11 forKey:@"distance"];
            if([[dict objectForKey:@"title"]isEqualToString:@"Snap Fitness"])
                [dict setObject:distanceObject12 forKey:@"distance"];
        }
    
   
    NSLog(@"plistArray after additon : %@", plistArray);
    
    //FIND WAYS TO WRITE DATA INTO DICTIONARY
    //DATAFILEPATH NOT WRONG, CAN READ THE DATA WITHIN
    
    
    [plistArray writeToFile:path atomically:NO];
    NSLog(@"YES");
    //[location1 release];
    //[location2 release];
    [self zoomToLocation];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.mapView.delegate = self;
    [self startUpdatingCurrentLocation];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//CURRENT LOCATION CODE
-(void)startUpdatingCurrentLocation
{
    if(!self.locationManager)
    {
        self.locationManager = [[CLLocationManager alloc]init];
        self.locationManager.delegate = self;
        self.locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
        self.locationManager.distanceFilter=2;
    }
    [self.locationManager startUpdatingLocation];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = [locations lastObject];
    NSDate *eventDate = location.timestamp;
   // NSTimeInterval howRecent = [eventDate timeIntervalSinceNow];
    
    NSLog(@"%@ location",location);
//    currentLat = location.coordinate.latitude;
////    currentLng = location.coordinate.longitude;
    locationCoordinate = location.coordinate;

    [self updateLocationView];
    [self stopUpdatingCurrentLocation];
}

-(void)stopUpdatingCurrentLocation
{
    [self.locationManager stopUpdatingLocation];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    //YOUR CURRENT POSITION CODE IS HERE
    //REMEMBER TO GET THE LAT AND LNG
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 500, 500);
    [self.mapView setRegion:[self.mapView regionThatFits:region]animated:YES];
    
    //ADDING ANNOTATION
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    point.coordinate = userLocation.coordinate;
    
    
    //CURRENT USER LAT AND LNG
    currentLat = userLocation.coordinate.latitude;
    currentLng = userLocation.coordinate.longitude;

    point.title = @"Current Position";
    point.subtitle = @"You're here";
    
    [self.mapView addAnnotation:point];
}

 

- (NSMutableArray *)createAnnotations
{
    NSMutableArray *annotations = [[NSMutableArray alloc] init];
    //Read locations details from plist
    NSString *path = [[NSBundle mainBundle]pathForResource:@"location" ofType:@"plist"];
    NSArray *locations = [NSArray arrayWithContentsOfFile:path];
    for (NSDictionary *row in locations) {
        NSNumber *latitude = [row objectForKey:@"latitude"];
        NSNumber *longitude = [row objectForKey:@"longitude"];
        NSString *title = [row objectForKey:@"title"];
        //Create coordinates from the latitude and longitude values
        CLLocationCoordinate2D coord;
        coord.latitude = latitude.doubleValue;
        coord.longitude = longitude.doubleValue;
        MapViewAnnotation *annotation = [[MapViewAnnotation alloc] initWithTitle:title AndCoordinate:coord];
        [annotations addObject:annotation];
    }
    return annotations;
}

- (void)zoomToLocation
{
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = -27.476015;
    zoomLocation.longitude = 153.028457;
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation,800,800);
    [self.mapView setRegion:viewRegion animated:YES];
    [self.mapView regionThatFits:viewRegion];
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

- (IBAction)returnCurrent:(id)sender {
    CLLocationCoordinate2D zoomCurrent;
    
    zoomCurrent.latitude = locationCoordinate.latitude;
    zoomCurrent.longitude =locationCoordinate.longitude;
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomCurrent, 500, 500);
    [self.mapView setRegion:viewRegion];
    [self.mapView regionThatFits:viewRegion];
}
@end
