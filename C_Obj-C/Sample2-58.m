#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableSet *set = [NSMutableSet setWithObjects :@"tuyano", @"taro", @"hanako", @"buhi", nil];
        
        NSEnumerator *enm = [set objectEnumerator];
        
        id obj;
        
        while(obj = [enm nextObject]){
            NSLog(@"%@", obj);
        }
    }
    return 0;
}
