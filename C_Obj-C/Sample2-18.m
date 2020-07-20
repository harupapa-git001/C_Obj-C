#import "Sample2-18.h"

@implementation MyClass

+(MyClass *)MyClass {
    MyClass *obj;
    
    @autoreleasepool {
        obj = [[self alloc] init];
    }
    return obj;
}

-(void)printMessage {
    NSLog(@"%@", message);
}
@end
