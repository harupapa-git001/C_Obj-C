#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *date = [NSDate date];
        
        NSTimeInterval t = 60 * 60 * 24 * 1000;
        
        NSDate *date2 = [date dateByAddingTimeInterval :t];
        
        NSLog(@"%@", date2);
    }
    return 0;
}
