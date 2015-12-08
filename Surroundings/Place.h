//
//  Place.h
//  Surround
//
//  Created by Лисовой Данил on 07.10.14.
//  Copyright (c) 2014 DanielOrg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface Place : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *adress;
@property (nonatomic) CLLocationCoordinate2D coords;
@property (nonatomic,strong) NSString *ico;
@property (nonatomic) BOOL isOpen;
@property (nonatomic,strong) NSArray *types;

-(id)initWithName:(NSString *)name
           Adress:(NSString *)adress
           coords:(CLLocationCoordinate2D)coords
             icon:(NSString *)ico
           isOpen:(BOOL )isOpen
            types:(NSArray *)types;

-(NSString *)getInfo;

@end
