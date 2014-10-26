//
//  RouteViewController.m
//  inb348
//
//  Created by Clement Ng Chwin Chiat Ng on 24/10/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "RouteViewController.h"

@interface RouteViewController ()
@property (strong,nonatomic)CLLocationManager *locationManager;

@end
double currentLat, currentLng;

@implementation RouteViewController

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
    [self zoomToLocation];
    [self startUpdatingCurrentLocation];
    NSLog(@"LAT %f", locationCoordinate.latitude);
    NSLog(@"LNG %f", locationCoordinate.longitude);
    if([self.rowTitle isEqualToString:@"QUT GP Healthstream"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.477488,153.028461);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"QUT GP Healthstream";
        [self.mapView addAnnotation:point];
        
        [self.mapView setDelegate:self];
    }else if ([self.rowTitle isEqualToString:@"Momentum Fitness"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.465577,153.027577);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"Momentum Fitness";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
    else if ([self.rowTitle isEqualToString:@"Dundee's Fitness Gym"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.477776,153.007106);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"Dundee's Fitness Gym";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
    else if ([self.rowTitle isEqualToString:@"Body Transformation"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.472458,153.014545);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"Body Transformation";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
    else if ([self.rowTitle isEqualToString:@"Gym Nation"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.482322,153.002473);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"Gym Nation";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
    else if ([self.rowTitle isEqualToString:@"EFM Health Club Herston"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.445713,153.02868);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"EFM Health Club Herston";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
    else if ([self.rowTitle isEqualToString:@"Jetts Health Gym"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.486554,153.035959);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"Jetts Health Gym";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
    else if ([self.rowTitle isEqualToString:@"QUT KG Healthstream"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.453214,153.008523);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"QUT KG Healthstream";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
    else if ([self.rowTitle isEqualToString:@"Snap Fitness"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.468635,153.002898);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"Snap Fitness";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
    else if ([self.rowTitle isEqualToString:@"Jetts Health Gym"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.477488,153.028461);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"Jetts Health Gym";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
    else if ([self.rowTitle isEqualToString:@"Healthworks West End"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.480834,153.00821);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"Healthworks West End";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
    else if ([self.rowTitle isEqualToString:@"West End Boxing Gym"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.480756,153.007897);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"West End Boxing Gym";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
    else if ([self.rowTitle isEqualToString:@"Tough Spot Gym"])
    {
        CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.477016,153.012277);
        MKPlacemark *_srcMark = [[MKPlacemark alloc] initWithCoordinate:_srcCoord addressDictionary:nil];
        MKMapItem *_srcItem = [[MKMapItem alloc] initWithPlacemark:_srcMark];
        
        [self find:_srcItem];
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = _srcCoord;
        point.title = @"Tough Spot Gym";
        [self.mapView addAnnotation:point];
        [self.mapView setDelegate:self];

    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)find:(MKMapItem *)destination
{
    MKDirectionsRequest *request = [[MKDirectionsRequest alloc] init];
    [request setSource:[MKMapItem mapItemForCurrentLocation]];
    [request setDestination:destination];
    [request setTransportType:MKDirectionsTransportTypeAny]; // This can be limited to automobile and walking directions.
    [request setRequestsAlternateRoutes:YES]; // Gives you several route options.
    MKDirections *directions = [[MKDirections alloc] initWithRequest:request];
    [directions calculateDirectionsWithCompletionHandler:^(MKDirectionsResponse *response, NSError *error) {
        if (!error) {
            for (MKRoute *route in [response routes]) {
                [self.mapView addOverlay:[route polyline] level:MKOverlayLevelAboveRoads]; // Draws the route above roads, but below labels.
                
                MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
                point.coordinate = locationCoordinate;
                point.title = @"Current Location";
                [self.mapView addAnnotation:point];
               
                // You can also get turn-by-turn steps, distance, advisory notices, ETA, etc by accessing various route properties.
            }
        }
    }];
}

- (void)findDirectionsFrom:(MKMapItem *)source
                        to:(MKMapItem *)destination
{
    //provide loading animation here
    
    MKDirectionsRequest *request = [[MKDirectionsRequest alloc] init];
    request.source = source;
    request.transportType = MKDirectionsTransportTypeAutomobile;
    request.destination = destination;
    MKDirections *directions = [[MKDirections alloc] initWithRequest:request];
    __block typeof(self) weakSelf = self;
    [directions calculateDirectionsWithCompletionHandler:
     ^(MKDirectionsResponse *response, NSError *error) {
         
         //stop loading animation here
         
         if (error) {
             NSLog(@"Error is %@",error);
         } else {
             //do something about the response, like draw it on map
             MKRoute *route = [response.routes firstObject];
             [self.mapView addOverlay:route.polyline level:MKOverlayLevelAboveRoads];
         }
     }];
}


- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)overlay {
    MKPolylineView *polylineView = [[MKPolylineView alloc] initWithPolyline:overlay];
    polylineView.strokeColor = [UIColor orangeColor];
    polylineView.lineWidth = 5.0;
    
    return polylineView;
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

-(void)updateLocationView
{
    CLLocationCoordinate2D zoomLocation;
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
    [self zoomToLocation];
}

- (void)zoomToLocation
{
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = locationCoordinate.latitude;
    zoomLocation.longitude = locationCoordinate.longitude;
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
