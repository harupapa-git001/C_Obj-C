#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSArray *keys = [NSArray arrayWithObjects :@"tuyano", @"taro", @"hanako", nil];
        
        NSArray *vals = [NSArray arrayWithObjects :@"090-9999-9999", @"03-555-5555", @"080-765-4321", nil];
        
        NSDictionary *dic = [NSDictionary dictionaryWithObjects :vals forKeys :keys];
        
        NSLog(@"%@", dic);
    }
    return 0;
}
