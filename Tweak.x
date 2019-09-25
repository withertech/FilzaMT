#import <UIKit/UIKit.h>

%group enabled
	%hook ThemeManager
		- (id)background {
			NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.filzatmprefs"];
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
			NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.filzatmprefs"];
			id BarBackgroundColorRed = [bundleDefaults valueForKey:@"BarBackgroundColorRed"];
			NSString * BarBackgroundColorRedS = BarBackgroundColorRed;
			float BarBackgroundColorRedF = [BarBackgroundColorRedS floatValue];
			id BarBackgroundColorGreen = [bundleDefaults valueForKey:@"BarBackgroundColorGreen"];
			NSString * BarBackgroundColorGreenS = BarBackgroundColorGreen;
			float BarBackgroundColorGreenF = [BarBackgroundColorGreenS floatValue];
			id BarBackgroundColorBlue = [bundleDefaults valueForKey:@"BarBackgroundColorBlue"];
			NSString * BarBackgroundColorBlueS = BarBackgroundColorBlue;
			float BarBackgroundColorBlueF = [BarBackgroundColorBlueS floatValue];
			id BarBackgroundColorAlpha = [bundleDefaults valueForKey:@"BarBackgroundColorAlpha"];
			NSString * BarBackgroundColorAlphaS = BarBackgroundColorAlpha;
			float BarBackgroundColorAlphaF = [BarBackgroundColorAlphaS floatValue];
			return [UIColor colorWithRed:BarBackgroundColorRedF/255.0 green:BarBackgroundColorGreenF/255.0 blue:BarBackgroundColorBlueF/255.0 alpha:BarBackgroundColorAlphaF/255.0];
		}
	%end
	%hook ThemeManager
		- (id)lightGray {
			NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.filzatmprefs"];
			id LightGrayColorRed = [bundleDefaults valueForKey:@"LightGrayColorRed"];
			NSString * LightGrayColorRedS = LightGrayColorRed;
			float LightGrayColorRedF = [LightGrayColorRedS floatValue];
			id LightGrayColorGreen = [bundleDefaults valueForKey:@"LightGrayColorGreen"];
			NSString * LightGrayColorGreenS = LightGrayColorGreen;
			float LightGrayColorGreenF = [LightGrayColorGreenS floatValue];
			id LightGrayColorBlue = [bundleDefaults valueForKey:@"LightGrayColorBlue"];
			NSString * LightGrayColorBlueS = LightGrayColorBlue;
			float LightGrayColorBlueF = [LightGrayColorBlueS floatValue];
			id LightGrayColorAlpha = [bundleDefaults valueForKey:@"LightGrayColorAlpha"];
			NSString * LightGrayColorAlphaS = LightGrayColorAlpha;
			float LightGrayColorAlphaF = [LightGrayColorAlphaS floatValue];
			return [UIColor colorWithRed:LightGrayColorRedF/255.0 green:LightGrayColorGreenF/255.0 blue:LightGrayColorBlueF/255.0 alpha:LightGrayColorAlphaF/255.0];
		}
	%end
	%hook ThemeManager
		- (id)secondaryColor {
			NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.filzatmprefs"];
			id SecondaryColorRed = [bundleDefaults valueForKey:@"SecondaryColorRed"];
			NSString * SecondaryColorRedS = SecondaryColorRed;
			float SecondaryColorRedF = [SecondaryColorRedS floatValue];
			id SecondaryColorGreen = [bundleDefaults valueForKey:@"SecondaryColorGreen"];
			NSString * SecondaryColorGreenS = SecondaryColorGreen;
			float SecondaryColorGreenF = [SecondaryColorGreenS floatValue];
			id SecondaryColorBlue = [bundleDefaults valueForKey:@"SecondaryColorBlue"];
			NSString * SecondaryColorBlueS = SecondaryColorBlue;
			float SecondaryColorBlueF = [SecondaryColorBlueS floatValue];
			id SecondaryColorAlpha = [bundleDefaults valueForKey:@"SecondaryColorAlpha"];
			NSString * SecondaryColorAlphaS = SecondaryColorAlpha;
			float SecondaryColorAlphaF = [SecondaryColorAlphaS floatValue];
			return [UIColor colorWithRed:SecondaryColorRedF/255.0 green:SecondaryColorGreenF/255.0 blue:SecondaryColorBlueF/255.0 alpha:SecondaryColorAlphaF/255.0];
		}
	%end
	%hook ThemeManager
		- (id)text {
			NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.filzatmprefs"];
			id TextColorRed = [bundleDefaults valueForKey:@"TextColorRed"];
			NSString * TextColorRedS = TextColorRed;
			float TextColorRedF = [TextColorRedS floatValue];
			id TextColorGreen = [bundleDefaults valueForKey:@"TextColorGreen"];
			NSString * TextColorGreenS = TextColorGreen;
			float TextColorGreenF = [TextColorGreenS floatValue];
			id TextColorBlue = [bundleDefaults valueForKey:@"TextColorBlue"];
			NSString * TextColorBlueS = TextColorBlue;
			float TextColorBlueF = [TextColorBlueS floatValue];
			id TextColorAlpha = [bundleDefaults valueForKey:@"TextColorAlpha"];
			NSString * TextColorAlphaS = TextColorAlpha;
			float TextColorAlphaF = [TextColorAlphaS floatValue];
			return [UIColor colorWithRed:TextColorRedF/255.0 green:TextColorGreenF/255.0 blue:TextColorBlueF/255.0 alpha:TextColorAlphaF/255.0];
		}
	%end
	%hook ThemeManager
		- (id)selected {
			NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.filzatmprefs"];
			id SelectedColorRed = [bundleDefaults valueForKey:@"SelectedColorRed"];
			NSString * SelectedColorRedS = SelectedColorRed;
			float SelectedColorRedF = [SelectedColorRedS floatValue];
			id SelectedColorGreen = [bundleDefaults valueForKey:@"SelectedColorGreen"];
			NSString * SelectedColorGreenS = SelectedColorGreen;
			float SelectedColorGreenF = [SelectedColorGreenS floatValue];
			id SelectedColorBlue = [bundleDefaults valueForKey:@"SelectedColorBlue"];
			NSString * SelectedColorBlueS = SelectedColorBlue;
			float SelectedColorBlueF = [SelectedColorBlueS floatValue];
			id SelectedColorAlpha = [bundleDefaults valueForKey:@"SelectedColorAlpha"];
			NSString * SelectedColorAlphaS = SelectedColorAlpha;
			float SelectedColorAlphaF = [SelectedColorAlphaS floatValue];
			return [UIColor colorWithRed:SelectedColorRedF/255.0 green:SelectedColorGreenF/255.0 blue:SelectedColorBlueF/255.0 alpha:SelectedColorAlphaF/255.0];
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
