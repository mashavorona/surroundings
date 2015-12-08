//
//  PlaceButton.h
//  Surroundings
//
//  Created by Лисовой Данил on 09.10.14.
//  Copyright (c) 2014 DanielOrg. All rights reserved.
//
#import "Place.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface PlaceButton : UIButton

@property (strong,nonatomic) UIImage* backgroungImage;
@property (nonatomic,strong) Place* place;

-(id)initWithImage:(UIImage *)background;

-(void)setPlace:(Place *)plc;

-(Place *)getPlace;

-(double)getLatitude;

-(double)getLongitude;

@end
