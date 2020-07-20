#import "Sample2-12.h"

@implementation MyClass

+(MyClass *)MyClassWithMessage : (NSString *)str {
    MyClass *obj = [[self alloc] init];
    
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

/*
 コンパイルは
 
 $ gcc -c Sample2-12.m
 
 $ gcc -c Sample2-12_main.m
 
 実行ファイルの作成は
 
 $ gcc -o Sample2-12.o Sample2-12_main.o -framework Foundation
 */
