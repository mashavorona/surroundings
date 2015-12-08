//
//  SettingsTableViewController.h
//  Surroundings
//
//  Created by Лисовой Данил on 27.10.14.
//  Copyright (c) 2014 DanielOrg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@class ViewController;
@class RadiusTableViewCell;

@interface SettingsTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *placesImages;
@property (nonatomic, strong) NSArray *placesNames;
@property (nonatomic, strong) NSArray *selectedPlaces;
@property (nonatomic, strong) NSString *slider;

@property (nonatomic, weak) ViewController *firstViewController;
@property (nonatomic, weak) RadiusTableViewCell *radiusControl;

@end
