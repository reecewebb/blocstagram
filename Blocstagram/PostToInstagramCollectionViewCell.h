//
//  PostToInstagramCollectionViewCell.h
//  Blocstagram
//
//  Created by Reece Webb on 4/20/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostToInstagramCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, assign) CGFloat thumbnailSize;

@end
