//
//  ComposeCommentViewTests.m
//  Blocstagram
//
//  Created by Reece Webb on 4/23/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ComposeCommentView.h"

@interface ComposeCommentViewTests : XCTestCase

@end

@implementation ComposeCommentViewTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testForWritingYESifThereIsText {
    
    ComposeCommentView *view = [[ComposeCommentView alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    view.text = @"There is text";
    
    XCTAssertTrue(view.isWritingComment, @"There is text");
}

- (void) testForWritingNOifThereIsNoText {
    
    ComposeCommentView *view = [[ComposeCommentView alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    view.text = @"";
    
    XCTAssertTrue(!view.isWritingComment, @"There isn't any text");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
