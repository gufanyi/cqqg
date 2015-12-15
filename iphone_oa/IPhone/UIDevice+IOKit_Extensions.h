#import <UIKit/UIKit.h>
#define SUPPORTS_IOKIT_EXTENSIONS    1

/*
 * To use, you must add the (semi)public IOKit framework before compiling
 */

#if SUPPORTS_IOKIT_EXTENSIONS
NSArray *getValue(NSString *iosearch);
NSString * test(NSString* test);
@interface UIDevice (IOKit_Extensions)
- (NSString *) imei;
- (NSString *) serialnumber;
- (NSString *) backlightlevel;
//- (NSString *) test:(NSstring *) haha;
- (NSString *)setAge:(NSString *)newAge;
//- (void)setAge :(int)newAge :(float)newHeight;
//- (void)setAge :(int)newAge andWeight :(float)newHeight;
@end
#endif

