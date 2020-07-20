#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSString *str = @"Welcome to Objective-C.";
    
    NSArray *re = [str componentsSeparatedByString :@"Object"];
    
    NSLog(@"%@", re);
    
    return 0;
}
