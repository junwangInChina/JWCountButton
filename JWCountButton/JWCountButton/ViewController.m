//
//  ViewController.m
//  JWCountButton
//
//  Created by wangjun on 2017/9/22.
//  Copyright © 2017年 wangjun. All rights reserved.
//

#import "ViewController.h"

#import "JWCountButton.h"

#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self example1];
    
    [self example2];

    [self example3];

    [self example4];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)example1
{
    JWCountButton *tempButton = [[JWCountButton alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    tempButton.shakeAnimation = YES;
    tempButton.maxValue = 10;
    tempButton.minValue = 1;
    tempButton.increaseImage = [UIImage imageNamed:@"coupon_increase"];
    tempButton.decreaseImage = [UIImage imageNamed:@"coupon_decrease"];
    [self.view addSubview:tempButton];
    
    tempButton.valueChanged = ^(NSInteger number, BOOL isIncrease) {
        NSLog(@"%@ value=%ld",isIncrease?@"加":@"减",number);
    };
}

- (void)example2
{
    JWCountButton *tempButton = [[JWCountButton alloc] initWithFrame:CGRectMake(100, 200, 100, 30)];
    tempButton.decreaseHide = YES;
    tempButton.maxValue = 10;
//    tempButton.minValue = 2;
    tempButton.increaseImage = [UIImage imageNamed:@"increase_eleme"];
    tempButton.decreaseImage = [UIImage imageNamed:@"decrease_eleme"];
    [self.view addSubview:tempButton];
    
    tempButton.valueChanged = ^(NSInteger number, BOOL isIncrease) {
        NSLog(@"%@ value=%ld",isIncrease?@"加":@"减",number);
    };
}

- (void)example3
{
    JWCountButton *tempButton = [[JWCountButton alloc] initWithFrame:CGRectMake(100, 300, 100, 30)];
    tempButton.shakeAnimation = YES;
    tempButton.maxValue = 10;
    tempButton.minValue = 2;
    [self.view addSubview:tempButton];
    
    tempButton.valueChanged = ^(NSInteger number, BOOL isIncrease) {
        NSLog(@"%@ value=%ld",isIncrease?@"加":@"减",number);
    };
}

- (void)example4
{
    JWCountButton *tempButton = [[JWCountButton alloc] init];
    tempButton.shakeAnimation = YES;
    tempButton.maxValue = 10;
    tempButton.minValue = 2;
    tempButton.longPressSpaceTime = 0.1;
    [self.view addSubview:tempButton];
    
    tempButton.valueChanged = ^(NSInteger number, BOOL isIncrease) {
        NSLog(@"%@ value=%ld",isIncrease?@"加":@"减",number);
    };
    
    [tempButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).with.offset(64);
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(150, 44));
    }];
}

@end
