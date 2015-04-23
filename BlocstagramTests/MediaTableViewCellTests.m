//
//  MediaTableViewCellTests.m
//  Blocstagram
//
//  Created by Reece Webb on 4/23/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Media.h"
#import "MediaTableViewCell.h"

@interface MediaTableViewCellTests : XCTestCase

@end

@implementation MediaTableViewCellTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void) testThatMediaTableViewCellReturnsCorrectHeightForMediaItem {
    
    NSDictionary *sourceDictionary= @{@"id": @"12345",
                                      @"images" : @{@"standard_resolution" : @{@"url" : @"http://www.bloc.io"}},
                                      @"user_had_liked" : @YES,
                                      @"caption" : @{@"text" : @"Caption text"},
                                      @"user" : @{@"id" : @"12345",
                                                  @"username" : @"First",
                                                  @"full_name" : @"Last",
                                                  @"profile_picture" : @"@http://www.example.com/example.jpg"}
                                      };
    Media *mediaItem = [[Media alloc] initWithDictionary:sourceDictionary];
    
    mediaItem.image = [UIImage imageNamed:@"4.jpg"];
    CGFloat itemHeight = [MediaTableViewCell heightForMediaItem:mediaItem width:320];
    XCTAssertEqual(itemHeight, 398, @"Item height should be 398");
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
