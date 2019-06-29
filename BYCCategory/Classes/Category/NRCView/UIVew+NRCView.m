//
//  UIVew+NRCView.m
//  NewRetailCliend
//
//  Created by wenzheng on 2019/4/27.
//  Copyright © 2019 wenzheng. All rights reserved.
//

#import "UIVew+NRCView.h"
#import <objc/runtime.h>

@implementation UIView (NRCView)

//通过响应者链条获取view所在的控制器
- (UIViewController *)parentController
{
    UIResponder *responder = [self nextResponder];
    while (responder) {
        if ([responder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)responder;
        }
        responder = [responder nextResponder];
    }
    return nil;
}

+ (instancetype)wz_viewWithBackgroundColor:(UIColor *)backgroundColor superView:(UIView *)superView
{
    UIView *view = [[UIView alloc] init];
    [superView addSubview:view];
    view.backgroundColor = backgroundColor;
    return view;
}
/**
 *  设置部分圆角(绝对布局)
 *
 *  @param corners 需要设置为圆角的角 UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight | UIRectCornerAllCorners
 *  @param radii   需要设置的圆角大小 例如 CGSizeMake(20.0f, 20.0f)
 */
- (void)addRoundedCorners:(UIRectCorner)corners
                withRadii:(CGSize)radii {
	
    UIBezierPath* rounded = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:radii];
    CAShapeLayer* shape = [[CAShapeLayer alloc] init];
    [shape setPath:rounded.CGPath];
	
    self.layer.mask = shape;
}

/**
 *  设置部分圆角(相对布局)
 *
 *  @param corners 需要设置为圆角的角 UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight | UIRectCornerAllCorners
 *  @param radii   需要设置的圆角大小 例如 CGSizeMake(20.0f, 20.0f)
 *  @param rect    需要设置的圆角view的rect
 */
- (void)addRoundedCorners:(UIRectCorner)corners
                withRadii:(CGSize)radii
                 viewRect:(CGRect)rect {
	
    UIBezierPath* rounded = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:radii];
    CAShapeLayer* shape = [[CAShapeLayer alloc] init];
    [shape setPath:rounded.CGPath];
	
    self.layer.mask = shape;
}


+ (Class)layerClass {
	return [CAGradientLayer class];
}

+ (UIView *)az_gradientViewWithColors:(NSArray<UIColor *> *)colors locations:(NSArray<NSNumber *> *)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint {
	UIView *view = [[self alloc] init];
	[view az_setGradientBackgroundWithColors:colors locations:locations startPoint:startPoint endPoint:endPoint];
	return view;
}

- (void)az_setGradientBackgroundWithColors:(NSArray<UIColor *> *)colors locations:(NSArray<NSNumber *> *)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint {
	NSMutableArray *colorsM = [NSMutableArray array];
	for (UIColor *color in colors) {
		[colorsM addObject:(__bridge id)color.CGColor];
	}
	self.az_colors = [colorsM copy];
	self.az_locations = locations;
	self.az_startPoint = startPoint;
	self.az_endPoint = endPoint;
}

#pragma mark- Getter&Setter

- (NSArray *)az_colors {
	return objc_getAssociatedObject(self, _cmd);
}

- (void)setAz_colors:(NSArray *)colors {
	objc_setAssociatedObject(self, @selector(az_colors), colors, OBJC_ASSOCIATION_COPY_NONATOMIC);
	if ([self.layer isKindOfClass:[CAGradientLayer class]]) {
		[((CAGradientLayer *)self.layer) setColors:self.az_colors];
	}
}

- (NSArray<NSNumber *> *)az_locations {
	return objc_getAssociatedObject(self, _cmd);
}

- (void)setAz_locations:(NSArray<NSNumber *> *)locations {
	objc_setAssociatedObject(self, @selector(az_locations), locations, OBJC_ASSOCIATION_COPY_NONATOMIC);
	if ([self.layer isKindOfClass:[CAGradientLayer class]]) {
		[((CAGradientLayer *)self.layer) setLocations:self.az_locations];
	}
}

- (CGPoint)az_startPoint {
	return [objc_getAssociatedObject(self, _cmd) CGPointValue];
}

- (void)setAz_startPoint:(CGPoint)startPoint {
	objc_setAssociatedObject(self, @selector(az_startPoint), [NSValue valueWithCGPoint:startPoint], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
	if ([self.layer isKindOfClass:[CAGradientLayer class]]) {
		[((CAGradientLayer *)self.layer) setStartPoint:self.az_startPoint];
	}
}

- (CGPoint)az_endPoint {
	return [objc_getAssociatedObject(self, _cmd) CGPointValue];
}

- (void)setAz_endPoint:(CGPoint)endPoint {
	objc_setAssociatedObject(self, @selector(az_endPoint), [NSValue valueWithCGPoint:endPoint], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
	if ([self.layer isKindOfClass:[CAGradientLayer class]]) {
		[((CAGradientLayer *)self.layer) setEndPoint:self.az_endPoint];
	}
}


@end

@implementation UILabel (AZGradient)

+ (Class)layerClass {
	return [CAGradientLayer class];
}

@end

