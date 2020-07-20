#import "Sample2-15.h"

@implementation MyClass

+(MyClass *)MyClassWithMessage : (NSString *)str {
    MyClass *obj;
    
    @autoreleasepool {
        obj = [[self alloc] init];
    }
    
    [obj setMessage : str];
    
    return obj;
}

-(void)setMessage : (NSString *)str {
    message = str;
}

-(NSString *)message {
    return message;
}

-(void)printMessage {
    NSLog(@"%@", message);
}
@end

@implementation PowerMyClass

+(PowerMyClass *)PowerMyClassWithMessage : (NSString *)str andMessage2 : (NSString *)str2 {
    
    id obj = [super MyClassWithMessage : str];
    
    [obj setMessage2 : str2];
    
    return obj;
}

-(NSString *)message2 {
    return message2;
}

-(void)setMessage2 : (NSString *)str {
    message2 = str;
}

-(void)printMessage {
    NSLog(@"%@, %@", message, message2);
}
@end
