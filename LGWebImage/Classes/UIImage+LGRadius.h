//
//  UIImage+LGRadius.h
//  DDWebImage
//
//  Created by lizhixing on 2019/11/1.
//  Copyright © 2019 lizhixing. All rights reserved.
//



#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (LGRadius)
+ (id)createRoundedRectImage:(UIImage*)image size:(CGSize)size radius:(NSInteger)r;
- (UIImage *)lg_makeRadius:(CGFloat)radius;
@end

NS_ASSUME_NONNULL_END
