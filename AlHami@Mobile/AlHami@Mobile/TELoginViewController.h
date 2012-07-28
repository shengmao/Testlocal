//
//  TELoginViewController.h
//  AlHami@Mobile
//
//  Created by Sandra Möller on 15.06.12.
//  Copyright (c) 2012 Techedge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TELoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *customerLogo;
@property (weak, nonatomic) IBOutlet UITextField *passwortTextfield;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextfield;
- (IBAction)establishConnection:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *companyLogo;

@end
