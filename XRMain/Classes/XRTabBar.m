//
//  XRTabBar.m
//  MainPJ
//
//  Created by 贤荣 on 2018/2/28.
//  Copyright © 2018年 xianrong. All rights reserved.
//

#import "XRTabBar.h"

#define kScreenW [UIScreen mainScreen].bounds.size.width
#define kScreenH [UIScreen mainScreen].bounds.size.height

@implementation XRTabBar

-(instancetype)initWithFrame:(CGRect)frame {
    if(self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (void)setup {
    
    // 设置样式, 去除tabbar上面的黑线
//    self.barStyle = UIBarStyleBlack;
    
    self.translucent = NO;
    
    self.backgroundColor = [UIColor whiteColor];
    
//    // 设置tabbar 背景图片
//    NSBundle *currentBundle = [NSBundle bundleForClass:[self class]];
//    NSString *bundleName = [currentBundle.infoDictionary[@"CFBundleName"] stringByAppendingString:@".bundle"];
//    NSString *path = [currentBundle pathForResource:@"tabbar_bg@3x.png" ofType:nil inDirectory:bundleName];
//    UIImage *image = [UIImage imageWithContentsOfFile:path];
//    self.backgroundImage = image;
    
}




@end
