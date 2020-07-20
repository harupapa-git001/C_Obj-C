#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *path =NSHomeDirectory();
        
        NSString *shortpath = [path stringByAbbreviatingWithTildeInPath];
        
        NSLog(@"%@", path);
        
        NSLog(@"%@", shortpath);
    }
    return 0;
}
