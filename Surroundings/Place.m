//
//  Place.m
//  Surround
//
//  Created by Лисовой Данил on 07.10.14.
//  Copyright (c) 2014 DanielOrg. All rights reserved.
//

#import "Place.h"

@implementation Place


-(id)initWithName:(NSString *)name
           Adress:(NSString *)adress
           coords:(CLLocationCoordinate2D)coords
             icon:(NSString *)ico
           isOpen:(BOOL )isOpen
            types:(NSArray *)types;
{
    self = [super init];
    
    self.name  = name;
    self.adress = adress;
    self.coords = coords;
    self.ico = ico;
    self.isOpen = isOpen;
    self.types = types;
    
    return self;
}

-(NSString *)getInfo{
    return [NSString stringWithFormat:@"%@\n%@\n%f,%f\n%s\n%@",
            self.name,self.adress,
            self.coords.latitude,
            self.coords.longitude,
            (_isOpen ? "Open":"Closed"),
            _types];
}
@end
