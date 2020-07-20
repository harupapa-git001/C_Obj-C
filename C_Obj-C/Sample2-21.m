#import "Sample2-21.h"

@implementation MyClass

@synthesize myMsg;

+(MyClass *)MyClass {
    MyClass *obj;
    
    @autoreleasepool {
        obj = [[self alloc] init];
    }
    return obj;
}

-(void)printMessage {
    NSLog(@"%@", myMsg);
}
@end
