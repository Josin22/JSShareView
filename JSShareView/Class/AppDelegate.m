//
//  AppDelegate.m
//  JSShareView
//
//  Created by 乔同新 on 16/6/5.
//  Copyright © 2016年 乔同新. All rights reserved.
//

#import "AppDelegate.h"
#import "JSShareViewController.h"
#import "JSRegisterManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    JSShareViewController *shareVC = [[JSShareViewController alloc] init];
    UINavigationController *nav    = [[UINavigationController alloc] initWithRootViewController:shareVC];
    self.window.rootViewController = nav;
    
    JSRegisterManager *registerManager = [[JSRegisterManager alloc] init];
    [registerManager finishLaunchOption:launchOptions];
    
    return YES;
}



@end
