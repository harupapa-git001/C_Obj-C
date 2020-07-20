#import <Foundation/Foundation.h>
#import "Sample2-74.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        MyClass *obj1 = [MyClass MyClassToEndCount :5];
        
        MyClass *obj2 = [MyClass MyClassToEndCount :3];
        
        [NSThread detachNewThreadSelector :@selector(printMessage :) toTarget :obj1 withObject :@"first"];
        
        [NSThread detachNewThreadSelector :@selector(printMessage :) toTarget :obj2 withObject :@"second"];
        
        NSLog(@"start!");
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
