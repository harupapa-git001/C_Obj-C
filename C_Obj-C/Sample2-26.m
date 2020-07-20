#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSString *str = @"Hello,";
    
    NSString *format = @"Miss %@. How are you?";
    
    str = [str stringByAppendingFormat :format, @"Hanako"];
    
    NSLog(@"%@", str);
    
    return 0;
}
