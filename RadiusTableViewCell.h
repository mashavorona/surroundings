//
//  RadiusTableViewCell.h
//  Surroundings
//
//  Created by Лисовой Данил on 28.10.14.
//  Copyright (c) 2014 DanielOrg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RadiusTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UISlider *radiusSlider;
@property (weak, nonatomic) IBOutlet UILabel *radiusValue;

@end
