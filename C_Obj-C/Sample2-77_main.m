#import <Foundation/Foundation.h>
#import "Sample2-77.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        MyClass *obj = [MyClass MyClassToEndCount :5];
        
        [NSThread detachNewThreadSelector :@selector(printMessage :) toTarget :obj withObject :@"first"];
        
        [NSThread detachNewThreadSelector :@selector(printMessage :) toTarget :obj withObject :@"second"];
        
        NSLog(@"start!");
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
