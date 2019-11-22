//
//  UIImageView+DDWebCache.h
//  DDWebImage
//
//  Created by lizhixing on 2019/11/1.
//  Copyright © 2019 lizhixing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LGWebImageSetting.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^LGWebImageSettingBlock)(LGWebImageSetting *_Nonnull setting);

@interface UIImageView (LGWebCache)
- (void)lg_setImage:(LGWebImageSettingBlock)block;
@end

NS_ASSUME_NONNULL_END
