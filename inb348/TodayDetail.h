//
//  TodayDetail.h
//  inb348
//
//  Created by DONGMIN LEE on 25/10/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface TodayDetail : NSManagedObject

@property (nonatomic, retain) NSString * kg;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * reps;
@property (nonatomic, retain) NSString * sets;

@end
