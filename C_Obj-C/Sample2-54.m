#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        
        [dic setObject :@"090-9999-9999" forKey :@"tuyano"];
        
        [dic setObject :@"03-555-5555" forKey :@"taro"];
        
        [dic setObject :@"080-765-4321" forKey :@"hanako"];
        
        [dic removeObjectForKey :@"taro"];
        
        NSLog(@"%@", dic);
    }
    return 0;
}
