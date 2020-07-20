#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSArray *arr = [NSArray arrayWithObjects :@"Hello", @"Welcome", @"Bye", nil];
        
        NSLog(@"%@", arr);
    }
    return 0;
}
