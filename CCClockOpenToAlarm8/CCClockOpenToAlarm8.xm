#import <UIKit/UIKit.h>

@interface SBCCShortcutModule : NSObject
-(void)activateAppWithDisplayID:(NSString*)displayId url:(NSURL*)url;
@end

@interface SBCCTimerShortcut : SBCCShortcutModule
-(UIImage*)glyphImageForState:(int)arg1 ;
@end


%hook SBCCTimerShortcut

-(void)activateAppWithDisplayID:(NSString*)displayId url:(NSURL*)url{
	LWLog(@"displayId: %@, url: %@", displayId, url);
	url=[NSURL URLWithString:@"clock-alarm:default"];
	%orig(displayId, url);
}

-(UIImage*)glyphImageForState:(int)arg1{
	return [UIImage imageWithContentsOfFile:@"/Applications/MobileTimer.app/BarAlarmOn@2x.png"];
}

%end