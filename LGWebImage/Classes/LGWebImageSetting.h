//
//  LGWebImageSetting.h
//  DDWebImage
//
//  Created by lizhixing on 2019/11/22.
//  Copyright © 2019 lizhixing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDWebImageManager.h"

NS_ASSUME_NONNULL_BEGIN

typedef UIImage *_Nonnull(^LGWebImageMakeBlock)(UIImage *_Nonnull);

@interface LGWebImageSetting : NSObject
@property(nonatomic, copy) NSString *url; //!< 图片url
@property(nonatomic, copy) NSString *cacheKey; //!< 缓存的key
@property(nonatomic, strong) UIImage *placeHolderImage; //!< 占位图
@property(nonatomic, assign) CGFloat cornerRadius; //!< 图片圆角
@property(nonatomic, strong) UIColor *borderColor; //!< 边框颜色
@property(nonatomic, strong) UIColor *borderWidth; //!< 边框宽度
@property(nonatomic, copy) LGWebImageMakeBlock imageMakeBlock; //!< 自定义处理图片block

//MARK: - sd相关属性
@property(nonatomic, assign) SDWebImageOptions sdWebImageOptions; //!<
@property(nonatomic, strong, nullable) SDWebImageContext *sdWebImageContext; //!<
@property(nonatomic, copy, nullable) SDImageLoaderProgressBlock sdImageLoaderProgressBlock; //!<
@property(nonatomic, copy, nullable) SDExternalCompletionBlock sdImageLoaderCompletedBlock; //!<

//MARK: - 默认配置
+ (instancetype)defaultSetting;

@end

NS_ASSUME_NONNULL_END
