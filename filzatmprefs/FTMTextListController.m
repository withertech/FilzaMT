#include "FTMTextListController.h"
#include <spawn.h>
#include <signal.h>

@implementation FTMTextListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Text" target:self];
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
