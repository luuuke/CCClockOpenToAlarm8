#line 1 "/Users/ng/Dropbox/CCClockOpenToAlarm8/CCClockOpenToAlarm8/CCClockOpenToAlarm8.xm"
#import <UIKit/UIKit.h>

@interface SBCCShortcutModule : NSObject
-(void)activateAppWithDisplayID:(NSString*)displayId url:(NSURL*)url;
@end

@interface SBCCTimerShortcut : SBCCShortcutModule
-(id)glyphImageForState:(int)arg1 ;
@end


#include <logos/logos.h>
#include <substrate.h>
@class SBCCTimerShortcut; 
static void (*_logos_orig$_ungrouped$SBCCTimerShortcut$activateAppWithDisplayID$url$)(SBCCTimerShortcut*, SEL, NSString*, NSURL*); static void _logos_method$_ungrouped$SBCCTimerShortcut$activateAppWithDisplayID$url$(SBCCTimerShortcut*, SEL, NSString*, NSURL*); static id (*_logos_orig$_ungrouped$SBCCTimerShortcut$glyphImageForState$)(SBCCTimerShortcut*, SEL, int); static id _logos_method$_ungrouped$SBCCTimerShortcut$glyphImageForState$(SBCCTimerShortcut*, SEL, int); 

#line 12 "/Users/ng/Dropbox/CCClockOpenToAlarm8/CCClockOpenToAlarm8/CCClockOpenToAlarm8.xm"


static void _logos_method$_ungrouped$SBCCTimerShortcut$activateAppWithDisplayID$url$(SBCCTimerShortcut* self, SEL _cmd, NSString* displayId, NSURL* url){
	LWLog(@"displayId: %@, url: %@", displayId, url);
	url=[NSURL URLWithString:@"clock-alarm:default"];
	_logos_orig$_ungrouped$SBCCTimerShortcut$activateAppWithDisplayID$url$(self, _cmd, displayId, url);
}

static id _logos_method$_ungrouped$SBCCTimerShortcut$glyphImageForState$(SBCCTimerShortcut* self, SEL _cmd, int arg1){
	return [UIImage imageWithContentsOfFile:@"/Applications/MobileTimer.app/BarAlarmOn@2x.png"];
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBCCTimerShortcut = objc_getClass("SBCCTimerShortcut"); MSHookMessageEx(_logos_class$_ungrouped$SBCCTimerShortcut, @selector(activateAppWithDisplayID:url:), (IMP)&_logos_method$_ungrouped$SBCCTimerShortcut$activateAppWithDisplayID$url$, (IMP*)&_logos_orig$_ungrouped$SBCCTimerShortcut$activateAppWithDisplayID$url$);MSHookMessageEx(_logos_class$_ungrouped$SBCCTimerShortcut, @selector(glyphImageForState:), (IMP)&_logos_method$_ungrouped$SBCCTimerShortcut$glyphImageForState$, (IMP*)&_logos_orig$_ungrouped$SBCCTimerShortcut$glyphImageForState$);} }
#line 25 "/Users/ng/Dropbox/CCClockOpenToAlarm8/CCClockOpenToAlarm8/CCClockOpenToAlarm8.xm"
