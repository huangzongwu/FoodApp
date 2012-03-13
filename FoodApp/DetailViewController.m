//
//  DetailViewController.m
//  FoodApp
//
//  Created by Labuser on 3/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController
@synthesize NavigateButton;
@synthesize TitleBar;
@synthesize RestaurantName;
@synthesize OpenHours;
@synthesize foodListTable;
@synthesize restaurantData;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initializationß
    }
    [foodListTable setDelegate:self];
    [foodListTable setDataSource:self];
    return self;
}

-(void) viewWillAppear:(BOOL)animated{
    //view appears
    NSLog(@"Detailview will appera");
    RestaurantName.text = [restaurantData objectForKey:@"name"];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DetailCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = @"Nomnomnom";
    
    // Configure the cell...
    
    return cell;
}


- (void)viewDidUnload {
    [self setRestaurantName:nil];
    [self setOpenHours:nil];
    [self setFoodListTable:nil];
    [self setNavigateButton:nil];
    [self setTitleBar:nil];
    [super viewDidUnload];
}
@end
