//
//  LocationViewController.h
//  inb348
//
//  Created by Clement Chwin Chiat Ng on 26/09/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationViewController : UIViewController <MKMapViewDelegate>
@property (strong,nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)returnCurrent:(id)sender;
@end
