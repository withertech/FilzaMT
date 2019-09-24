#include "FTMSelectedListController.h"
#include <spawn.h>
#include <signal.h>

@implementation FTMSelectedListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Selected" target:self];
	}

	return _specifiers;
}

-(void)respring {
    pid_t pid;
    int status;
    const char *argv[] = {"killall", "SpringBoard", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)argv, NULL);
    waitpid(pid, &status, WEXITED);
}

@end
