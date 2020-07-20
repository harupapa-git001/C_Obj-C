#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
@private
    NSString *message;
}

-(void)setMessage : (NSString *)str;

-(NSString *)message;

-(void)printMessage;

@end
