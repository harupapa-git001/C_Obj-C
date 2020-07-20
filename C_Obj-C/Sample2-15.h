#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
    NSString *message;
}

+(MyClass *)MyClassWithMessage : (NSString *)str;

-(void)setMessage : (NSString *)str;

-(NSString *)message;

-(void)printMessage;

@end

@interface PowerMyClass : MyClass
{
    NSString *message2;
}

+(PowerMyClass *)PowerMyClassWithMessage : (NSString *)str andMessage2 : (NSString *)str2;

-(NSString *)message2;

-(void)setMessage2: (NSString *)str;

@end
