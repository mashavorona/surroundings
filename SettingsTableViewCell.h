//
//  SettingsTableViewCell.h
//  Surroundings
//
//  Created by Лисовой Данил on 27.10.14.
//  Copyright (c) 2014 DanielOrg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *placeName;
@property (weak, nonatomic) IBOutlet UIImageView *placeImage;
@property (weak, nonatomic) IBOutlet UISwitch *CheckSwich;

@end
