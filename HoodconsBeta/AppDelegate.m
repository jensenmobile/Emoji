//
//  AppDelegate.m
//  FaceBoardDome
//
//  Created by blue on 12-12-20.
//  Copyright (c) 2012年 Blue. All rights reserved.
//  Email - 360511404@qq.com
//  http://github.com/bluemood
//

#import "AppConstant.h"
#import "utilities.h"

#import "AppDelegate.h"

#import "ViewController.h"
#import "HomeController.h"
#import "ChatViewController.h"
#import "THContact.h"

@implementation AppDelegate


@synthesize myPhoneNum;
@synthesize myInstallID;
@synthesize currRoomID;
@synthesize numToContactsDict, contactNumKeys;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.homeController = [[HomeController alloc] initWithNibName:@"HomeController" bundle:nil];
    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self.chatViewController = [[ChatViewController alloc] initWithNibName:@"ChatViewController" bundle:nil];
    [self.chatViewController getContacts];
    self.byPhone = YES;
    
//    [[UIApplication sharedApplication] setApplicationIconBadgeNumber: 0];
//    [[UIApplication sharedApplication] cancelAllLocalNotifications];
//    
    [self showHome];
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



#pragma mark - AppDelegate

-(void)showHome
{
    self.window.rootViewController = self.homeController;
    [self.window makeKeyAndVisible];
}

-(void)showKeyBoard
{
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
}

-(void)showKeyBoard2
{
    self.window.rootViewController = self.chatViewController;
    [self.window makeKeyAndVisible];
}


@end

