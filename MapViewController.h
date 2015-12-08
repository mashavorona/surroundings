//
//  MapViewController.h
//  Surroundings
//
//  Created by Лисовой Данил on 09.10.14.
//  Copyright (c) 2014 DanielOrg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Place.h"
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController

@property (strong, nonatomic) Place *place;
@property (weak, nonatomic) IBOutlet MKMapView *map;
@property (nonatomic) CLLocation* curr;

@end
