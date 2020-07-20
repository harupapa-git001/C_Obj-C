#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
    NSString *myMsg;
}

@property (retain)NSString *myMsg;

+(MyClass *)MyClass;

-(void)printMessage;

@end
