//
//  MapViewAnnotation.m
//  inb348
//
//  Created by Clement Chwin Chiat Ng on 26/09/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "MapViewAnnotation.h"

@implementation MapViewAnnotation
@synthesize coordinate=_coordinate;
@synthesize title=_title;
-(id) initWithTitle:(NSString *) title AndCoordinate:(CLLocationCoordinate2D)coordinate
{
    self = [super init];
    _title = title;
    _coordinate = coordinate;
    return self;
}
@end
