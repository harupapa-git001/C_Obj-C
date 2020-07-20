#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSString *str = @"Welcome to Objective-C.";
    
    NSString *re = [str stringByReplacingOccurrencesOfString :@"Objective-C" withString :@"AppleSript"];
    
    NSLog(@"%@", re);
    
    return 0;
}

