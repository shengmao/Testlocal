//
//  TESinglePatientDocumentsViewController.h
//  AlHami@Mobile
//
//  Created by Sandra Möller on 21.06.12.
//  Copyright (c) 2012 Techedge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuickLook/QuickLook.h>

#import "TEDirectoryWatcher.h"

@interface TESinglePatientDocumentsViewController : UITableViewController <QLPreviewControllerDataSource, QLPreviewControllerDelegate, TEDirectoryWatcherDelegate, UIDocumentInteractionControllerDelegate>
{
    TEDirectoryWatcher *docWatcher;
    NSMutableArray *documentURLs;
    UIDocumentInteractionController *docInteractionController;
}

@property (nonatomic, retain) TEDirectoryWatcher *docWatcher;
@property (nonatomic, retain) NSMutableArray *documentURLs;
@property (nonatomic, retain) UIDocumentInteractionController *docInteractionController;

@end
