#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableArray *arr = [NSMutableArray arrayWithObjects :@"Hello", @"Welcome", @"Bye", nil];
        
        [arr insertObject :@"Hi" atIndex :1];
        
        [arr removeObject :@"Welcome"];
        
        [arr removeObjectAtIndex :0];
        
        NSLog(@"%@", arr);
    }
    return 0;
}
