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

@end

@implementation LocationViewController
@synthesize mapView;

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
    //self.mapView.delegate = self;
    [self.mapView addAnnotations:[self createAnnotations]];
    
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = -27.476015;
    zoomLocation.longitude = 153.028457;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 500, 500);
    [self.mapView setRegion:viewRegion animated:YES];
    [self.mapView regionThatFits:viewRegion];
    
    CLLocation *location1 = [[CLLocation alloc]initWithLatitude:zoomLocation.latitude longitude:zoomLocation.longitude];
    CLLocation *location2 = [[CLLocation alloc]initWithLatitude:-27.477488 longitude:153.028461];
    CLLocation *location3 = [[CLLocation alloc]initWithLatitude:-27.453214 longitude:153.008523];
    CLLocation *location4 = [[CLLocation alloc]initWithLatitude:-27.486554 longitude:153.035959];
    
    //DISTANCE BETWEEN DEFAULT LOCATION AND QUT HEALTHSTREAM iN METERS
    NSLog(@"Distance between these two coordinates: %f",[location1 distanceFromLocation:location2]);
    NSInteger distance1 = [location1 distanceFromLocation:location2];
    NSInteger distance2 = [location1 distanceFromLocation:location3];
    NSInteger distance3 = [location1 distanceFromLocation:location4];
    NSLog(@"Distance from QUT GP %ld meters", (long)distance1);
    NSLog(@"Distance from QUT KG %ld meters", (long)distance2);
    NSLog(@"Distance from Jetts %ld meters",(long)distance3);
    
    
    //CREATING DISTANCEOBJECT CAUSE PLIST ONLY ACCEPTS NSNUMBER INSTEAD OF NSINTEGER
    NSNumber *distanceObject1 = [NSNumber numberWithInteger:distance1];
    NSNumber *distanceObject2 = [NSNumber numberWithInteger:distance2];
    NSNumber *distanceObject3 = [NSNumber numberWithInteger:distance3];
    
    
    //LOCATION OF PLIST
   // NSString *dataFilePath = [[NSBundle mainBundle]pathForResource:@"location" ofType:@"plist"];
    NSString *path = [[NSBundle mainBundle]pathForResource:@"location" ofType:@"plist"];
   // NSString *documentsDirectoryPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    //NSString *filePath = [documentsDirectoryPath stringByAppendingPathComponent:@"location.plist"];

    
    //CREATE ARRAT WITH CONTENTS OF PLIST
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
    }
    NSLog(@"plistArray after additon : %@", plistArray);
    
    //FIND WAYS TO WRITE DATA INTO DICTIONARY
    //DATAFILEPATH NOT WRONG, CAN READ THE DATA WITHIN
    [plistArray writeToFile:path atomically:YES];
    //[location1 release];
    //[location2 release];
    //[self zoomToLocation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 500, 500);
    [self.mapView setRegion:[self.mapView regionThatFits:region]animated:YES];
    
    //ADDING ANNOTATION
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    point.coordinate = userLocation.coordinate;
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

@end
