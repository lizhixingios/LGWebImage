//
//  LGWebImageSetting.m
//  DDWebImage
//
//  Created by lizhixing on 2019/11/22.
//  Copyright © 2019 lizhixing. All rights reserved.
//

#import "LGWebImageSetting.h"

@implementation LGWebImageSetting

+ (instancetype)defaultSetting {
    LGWebImageSetting *setting = [LGWebImageSetting new];
    return setting;
}

- (NSString *)cacheKey {
    if (!_cacheKey) {
        if (_imageMakeBlock) {
            _cacheKey = [NSString stringWithFormat:@"%@_%@", _url, @"userDIY"];
        }else {
            _cacheKey = [NSString stringWithFormat:@"%@_cornerRadius=%f", _url, _cornerRadius];
        }
    }
    return _cacheKey;
}

@end
