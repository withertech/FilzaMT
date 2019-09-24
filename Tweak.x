#import <UIKit/UIKit.h>

%group enabled
NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.filzatmprefs"];
%hook ThemeManager
- (id)background {
id BackgroundColorRed = [bundleDefaults valueForKey:@"BackgroundColorRed"];
NSString * BackgroundColorRedS = BackgroundColorRed;
float BackgroundColorRedF = [BackgroundColorRedS floatValue];
id BackgroundColorGreen = [bundleDefaults valueForKey:@"BackgroundColorGreen"];
NSString * BackgroundColorGreenS = BackgroundColorGreen;
float BackgroundColorGreenF = [BackgroundColorGreenS floatValue];
id BackgroundColorBlue = [bundleDefaults valueForKey:@"BackgroundColorBlue"];
NSString * BackgroundColorBlueS = BackgroundColorBlue;
float BackgroundColorBlueF = [BackgroundColorBlueS floatValue];
id BackgroundColorAlpha = [bundleDefaults valueForKey:@"BackgroundColorAlpha"];
NSString * BackgroundColorAlphaS = BackgroundColorAlpha;
float BackgroundColorAlphaF = [BackgroundColorAlphaS floatValue];
return [UIColor colorWithRed:BackgroundColorRedF/255.0 green:BackgroundColorGreenF/255.0 blue:BackgroundColorBlueF/255.0 alpha:BackgroundColorAlphaF/255.0];
}
%end

%hook ThemeManager
- (id)barBackground {
return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

%hook ThemeManager
- (id)lightGray {
return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

%hook ThemeManager
- (id)secondaryColor {
return [UIColor colorWithRed:34/255.0 green:34/255.0 blue:34/255.0 alpha:255/255.0];
}
%end

%hook ThemeManager
- (id)text {
return [UIColor colorWithRed:0/255.0 green:255/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

%hook ThemeManager
- (id)selected {
return [UIColor colorWithRed:34/255.0 green:34/255.0 blue:34/255.0 alpha:255/255.0];
}
%end

%end

%ctor {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.filzatmprefs"];

    id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];
    if ([isEnabled isEqual:@1]) {
        %init(enabled)
    }
}
