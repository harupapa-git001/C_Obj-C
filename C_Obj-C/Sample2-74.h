#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
    int count;
    
    int endcount;
}

+(MyClass *)MyClassToEndCount :(int)n;

-(void)setEndCount :(int)n;

-(void)printMessage :(NSString *)s;

@end
