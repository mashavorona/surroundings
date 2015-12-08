//
//  SettingsTableViewController.m
//  Surroundings
//
//  Created by Лисовой Данил on 27.10.14.
//  Copyright (c) 2014 DanielOrg. All rights reserved.
//
#import "ViewController.h"
#import "SettingsTableViewController.h"
#import "SettingsTableViewCell.h"
#import "RadiusTableViewCell.h"

@interface SettingsTableViewController ()
@property (strong, nonatomic) IBOutlet UITableView *table;

@end

@implementation SettingsTableViewController

@synthesize selectedPlaces;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (selectedPlaces==nil) {
        selectedPlaces = [[NSArray alloc] initWithObjects:@NO,@NO,@NO,@NO,@NO,@NO,@NO,@NO,@NO,@NO,@NO,@NO,@NO,@NO,@NO,@NO,@NO,@NO, nil];
    }
    
    _placesNames = @[@"Airport",
                     @"ATM",
                     @"Bar",
                     @"Bus station",
                     @"Cafe",
                     @"Car dealer",
                     @"Car repair",
                     @"Car wash",
                     @"Food",
                     @"Gas station",
                     @"Health",
                     @"Hospital",
                     @"Movie theater",
                     @"Park",
                     @"Restaurant",
                     @"Store",
                     @"Subway station",
                     @"University"];
    
    _placesImages = @[@"airport copy.png",
                      @"atm copy.png",
                      @"bar copy.png",
                      @"bus_station copy.png",
                      @"cafe copy.png",
                      @"car_dealer copy.png",
                      @"car_repair copy.png",
                      @"car_wash copy.png",
                      @"cafe copy.png",
                      @"gas copy.png",
                      @"health copy.png",
                      @"health copy.png",
                      @"movie copy.png",
                      @"park copy.png",
                      @"cafe copy.png",
                      @"shop copy.png",
                      @"subway copy.png",
                      @"university copy.png"];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setOn:(BOOL)on animated:(BOOL)animated{
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (section) {
        return _placesImages.count;
    }
    return 1;
    
}
- (IBAction)valueChanged:(id)sender {
    NSMutableArray *arr = [selectedPlaces mutableCopy];
    
    for (int i = 0; i<_placesNames.count; i++) {
        SettingsTableViewCell *cell = (SettingsTableViewCell *)[self.table cellForRowAtIndexPath:[NSIndexPath indexPathForRow:i inSection:1]];
        if ([cell.CheckSwich isEqual:sender]) {
            NSLog(@"%d",i);
            UISwitch *s = sender;
            arr[i] = (s.on==YES) ? @YES:@NO;
        }
    }
    
    selectedPlaces = [[NSArray alloc] initWithArray:arr];
}
- (IBAction)radiusValueChanged:(id)sender {
    UISlider *s =sender;
    self.firstViewController.slider = [NSString stringWithFormat:@"%f@",s.value];
    _slider = [NSString stringWithFormat:@"%f",s.value];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger indexArr[] = {0,0};
    if ([indexPath isEqual:[NSIndexPath indexPathWithIndexes:indexArr length:2]]) {
        static NSString *CellIdentifier = @"radius";
        RadiusTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        cell.radiusSlider.value = [_slider doubleValue];
        cell.radiusValue.text = [NSString stringWithFormat:@"%.f",[_slider doubleValue]*5000*0.9+500];
        return cell;
    } else {
        static NSString *CellIdentifier = @"objectsCell";
        SettingsTableViewCell *cell = [tableView
                              dequeueReusableCellWithIdentifier:CellIdentifier
                              forIndexPath:indexPath];
    
        // Configure the cell...
    
        long row = [indexPath row];
    
        cell.placeImage.image = [UIImage imageNamed:_placesImages[row]];
        cell.placeName.text = _placesNames[row];
        [cell.CheckSwich setOn:[self.selectedPlaces[row] boolValue] animated:YES];
    
        return cell;
    }
}

-(void)viewDidDisappear:(BOOL)animated{
    self.firstViewController.selectedPlaces = self.selectedPlaces;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
