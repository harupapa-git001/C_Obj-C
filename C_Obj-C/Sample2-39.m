#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSDate *date = [NSDate date];
        
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        
        [fmt setDateStyle :NSDateFormatterLongStyle];
        
        [fmt setTimeStyle :NSDateFormatterMediumStyle];
        
        NSLog(@"%@", [fmt stringFromDate :date]);
    }
    return 0;
}
