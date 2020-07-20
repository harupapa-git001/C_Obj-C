#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
    int count;
    
    int endcount;
}

+(MyClass *)myTestClassToEncount :(int)n;

-(void)setEndCount :(int)n;

-(BOOL)checkEnd :(NSTimer *)t;

-(void)printMessage :(NSTimer *)t;

@end
