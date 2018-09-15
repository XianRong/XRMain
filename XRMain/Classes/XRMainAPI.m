//
//  XRMainAPI.m
//  MainPJ
//
//  Created by 贤荣 on 2018/2/28.
//  Copyright © 2018年 xianrong. All rights reserved.
//

#import "XRMainAPI.h"
#import "XRTabBar.h"
#import "XRTabBarController.h"
#import "XRNavBar.h"
#import "XRNavController.h"

@implementation XRMainAPI

+ (XRTabBarController *)rootTabBarCcontroller {
    return [XRTabBarController shareInstance];
}


+ (void)addChildVC: (UIViewController *)vc titleName:(NSString*)title normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController: (BOOL)isRequired {
    
    [[XRTabBarController shareInstance] addChildVC:vc titleName:title normalImageName:normalImageName selectedImageName:selectedImageName isRequiredNavController:isRequired];
    
}

/**
 设置全局导航栏颜色
 
 @param color 导航栏颜色
 */
+(void)setNavBarGlobalBarColor:(UIColor*)color{
    [XRNavBar setGlobalBarColor:color];
}

/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setNavBarGlobalBackGroundImage: (UIImage *)globalImg {
    [XRNavBar setGlobalBackGroundImage:globalImg];
}
/**
 *  设置全局导航栏标题颜色, 和文字大小
 *
 *  @param globalTextColor 全局导航栏标题颜色
 *  @param fontSize        全局导航栏文字大小
 */
+ (void)setNavBarGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize {
    
    [XRNavBar setGlobalTextColor:globalTextColor andFontSize:fontSize];
}

@end
