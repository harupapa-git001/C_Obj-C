#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableString *str = [NSMutableString stringWithString :@"Welcome"];
        
        [str appendString :@"Objective-C."];
        
        [str insertString :@"=to=" atIndex :7];
        
        [str deleteCharactersInRange :NSMakeRange(14, 6)];
        
        NSLog(@"%@", str);
    }
    return 0;
}
