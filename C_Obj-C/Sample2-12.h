#import <Foundation/Foundation.h>


@interface MyClass : NSObject
{
@private
    NSString *message;
}

+(MyClass *)MyClassWithMessage : (NSString *)str;

-(void)setMessage : (NSString *)str;

-(NSString *)message;

-(void)printMessage;

@end

/*
コンパイルは

$ gcc -c Sample2-12.m

$ gcc -c Sample2-12_main.m

実行ファイルの作成は

$ gcc -o Sample2-12.o Sample2-12_main.o -framework Foundation
*/
