#include "FTMBackgroundListController.h"

@implementation FTMBackgroundListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Background" target:self];
	}

	return _specifiers;
}

@end
