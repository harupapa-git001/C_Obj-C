#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableArray *arr = [NSMutableArray arrayWithCapacity :1];
        
        [arr addObject :@"Hello"];
        
        [arr addObject :@"Hi"];
        
        [arr replaceObjectAtIndex :1 withObject :@"Bye!"];
        
        NSLog(@"%@", arr);
    }
    return 0;
}
