//
//  ViewController.m
//  appearance用法
//
//  Created by 梁森 on 17/2/3.
//  Copyright © 2017年 Personal Project. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
//点击屏幕所有的Switch会变成红色
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    先将UIViewController上的view移除
    [self.view removeFromSuperview];
    //拿到全局属性appearance
    UISwitch *sw = [UISwitch appearance];
//    改变样式
    sw.onTintColor = [UIColor redColor];
    //重新布局view
    [[UIApplication sharedApplication].keyWindow addSubview:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
