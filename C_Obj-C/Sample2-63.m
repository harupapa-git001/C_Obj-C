
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSFileManager *manager = [NSFileManager defaultManager];
        
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent :@"Desktop/data.txt"];
        
        BOOL isdir;
        
        NSLog(@"exists :%@", [manager fileExistsAtPath : path isDirectory :&isdir] ? @"YES" :@"NO");
        
        NSLog(@"isDir :%@", isdir ? @"YES" :@"NO");
        
        NSLog(@"canRead :%@", [manager isReadableFileAtPath :path] ? @"YES" :@"NO");
        
        NSLog(@"canSave :%@", [manager isWritableFileAtPath :path] ? @"YES" :@"NO");
        
        NSLog(@"canExec :%@", [manager isExecutableFileAtPath :path] ? @"YES" :@"NO");
        
        NSLog(@"canDele :%@", [manager isDeletableFileAtPath :path] ? @"YES" :@"NO");
    }
    return 0;
}

//Desktopにdata.txtを作成して実行してください。(ファイル属性が表示されれば完了です)
