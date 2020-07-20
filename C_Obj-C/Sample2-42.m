#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *date = [NSDate date];
        
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        
        [fmt setDateFormat :@"yyyy-MM-dd"];
        
        NSDate *date2 = [fmt dateFromString :@"2001-1-1"];
        
        NSTimeInterval t = [date timeIntervalSinceDate :date2];
        
        NSInteger days = (int)(t / (60 * 60 * 24));
        
        NSLog(@"%ld", days);
    }
    return 0;
}
