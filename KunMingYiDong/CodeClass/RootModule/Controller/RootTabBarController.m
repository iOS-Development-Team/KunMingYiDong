//
//  RootTabBarController.m
//  KunMingYiDong
//
//  Created by YongQiang Wei on 2020/8/14.
//  Copyright © 2020 YongQiang Wei. All rights reserved.
//

#import "RootTabBarController.h"

@interface RootTabBarController ()

@property (nonatomic, strong) RootNavigtionController *WorkbenchNaVC;

@property (nonatomic, strong) RootNavigtionController *EarlyWarningNaVC;

@property (nonatomic, strong) RootNavigtionController *MineModuleNaVC;

@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initChildController];
}

- (void) initChildController{
    _WorkbenchNaVC = [[RootNavigtionController alloc] initWithRootViewController:[[KMWorkbenchModuleController alloc] init]];
    _WorkbenchNaVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"工作台" image:[[UIImage imageNamed:@""] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)] selectedImage:[[UIImage imageNamed:@""] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)]];
    
    _EarlyWarningNaVC = [[RootNavigtionController alloc] initWithRootViewController:[[KMEarlyWarningController alloc] init]];
    _EarlyWarningNaVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"预警" image:[[UIImage imageNamed:@""] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)] selectedImage:[[UIImage imageNamed:@""] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)]];
    
    _MineModuleNaVC = [[RootNavigtionController alloc] initWithRootViewController:[[KMMineModuleController alloc] init]];
    _MineModuleNaVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[[UIImage imageNamed:@""] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)] selectedImage:[[UIImage imageNamed:@""] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)]];
    [self tabbarItemStyle:_WorkbenchNaVC.tabBarItem];
    [self tabbarItemStyle:_EarlyWarningNaVC.tabBarItem];
    [self tabbarItemStyle:_MineModuleNaVC.tabBarItem];
    self.viewControllers = @[_WorkbenchNaVC,_EarlyWarningNaVC,_MineModuleNaVC];
}

- (void) tabbarItemStyle:(UITabBarItem *) tabBarItem{
    NSDictionary *attributesNormal = @{
                                 NSFontAttributeName:[UIFont systemFontOfSize:13],
                                 NSForegroundColorAttributeName:[UIColor grayColor],
                                 };
    [tabBarItem setTitleTextAttributes:attributesNormal forState:UIControlStateNormal];
    
    NSDictionary *attributesSelect = @{
                                NSFontAttributeName:[UIFont systemFontOfSize:13],
                                NSForegroundColorAttributeName:[UIColor blueColor],
    };
    [tabBarItem setTitleTextAttributes:attributesSelect forState:UIControlStateSelected];
}

@end
