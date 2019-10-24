#import "FTMAppDelegate.h"

@implementation FTMAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
Class FTMRootListController;
    NSString *path = @"/Library/PreferenceBundles/filzatmprefs.bundle";
    NSBundle *bundleToLoad = [NSBundle bundleWithPath:path];
    if ((FTMRootListController = bundleToLoad.principalClass)) {
	_window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	_rootViewController = [[UINavigationController alloc] initWithRootViewController:[[FTMRootListController alloc] init]];
	_window.rootViewController = _rootViewController;
	[_window makeKeyAndVisible];
}
}

@end
