#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSString *str = @"Welcome to Objective-C.";
    
    NSRange r = [str rangeOfString :@"Object"];
    
    NSLog(@"%lu - %lu", r.location, r.length);
    
    return 0;
}
