#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSSet *set = [NSSet setWithObjects :@"tuyano", @"taro", nil];
        
        set = [set setByAddingObject :@"hanako"];
        
        set = [set setByAddingObject :@"taro"];
        
        NSLog(@"%@", set);
    }
    return 0;
}
