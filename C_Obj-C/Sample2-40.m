#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *date = [NSDate date];
        
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        
        NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier :@"fr"];
        
        [fmt setDateStyle :NSDateFormatterLongStyle];
        
        [fmt setTimeStyle :NSDateFormatterMediumStyle];
        
        [fmt setLocale :locale];
        
        NSLog(@"%@", [fmt stringFromDate :date]);
    }
    return 0;
}
