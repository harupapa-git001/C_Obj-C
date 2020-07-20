#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent :@"Desktop/data.txt"];
        
        NSURL *url = [NSURL fileURLWithPath :path];
        
        NSError *err;
        
        NSString *str = [NSString stringWithContentsOfURL :url encoding :NSUTF8StringEncoding error :&err];
        
        NSLog(@"%@", str);
        
        NSString *address = @"http://www.apple.com/";
        
        NSURL *url2 = [NSURL URLWithString :address];
        
        id str2 = [NSString stringWithContentsOfURL :url2 encoding :NSUTF8StringEncoding error :&err];
        
        NSLog(@"%@", str2);
    }
    return 0;
}

//Desktop上にdata.txtを作成し文字列を入力後実行してください。(data.txt と http://www.apple.com/ のWebページのテキストをそれぞれ出力されれば完了です)
