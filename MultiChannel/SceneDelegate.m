//
//  SceneDelegate.m
//  multichannel
//
//  Created by admin on 2021/3/8.
//

#import "SceneDelegate.h"
#import "ViewController.h"
#import "EnvSwitchController.h"
#ifdef DEBUG
#import <DoraemonKit/DoraemonManager.h>
#endif


@interface SceneDelegate ()

@end

@implementation SceneDelegate

//配置Doraemon工具集
- (void)configDoraemonKit{
    [[DoraemonManager shareInstance] addPluginWithTitle:@"环境切换" icon:@"doraemon_default" desc:@"用于app内部环境切换功能" pluginName:@"KDDoraemonEnvPlugin" atModule:@"业务专区" handle:^(NSDictionary * _Nonnull itemData) {
        [[DoraemonManager shareInstance] hiddenHomeWindow];
        EnvSwitchController *controller = [[EnvSwitchController alloc] init];
        [self.window.rootViewController presentViewController:controller animated:YES completion:nil];
    }];
    [[DoraemonManager shareInstance] addH5DoorBlock:^(NSString *h5Url) {
//        [APP_INTERACOTR.rootNav openURL:@"KDSJ://KDWebViewController" withQuery:@{@"urlString":h5Url}];
    }];
    [[DoraemonManager shareInstance] install];
}

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    if (scene) {
        UIWindowScene *windowScene = (UIWindowScene *)scene;
        
        self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
        self.window.frame = [[UIScreen mainScreen] bounds];
        self.window.backgroundColor = [UIColor whiteColor];
        self.window.rootViewController = [[ViewController alloc] init];
        [self.window makeKeyAndVisible];
        
        #ifdef DEBUG
        [self configDoraemonKit];
        #endif
    }
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
