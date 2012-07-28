//
//  TESingleDocumentTableViewController.h
//  AlHami@Mobile
//
//  Created by Sandra Möller on 21.06.12.
//  Copyright (c) 2012 Techedge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TESingleDocumentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *documentlist;
@property (weak, nonatomic) IBOutlet UIWebView *documentview;

@end
