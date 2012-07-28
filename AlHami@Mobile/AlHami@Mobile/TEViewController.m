//
//  TEViewController.m
//  AlHami@Mobile
//
//  Created by Sandra Möller on 15.06.12.
//  Copyright (c) 2012 Techedge. All rights reserved.
//

#import "TEViewController.h"

@interface TEViewController ()
@property NSMutableArray *patientListArray;

@end

@implementation TEViewController
@synthesize patientList;
@synthesize patientListArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //set up the array for Tableview patientList
    patientListArray = [[NSMutableArray alloc] init];
    NSArray *sectionOneArray = [NSArray arrayWithObjects:@"Bernd Hauser", @"Gustav Müller", nil];
    NSDictionary *sectionOneDict = [NSDictionary dictionaryWithObject:sectionOneArray forKey:@"Table"];
    
    NSArray *sectionTwoArray = [NSArray arrayWithObjects:@"Heike Godde", @"Manuel Herl", nil];
    NSDictionary *sectionTwoDict = [NSDictionary dictionaryWithObject:sectionTwoArray forKey:@"Table"];
    
    [patientListArray addObject:sectionOneDict];
    [patientListArray addObject:sectionTwoDict];
    self.navigationItem.title = @"Table";
}


- (void)viewDidUnload
{
    [self setPatientList:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark patientList - TableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return [patientListArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    NSDictionary *dictionary = [patientListArray objectAtIndex:section];
    NSArray *array = [dictionary objectForKey:@"Table"];
    return [array count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"Neurospine Center";
    }
    else {
        return @"Eichhoffklinik";
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PatientCell"];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier:@"PatientCell"];
    }
    
    NSDictionary *dictionary = [patientListArray objectAtIndex:indexPath.section];
    NSArray *array = [dictionary objectForKey:@"Table"];
    NSString *cellValue = [array objectAtIndex:indexPath.row];
    //setup custom tableviewcell, identifies the labels with tag numbers that can be set in IB inspector -> second possibility is to create a new TableViewCell Class
    UILabel *patientnameTextfield = (UILabel *)[cell viewWithTag:100];
    patientnameTextfield.text = cellValue;
    
    UILabel *patientsurnameTextfield = (UILabel *) [cell viewWithTag:101];
    patientsurnameTextfield.text = @"usname";
    
    UIImageView *patientpicture = (UIImageView *) [cell viewWithTag:102];
    patientpicture.image = [UIImage imageNamed:@"patientpicture.png"];
    //subtitle style
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //read the current selection in tableview and perform the next segue
    NSDictionary *secdictionary = [self.patientListArray objectAtIndex:indexPath.section];
    NSArray *secarray = [secdictionary objectForKey:@"Table"];
    NSString *object = [secarray objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"PatientDetailSegue" sender:self];
}
@end
