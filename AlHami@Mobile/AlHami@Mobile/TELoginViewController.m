//
//  TELoginViewController.m
//  AlHami@Mobile
//
//  Created by Sandra Möller on 15.06.12.
//  Copyright (c) 2012 Techedge. All rights reserved.
//

#import "TELoginViewController.h"

@interface TELoginViewController ()

@end

@implementation TELoginViewController
@synthesize companyLogo;
@synthesize customerLogo;
@synthesize passwortTextfield;
@synthesize usernameTextfield;

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
    customerLogo.image = [UIImage imageNamed:@"neurospinecenter_logo.jpg"];
    companyLogo.image = [UIImage imageNamed:@"techedge_leverage_logo.jpg"];
}

- (void)viewDidUnload
{
    [self setUsernameTextfield:nil];
    [self setPasswortTextfield:nil];
    [self setCustomerLogo:nil];
    [self setCompanyLogo:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	if(interfaceOrientation == UIInterfaceOrientationPortrait){
        return NO;
    }
    if(interfaceOrientation == UIInterfaceOrientationLandscapeLeft){
    return YES;
    }
    else 
    {
        return NO;
    }
}
    

- (IBAction)establishConnection:(id)sender {
    //check logindata and grants access to further views
    [self performSegueWithIdentifier:@"loginSuccessful" sender:self];
}
@end
