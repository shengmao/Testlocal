//
//  TEDirectoryWatcher.h
//  AlHami@Mobile
//
//  Created by Sandra Möller on 21.06.12.
//  Copyright (c) 2012 Techedge. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TEDirectoryWatcher;

@protocol TEDirectoryWatcherDelegate <NSObject>
@required
- (void)directoryDidChange:(TEDirectoryWatcher *)folderWatcher;
@end

@interface TEDirectoryWatcher : NSObject
{
    id <TEDirectoryWatcherDelegate> delegate;
    
    int dirFD;
    int kq;
    
    CFFileDescriptorRef dirKQRef;
}

@property (nonatomic) id <TEDirectoryWatcherDelegate> delegate;

+ (TEDirectoryWatcher *)watchFolderWithPath:(NSString *)watchPath delegate:(id<TEDirectoryWatcherDelegate>)watchDelegate;
                                                                                                
-(void)invalidate;
@end
