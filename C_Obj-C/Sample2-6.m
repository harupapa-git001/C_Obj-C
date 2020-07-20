#import "Sample2-6.h"

@implementation MyClass

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

int main(int argc, const char * argv[])
{
    MyClass *obj = [MyClass alloc];
    
    obj = [obj init];
    
    [obj setMessage :@"This is First Object!"];
    
    [obj printMessage];
    
    NSLog(@"正常に処理が終了しました");
    
    return 0;
}
