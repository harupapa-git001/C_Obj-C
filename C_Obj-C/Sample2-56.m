#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableSet *set = [NSMutableSet setWithCapacity :1];
        
        [set addObject :@"tuyano"];
        
        [set addObject :@"taro"];
        
        [set addObject :@"hanako"];
        
        [set addObject :@"taro"];
        
        [set removeObject :@"taro"];
        
        NSLog(@"%@", set);
    }
    return 0;
}
