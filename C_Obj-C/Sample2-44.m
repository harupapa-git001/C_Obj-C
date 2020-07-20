#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *date = [NSDate date];
        
        NSDateComponents *dc = [[NSDateComponents alloc] init];
        
        NSCalendar *calendar = [NSCalendar currentCalendar];
        
        [dc setMonth :1];
        
        [dc setDay :2];
        
        NSDate *date2 = [calendar dateByAddingComponents :dc toDate :date options :0];
        
        NSLog(@"%@", date2);
    }
    return 0;
}
