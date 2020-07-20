#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSString *str = @"Hello,";
    
    str = [str stringByAppendingString :@"Hanako"];
    
    NSLog(@"%@", str);

    return 0;
}
