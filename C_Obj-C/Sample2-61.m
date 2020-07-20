#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *path = NSHomeDirectory();
        
        NSArray *arr = [path pathComponents];
        
        NSLog(@"%@", arr);
    }
    return 0;
}
