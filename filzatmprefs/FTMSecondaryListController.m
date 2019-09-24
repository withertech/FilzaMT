#include "FTMSecondaryListController.h"
#include <spawn.h>
#include <signal.h>

@implementation FTMSecondaryListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Secondary" target:self];
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
