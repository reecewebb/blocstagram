//
//  DataSource.h
//  Blocstagram
//
//  Created by Reece Webb on 2/28/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Media;

typedef void (^NewItemCompletionBlock)(NSError *error);

@interface DataSource : NSObject

extern NSString *const ImageFinishedNotification;

+ (instancetype) sharedInstance;
+ (NSString *) instagramClientID;

@property (nonatomic, strong, readonly) NSArray *mediaItems;
@property (nonatomic, strong, readonly) NSString *accessToken;

- (void) deleteMediaItem:(Media *)item;
- (void) downloadImageForMediaItem:(Media *)mediaItem;
- (void) requestNewItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;
- (void) requestOldItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;
- (void) populateDataWithParameters:(NSDictionary *)parameters completionHandler:(NewItemCompletionBlock)completionHandler;
- (void) toggleLikeOnMediaItem:(Media *)mediaItem;
- (void) commentOnMediaItem:(Media *)mediaItem withCommentText:(NSString *)commentText;

@end
