#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSFileManager *manager = [NSFileManager defaultManager];
        
        NSError *err = nil;
        
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent :@"data.txt"];
        
        NSString *tpath = [NSHomeDirectory() stringByAppendingPathComponent :@"Desktop/copied.txt"];
        
        [manager copyItemAtPath :path toPath :tpath error :&err];
        
        if(err == nil){
            NSLog(@"copied.");
        
        } else {
            NSLog(@"%@", [err localizedDescription]);
        }
    }
    return 0;
}

//ホームディレクトリにdata.txtを作成して実行してください。（デスクトップにcopied.txtがコピーされたら完了です）
