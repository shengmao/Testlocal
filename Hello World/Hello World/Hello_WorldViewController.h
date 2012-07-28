//
//  Hello_WorldViewController.h
//  Hello World
//
//  Created by LISComputer on 15.05.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Hello_WorldViewController : UIViewController <UITextFieldDelegate>


- (IBAction)changeGreeting:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (copy, nonatomic) NSString *userName;

@end
