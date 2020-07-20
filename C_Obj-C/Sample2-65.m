#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSFileManager *manager = [NSFileManager defaultManager];
        
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent :@"Documents"];
        
        NSString *path2 = [NSHomeDirectory() stringByAppendingPathComponent :@"Desktop/doc_alias"];
        
        NSError *err;
        
        [manager createSymbolicLinkAtPath :path2 withDestinationPath :path error :&err];
        
        NSLog(@"%@", [manager destinationOfSymbolicLinkAtPath :path2 error :&err]);
    }
    return 0;
}

//Desktop上にdoc_aliasというDocumentsフォルダのエイリアスが作成されれば完了です
