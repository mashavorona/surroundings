//
//  PlaceButton.m
//  Surroundings
//
//  Created by Лисовой Данил on 09.10.14.
//  Copyright (c) 2014 DanielOrg. All rights reserved.
//

#import "PlaceButton.h"

@implementation PlaceButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initWithImage:(UIImage *)background{
    self = [super init];
    return self;
}

-(void)setPlace:(Place *)plc{
    self->_place = plc;
}

-(Place *)getPlace{
    return self.place;
}

-(double)getLatitude{
    return self.place.coords.latitude;
}

-(double)getLongitude{
    return self.place.coords.longitude;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    /*
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor *color = [UIColor colorWithRed:0.114 green:0.144 blue:1 alpha:1];
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, self.bounds);
*/
    self.layer.cornerRadius = 20; // this value vary as per your desire
    self.clipsToBounds = YES;
    
    CGRect f = self.frame;
    f.size.height = 40;
    f.size.width = 120;
    self.frame = f;
}



@end
