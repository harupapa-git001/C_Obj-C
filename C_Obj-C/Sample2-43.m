#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *date = [NSDate date];
        
        NSCalendar *calendar = [NSCalendar currentCalendar];
        
        NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
        
        NSDateComponents *dc = [calendar components :unit fromDate :date];
        
        NSLog(@"%ld-%ld-%ld", [dc year], [dc month], [dc day]);
    }
    return 0;
}
