#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSArray *arr = [NSArray arrayWithObjects :@"one", @"two", nil];
        
        NSArray *arr2 = [NSArray arrayWithObjects :@"three", @"four", nil];
        
        NSArray *newarr = [arr arrayByAddingObjectsFromArray :arr2];
        
        NSUInteger n = [newarr count];
        
        for(int i = 0; i < n; i++){
            NSLog(@"%i :%@", i, [newarr objectAtIndex :i]);
        }
    }
    return 0;
}
