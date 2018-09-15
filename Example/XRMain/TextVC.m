//
//  TextVC.m
//  ProjectMain_Example
//
//  Created by 贤荣 on 2018/2/28.
//  Copyright © 2018年 yhtyhrt6@qq.com. All rights reserved.
//

#import "TextVC.h"
#import "SecondVC.h"

@interface TextVC ()

@end

@implementation TextVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int R = arc4random() % 256;
    int G = arc4random() % 256;
    int B = arc4random() % 256;
    self.view.backgroundColor = [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.navigationController pushViewController:[SecondVC new] animated:YES];
}



@end
