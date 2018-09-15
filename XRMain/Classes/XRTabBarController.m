//
//  XRTabBarController.m
//  MainPJ
//
//  Created by 贤荣 on 2018/2/28.
//  Copyright © 2018年 xianrong. All rights reserved.
//

#import "XRTabBarController.h"
#import "XRTabBar.h"
#import "XRNavController.h"

@interface XRTabBarController ()

@end

@implementation XRTabBarController

+ (instancetype)shareInstance {
    
    static XRTabBarController *tabbarC;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tabbarC = [[XRTabBarController alloc] init];
    });
    return tabbarC;
}

+ (instancetype)tabBarControllerWithAddChildVCsBlock: (void(^)(XRTabBarController *tabBarC))addVCBlock {
    
    XRTabBarController *tabbarVC = [[XRTabBarController alloc] init];
    if (addVCBlock) {
        addVCBlock(tabbarVC);
    }
    return tabbarVC;
}


-(void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置tabbar
    [self setUpTabbar];
    
}

- (void)setUpTabbar {
    [self setValue:[[XRTabBar alloc] init] forKey:@"tabBar"];
}

/**
 *  根据参数, 创建并添加对应的子控制器
 *
 *  @param vc                需要添加的控制器(会自动包装导航控制器)
 *  @param title             标题
 *  @param isRequired        是否需要包装导航栏
 *  @param normalImageName   一般图片名称
 *  @param selectedImageName 选中图片名称
 */
- (void)addChildVC: (UIViewController *)vc titleName:(NSString*)title normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController: (BOOL)isRequired {
    
    UIImage * normailImg = [[UIImage imageNamed:normalImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIImage * selectImg = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    vc.title = title;
    
    if (isRequired) {
        XRNavController *nav = [[XRNavController alloc] initWithRootViewController:vc];
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:normailImg selectedImage:selectImg];
        [self addChildViewController:nav];
    }else {
        vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:normailImg selectedImage:selectImg];
        [self addChildViewController:vc];
    }
}

@end
