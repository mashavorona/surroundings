//
//  RadiusTableViewCell.m
//  Surroundings
//
//  Created by Лисовой Данил on 28.10.14.
//  Copyright (c) 2014 DanielOrg. All rights reserved.
//

#import "RadiusTableViewCell.h"

@implementation RadiusTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)sliderValueChanged:(id)sender {
    _radiusValue.text = [NSString stringWithFormat:@"%.f",self.radiusSlider.value*5000*0.9+500];
}

@end
