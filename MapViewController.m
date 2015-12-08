///Users/KRASH/Desktop/Surroundings/SettingsTableViewCell.h
//  MapViewController.m
//  Surroundings
//
//  Created by Лисовой Данил on 09.10.14.
//  Copyright (c) 2014 DanielOrg. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()
@property (weak, nonatomic) IBOutlet UILabel *placeIsOpen;
@property (weak, nonatomic) IBOutlet UITextView *placeAdress;
@property (weak, nonatomic) IBOutlet UITextView *placeName;
@property (weak, nonatomic) IBOutlet UILabel *distance;

@end

@implementation MapViewController

@synthesize place, curr;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Info";
    self.map.showsUserLocation=YES;
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance (place.coords, 5000, 5000);
    [_map setRegion:region animated:YES];
    
    
    MKPointAnnotation *myPersonalAnnotation= [[MKPointAnnotation alloc]init];
    myPersonalAnnotation.title = place.name;
    myPersonalAnnotation.coordinate=place.coords;
    MKPinAnnotationView *myPersonalView=[[MKPinAnnotationView alloc] initWithAnnotation:myPersonalAnnotation reuseIdentifier:@"hello"];
    myPersonalView.pinColor=MKPinAnnotationColorPurple;
    [self.map addAnnotation:myPersonalAnnotation];
    
    CLLocationCoordinate2D location = [self.curr coordinate];
    
    double a = 2*3.141592653589793*6371000*(place.coords.latitude-location.latitude)/360;
    double b = 2*3.141592653589793*6371000*(place.coords.longitude-location.longitude)/360;
    double c = pow(a*a+b*b,0.5);
    
    _distance.text = [NSString stringWithFormat:@"%.fm from you",c];
    _placeName.text = place.name;
    _placeAdress.text = place.adress;
    _placeIsOpen.text = place.isOpen ? @"Open!" : @"It can be closed!";
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidDisappear:(BOOL)animated{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
