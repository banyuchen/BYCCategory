//
//  UIImageView+NRCImageView.m
//  NewRetailCliend
//
//  Created by wenzheng on 2019/4/28.
//  Copyright © 2019 wenzheng. All rights reserved.
//

#import "UIImageView+NRCImageView.h"

@implementation UIImageView (NRCImageView)
+ (instancetype)imageViewWithSuperView:(UIView *)superView;
{
	UIImageView *imageView = [[UIImageView alloc] init];
	imageView.contentMode = UIViewContentModeScaleAspectFill;
	imageView.clipsToBounds = YES;
	[superView addSubview:imageView];
	return imageView;
}
@end
