#import <UIKit/UIKit.h>

%group enabled
    %hook ThemeManager
        - (id)background {
            return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:63/255.0];
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

