//
//  XRNavBar.h
//  MainPJ
//
//  Created by 贤荣 on 2018/2/28.
//  Copyright © 2018年 xianrong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XRNavBar : UINavigationBar

/**
 设置全局导航栏颜色
 
 @param color 导航栏颜色
 */
+(void)setGlobalBarColor:(UIColor*)color;

/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setGlobalBackGroundImage: (UIImage *)globalImg;
/**
 *  设置全局导航栏标题颜色, 和文字大小
 *
 *  @param globalTextColor 全局导航栏标题颜色
 *  @param fontSize        全局导航栏文字大小
 */
+ (void)setGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize;

@end
