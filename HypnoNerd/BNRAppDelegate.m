//
//  BNRAppDelegate.m
//  HypnoNerd
//
//  Created by 朱正晶 on 15-2-28.
//  Copyright (c) 2015年 China. All rights reserved.
//

#import "BNRAppDelegate.h"
#import "BNRHypnosisViewController.h"
#import "BNRReminderViewController.h"
#import "BNRQuizViewController.h"


@implementation BNRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // hvc初始化：使用代码构建
    BNRHypnosisViewController *hvc = [[BNRHypnosisViewController alloc] init];

    // rvc初始化：从xib文件中加载
    // 使用init方法自动匹配xib名称
    //NSBundle *appBundle = [NSBundle mainBundle];
    //BNRReminderViewController *rvc = [[BNRReminderViewController alloc] initWithNibName:@"BNRReminderViewController" bundle:appBundle];
    BNRReminderViewController *rvc = [[BNRReminderViewController alloc] init];
    
    // 练习题，将Quiz视图加进来
    BNRQuizViewController *qvc = [[BNRQuizViewController alloc] init];
    
    // 将hvc和rvc加入TabBar控制器中
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[hvc, rvc, qvc];
    
    self.window.rootViewController = tabBarController;

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
