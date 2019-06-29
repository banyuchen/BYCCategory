//
//  UIImage+NRCImage.m
//  NewRetailCliend
//
//  Created by wenzheng on 2019/4/27.
//  Copyright © 2019 wenzheng. All rights reserved.
//

#import "UIImage+NRCImage.h"

@implementation UIImage (NRCImage)

+ (UIImage *)imageNameWithOriginal:(NSString *)name{
	
    UIImage *originalImage = [UIImage imageNamed:name];
    originalImage = [originalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return originalImage;
}

@end
