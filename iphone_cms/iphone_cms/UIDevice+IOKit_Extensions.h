#import <UIKit/UIKit.h>
#define SUPPORTS_IOKIT_EXTENSIONS    1

/*
 * To use, you must add the (semi)public IOKit framework before compiling
 */

#if SUPPORTS_IOKIT_EXTENSIONS
@interface UIDevice (IOKit_Extensions)
- (NSString *) imei;
- (NSString *) serialnumber;
- (NSString *) backlightlevel;
@end
#endif

