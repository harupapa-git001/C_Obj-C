#import <Foundation/Foundation.h>
#import "Sample2-71.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        MyClass *obj = [MyClass myTestClassToEndCount :3];
        
        NSDictionary *data = [NSDictionary dictionaryWithObject :@"timer message" forKey :@"msg"];
        
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval :1.0 target :obj selector :@selector(printMessage :) userInfo :data repeats :YES];
        
        NSLog(@"start!");
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
