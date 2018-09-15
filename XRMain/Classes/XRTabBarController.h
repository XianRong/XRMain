//
//  XRTabBarController.h
//  MainPJ
//
//  Created by 贤荣 on 2018/2/28.
//  Copyright © 2018年 xianrong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XRTabBarController : UITabBarController

/**
 获取单例对象
 
 @return TabBarController
 */
+ (instancetype)shareInstance;


/**
 添加子控制器的block
 
 @param addVCBlock 添加代码块
 
 @return TabBarController
 */
+ (instancetype)tabBarControllerWithAddChildVCsBlock: (void(^)(XRTabBarController *tabBarC))addVCBlock;


/**
 *  根据参数, 创建并添加对应的子控制器
 *
 *  @param vc                需要添加的控制器(会自动包装导航控制器)
 *  @param title             标题
 *  @param isRequired        是否需要包装导航栏
 *  @param normalImageName   一般图片名称
 *  @param selectedImageName 选中图片名称
 */
- (void)addChildVC: (UIViewController *)vc titleName:(NSString*)title normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController: (BOOL)isRequired;

@end
