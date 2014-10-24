//
//  RouteViewController.m
//  inb348
//
//  Created by Clement Ng Chwin Chiat Ng on 24/10/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "RouteViewController.h"

@interface RouteViewController ()

@end

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
    NSLog(@"NUMBER %ld", (long)self.rowNumber);
    NSLog(@"%@",self.rowTitle);
    
    
            CLLocationCoordinate2D _srcCoord = CLLocationCoordinate2DMake(-27.477488, 153.028461);
            MKPlacemark *_srcMark = [[MKPlacemark alloc]initWithCoordinate:_srcCoord addressDictionary:nil];
            MKMapItem *_srcItem =[[MKMapItem alloc]initWithPlacemark:_srcMark];
            MKMapItem *_srcCurrent = [MKMapItem mapItemForCurrentLocation];
            
            [self findDirectionsFrom:_srcCurrent to:_srcItem];
    
    //NSLog(@"%@", self.rowNumber);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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


-(MKOverlayPathRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id<MKOverlay>)overlay
{
    MKPolylineRenderer *polylineRender = [[MKPolylineRenderer alloc]initWithOverlay:overlay];
    polylineRender.lineWidth = 3.0f;
    polylineRender.strokeColor = [UIColor greenColor];
    return polylineRender;
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
