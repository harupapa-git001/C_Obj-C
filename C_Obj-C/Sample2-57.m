#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableSet *set = [NSMutableSet setWithObjects :@"tuyano", @"taro", @"hanako", @"buhi", nil];
        
        NSMutableSet *set2 = [NSMutableSet setWithObjects :@"tuyano", @"ichiro", @"hanako", @"hoge", nil];
        
        [set intersectSet :set2];
        
        NSLog(@"%@", set);
    }
    return 0;
}
