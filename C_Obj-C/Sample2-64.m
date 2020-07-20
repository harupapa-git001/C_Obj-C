#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent :@"Desktop/data.txt"];
        
        NSError *err;
        
        NSString *str = [NSString stringWithContentsOfFile :path encoding :NSUTF8StringEncoding error :&err];
        
        NSLog(@"%@", str);
        
        str = [str stringByAppendingString :@"** add test **\n"];
        
        NSString *path2 = [NSHomeDirectory() stringByAppendingPathComponent :@"Desktop/saved.txt"];
        
        [str writeToFile :path2 atomically :YES encoding :NSUTF8StringEncoding error :&err];
    }
    return 0;
}

//Desktopに空のdata.txtを作成して実行してください。(saved.txtがデスクトップ上に作成され中に ** add test **と書かれていれば完了です)
