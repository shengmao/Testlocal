//
//  Hello_WorldViewController.m
//  Hello World
//
//  Created by LISComputer on 15.05.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Hello_WorldViewController.h"

@interface Hello_WorldViewController ()

@end

@implementation Hello_WorldViewController

@synthesize label;
@synthesize textField;
@synthesize userName = _userName;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = textField.text;
    
    NSString *nameString = self.userName;
    if([nameString length] ==0){
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
}
- (BOOL)textFieldShouldReturn:(UITextField *)thetextField {
    if (thetextField == textField){
        [thetextField resignFirstResponder];
    }
    return YES;
}
@end
