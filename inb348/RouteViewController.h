//
//  RouteViewController.h
//  inb348
//
//  Created by Clement Ng Chwin Chiat Ng on 24/10/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "GymListTableViewCell.h"

@interface RouteViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic,assign) NSUInteger *rowNumber;
@property (nonatomic,assign) NSString *rowTitle;
@end
