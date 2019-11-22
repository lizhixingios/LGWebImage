//
//  UIImageView+LGWebCache.m
//  DDWebImage
//
//  Created by lizhixing on 2019/11/1.
//  Copyright © 2019 lizhixing. All rights reserved.
//

#import "UIImageView+LGWebCache.h"
#import "UIImageView+WebCache.h"
#import "SDImageCache.h"
#import "UIImage+LGRadius.h"

@implementation UIImageView (LGWebCache)

- (void)lg_setImage:(LGWebImageSettingBlock)block {
    
    LGWebImageSetting *setting = [LGWebImageSetting defaultSetting];
    block(setting);
    
    NSString *url = setting.url;
    CGFloat radius = setting.cornerRadius;
    LGWebImageMakeBlock diyBlock = setting.imageMakeBlock;
    UIImage *placeholder = setting.placeHolderImage;
    SDWebImageOptions options = setting.sdWebImageOptions;
    SDWebImageContext *context = setting.sdWebImageContext;
    SDImageLoaderProgressBlock progress = setting.sdImageLoaderProgressBlock;
    SDExternalCompletionBlock completed = setting.sdImageLoaderCompletedBlock;
    
    if (diyBlock || radius > 0) {
        // 有缓存直接返回
        NSString *cacheKey = setting.cacheKey;
        UIImage *cacheImage = [[SDImageCache sharedImageCache] imageFromCacheForKey:cacheKey];
        if (cacheImage) {
            self.image = cacheImage;
            return;
            
        }
        [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            if (!error) {
                UIImage *cacheImage = [[SDImageCache sharedImageCache] imageFromCacheForKey:setting.cacheKey];
                if (cacheImage) {
                    self.image = cacheImage;
                }else {
                    UIImage *radiusImage;
                    if (diyBlock) {
                        // 业务自己处理
                        radiusImage = diyBlock(image);
                    }else {
                        // 加圆角
                        radiusImage = [image lg_makeRadius:radius];
                    }
                    self.image = radiusImage;
                    [[SDImageCache sharedImageCache] storeImage:radiusImage forKey:setting.cacheKey completion:nil];
                }
                
            }
        }];
        
        return;
    }
    
    // sd默认实现
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder options:options context:context progress:progress completed:completed];
    
}

@end
