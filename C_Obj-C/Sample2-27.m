#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSString *str1 = @"Hello";
    
    NSString *str2 = [@"Hell" stringByAppendingString :@"o"];
    
    BOOL res = [str1 isEqualToString :str2];
    
    NSLog(res ? @"YES!" :@"No..");

    return 0;
}
