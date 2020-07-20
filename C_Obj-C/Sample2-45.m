#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *date = [NSDate date];
        
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        
        [fmt setDateFormat :@"yyyy-MM-dd"];
        
        NSDate *date2 = [fmt dateFromString :@"2001-1-1"];
        
        NSCalendar *calendar = [NSCalendar currentCalendar];
        
        NSCalendarUnit unit = NSCalendarUnitMonth | NSCalendarUnitDay;
        
        NSDateComponents *dc = [calendar components :unit fromDate :date2 toDate :date options :0];
        
        NSLog(@"%ldヶ月と%ld日。", [dc month], [dc day]);
    }
    return 0;
}
