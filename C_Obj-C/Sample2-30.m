#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSString *str = @"Welcome to Objective-C.";
    
    NSString *str2 = [str substringFromIndex :5];
    
    NSLog(@"%@", str2);
    
    return 0;
}
    
