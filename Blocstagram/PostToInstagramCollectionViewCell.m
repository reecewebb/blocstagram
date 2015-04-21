//
//  PostToInstagramCollectionViewCell.m
//  Blocstagram
//
//  Created by Reece Webb on 4/20/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "PostToInstagramCollectionViewCell.h"

@implementation PostToInstagramCollectionViewCell

- (id) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.thumbnailSize, self.thumbnailSize)];
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    self.imageView.clipsToBounds = YES;
    
    [self.contentView addSubview:self.imageView];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, self.thumbnailSize, self.thumbnailSize, 20)];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:10];
    [self.contentView addSubview:self.label];
    
    return self;
    
}

- (void) setThumbnailSize:(CGFloat)thumbnailSize {
    
    self.imageView.frame = CGRectMake(0, 0, thumbnailSize, thumbnailSize);
    self.label.frame = CGRectMake(0, thumbnailSize, thumbnailSize, 20);
}

@end
