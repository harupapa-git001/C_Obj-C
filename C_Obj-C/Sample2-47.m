#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSArray *arr = [NSArray arrayWithObjects :@"Hello", @"Welcome", @"Bye", nil];
        
        NSUInteger n = [arr count];
        
        for(int i = 0; i < n; i++){
            NSLog(@"%i :%@", i, [arr objectAtIndex :i]);
        }
    }
    return 0;
}
