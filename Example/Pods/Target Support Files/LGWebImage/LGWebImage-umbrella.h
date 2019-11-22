#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "LGWebImage.h"
#import "LGWebImageSetting.h"
#import "UIImage+LGRadius.h"
#import "UIImageView+LGWebCache.h"

FOUNDATION_EXPORT double LGWebImageVersionNumber;
FOUNDATION_EXPORT const unsigned char LGWebImageVersionString[];

