#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *address = @"http://apple.com:8080/jp/index?id=acd";
        
        NSURL *url = [NSURL URLWithString :address];
        
        NSLog(@"%@", [url absoluteString]);
        
        NSLog(@"%@", [url port]);
        
        NSLog(@"%@", [url host]);
        
        NSLog(@"%@", [url path]);
        
        NSLog(@"%@", [url query]);
    }
    return 0;
}
