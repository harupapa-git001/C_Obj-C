#import "Sample2-77.h"

@implementation MyClass

+(MyClass *)MyClassToEndCount :(int)n{
    MyClass *obj = [[MyClass alloc] init];
    
    [obj setEndCount :n];
    
    return obj;
}

-(void)setEndCount :(int)n{
    endcount = n;
    
}

-(void)printMessage :(NSString *)s{
    @synchronized(self){
        BOOL flg = YES;
        
        count = 0;
        
        while(flg){
            [NSThread sleepForTimeInterval :1.0];
            
            NSLog(@"%@ :%i", s, ++count);
            
            if(endcount <= count){
                flg = NO;
                
                NSLog(@"end...");
            }
        }
    }
}
@end
