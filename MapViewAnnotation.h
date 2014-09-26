//
//  MapViewAnnotation.h
//  inb348
//
//  Created by Clement Chwin Chiat Ng on 26/09/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapViewAnnotation : NSObject <MKAnnotation>

@property (nonatomic,copy) NSString *title;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
-(id) initWithTitle:(NSString *) title AndCoordinate:(CLLocationCoordinate2D)coordinate;

@end
