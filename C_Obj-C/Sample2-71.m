#import "Sample2-71.h"

@implementation MyClass

+(MyClass *)myTestClassToEndCount :(int)n{
    MyClass *obj = [[MyClass alloc] init];
    
    [obj setEndCount :n];
    
    return obj;
}

-(void)setEndCount :(int)n{
    endcount = n;

}

-(void)printMessage :(NSTimer *)t{
    id s = [[t userInfo] objectForKey :@"msg"];
    
    NSLog(@"%@ :%i", s, ++count);
    
    [self checkEnd :t];
}

-(BOOL)checkEnd :(NSTimer *)t{
    BOOL flg = NO;
    
    if(endcount == count){
        NSLog(@"end.");
        
        flg = YES;
        
        [t invalidate];
    }
    return flg;
}
@end
