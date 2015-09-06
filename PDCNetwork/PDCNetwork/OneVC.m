//
//  OneVC.m
//  PDCNetwork
//
//  Created by portgasdcrow on 15/9/6.
//  Copyright (c) 2015年 PDC. All rights reserved.
//

#import "OneVC.h"

#import "TwoVC.h"

@implementation OneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.title = @"OneVC";

    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(40, k_ScreenH/2 - 20, k_ScreenW - 80, 40)];
    btn.backgroundColor = k_Color_BtnBG;
    [btn setTitle:@"NextToEnd" forState:UIControlStateNormal];
    [btn setTitleColor:k_Color_BtnText forState:UIControlStateNormal];
    [btn setTitleColor:k_Color_BtnTextH forState:UIControlStateHighlighted];

    [btn drawBorder:btn type:V_PDCBASIC_Border_Round lineColor:[UIColor clearColor]];
    [btn drawShadow:btn color:[UIColor greenColor]];

    [btn addTarget:self action:@selector(nextPress) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:btn];
}

- (void)nextPress{
    TwoVC *vc = [[TwoVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
