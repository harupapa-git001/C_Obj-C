#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *path = NSHomeDirectory();
        
        path = [path stringByAppendingPathComponent :@"Desktop"];
        
        NSString *fullpath = [path stringByExpandingTildeInPath];
        
        NSString *shortpath = [path stringByAbbreviatingWithTildeInPath];
        
        NSString *dlpath = [path stringByDeletingLastPathComponent];
        
        NSString *newpath = [path stringByAppendingPathComponent :@"newfile"];
        
        NSLog(@"%@", fullpath);
        
        NSLog(@"%@", shortpath);
        
        NSLog(@"%@", dlpath);
        
        NSLog(@"%@", newpath);
    }
    return 0;
}
