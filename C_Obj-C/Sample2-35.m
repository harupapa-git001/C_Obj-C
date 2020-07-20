#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSString *str = @"Welcome to Objective-C.";
    
    NSRange r = NSMakeRange(5, 7);
    
    NSString *re = [str stringByReplacingCharactersInRange :r withString :@"*******"];
    
    NSLog(@"%@", re);
    
    return 0;
}
