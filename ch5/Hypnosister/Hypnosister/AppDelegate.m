//
//  AppDelegate.m
//  Hypnosister
//
//  Created by 洪龙通 on 2016/9/27.
//  Copyright © 2016年 洪龙通. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisterView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIViewController *rootVC = [[UIViewController alloc] init];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.window.bounds];
    scrollView.backgroundColor = [UIColor whiteColor];
//    [self.window addSubview:scrollView];
    [rootVC.view addSubview:scrollView];

    CGRect bigRect = scrollView.bounds;
    BNRHypnosisterView *firstView = [[BNRHypnosisterView alloc] initWithFrame:bigRect];
    [scrollView addSubview:firstView];
    
    bigRect.origin.x = scrollView.bounds.size.width;

    BNRHypnosisterView *secondView = [[BNRHypnosisterView alloc] initWithFrame:bigRect];
    [scrollView addSubview:secondView];

    scrollView.contentSize = CGSizeMake(scrollView.bounds.size.width * 2, 0);
    scrollView.pagingEnabled = YES;
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
