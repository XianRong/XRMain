//
//  XRMainAPI.h
//  MainPJ
//
//  Created by 贤荣 on 2018/2/28.
//  Copyright © 2018年 xianrong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XRMainAPI : NSObject

/**
 获取根控制器
 
 @return rootTabBarCcontroller
 */
+ (UITabBarController *)rootTabBarCcontroller;

/**
 *  添加子控制器
 *
 *  @param vc                需要添加的控制器(会自动包装导航控制器)
 *  @param title             标题
 *  @param isRequired        是否需要包装导航栏
 *  @param normalImageName   一般图片名称
 *  @param selectedImageName 选中图片名称
 */
+ (void)addChildVC: (UIViewController *)vc titleName:(NSString*)title normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController: (BOOL)isRequired;


/**
 设置全局导航栏颜色
 
 @param color 导航栏颜色
 */
+(void)setNavBarGlobalBarColor:(UIColor*)color;


/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setNavBarGlobalBackGroundImage: (UIImage *)globalImg;
/**
 *  设置全局导航栏标题颜色, 和文字大小
 *
 *  @param globalTextColor 全局导航栏标题颜色
 *  @param fontSize        全局导航栏文字大小
 */
+ (void)setNavBarGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize;


@end
