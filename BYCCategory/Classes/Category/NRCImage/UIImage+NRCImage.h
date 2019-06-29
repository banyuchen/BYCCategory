//
//  UIImage+NRCImage.h
//  NewRetailCliend
//
//  Created by wenzheng on 2019/4/27.
//  Copyright © 2019 wenzheng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (NRCImage)

/**
 加载一个不要被渲染图片

 @param name 图片名
 @return 返回一个不被渲染的图片
 */
+ (UIImage *)imageNameWithOriginal:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
