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

#import "XRMainAPI.h"
#import "XRNavBar.h"
#import "XRNavController.h"
#import "XRTabBar.h"
#import "XRTabBarController.h"

FOUNDATION_EXPORT double XRMainVersionNumber;
FOUNDATION_EXPORT const unsigned char XRMainVersionString[];

