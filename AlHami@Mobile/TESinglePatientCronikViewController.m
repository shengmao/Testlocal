//
//  TESinglePatientCronikViewController.m
//  AlHami@Mobile
//
//  Created by Sandra Möller on 20.06.12.
//  Copyright (c) 2012 Techedge. All rights reserved.
//

#import "TESinglePatientCronikViewController.h"

@interface TESinglePatientCronikViewController ()

@end

@implementation TESinglePatientCronikViewController
@synthesize pic1;

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
	// Do any additional setup after loading the view.
    pic1.image = [UIImage imageNamed:@"chronik.png"];
}

- (void)viewDidUnload
{
    [self setPic1:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
