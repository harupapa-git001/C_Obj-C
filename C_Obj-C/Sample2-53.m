#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys :@"090-9999-9999", @"tuyano", @"03-555-5555", @"taro", @"080-765-4321", @"hanako", nil];
        
        NSArray *keys = [dic allKeys];
        
        id obj;
        
        for(obj in keys){
            id val = [dic objectForKey :obj];
            
            NSLog(@"%@ :%@", obj, val);
        }
    }
    return 0;
}
