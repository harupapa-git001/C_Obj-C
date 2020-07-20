#import <Foundation/Foundation.h>

NSString *input();

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        NSDictionary *memodata = [defaults dictionaryForKey :@"memo"];
        
        NSMutableDictionary *memo = [NSMutableDictionary dictionaryWithDictionary :memodata];
        
        BOOL flg = YES;
        
        while(flg){
            printf("[a]dd or [f]ind:");
            
            NSString *cmd = input();
            
            if([cmd isEqualToString :@""]){
                flg = NO;
                
            }

            if([cmd isEqualToString :@"a"]){
                printf("key :");
                
                NSString *key = input();
                
                printf("memo");
                
                NSString *memostr = input();
                
                [memo setValue :memostr forKey :key];
                
                printf("saved...\n");
            }
            
            if([cmd isEqualToString :@"f"]){
                printf("find :");
                
                NSString *fstr = input();
                
                NSString *memostr = [memo valueForKey :fstr];
                
                printf("%s\n", [memostr cStringUsingEncoding :NSUTF8StringEncoding]);
            }
        }
        
        [defaults setObject :memo forKey :@"memo"];
        
        [defaults synchronize];
        
        printf("bye...");
    }
    return 0;
}

//テキストの入力関数用

NSString *input()
{
    char str[255];
    
    fgets(str, 255, stdin);
    
    NSString *result = [NSString stringWithUTF8String :str];
    
    return [result stringByTrimmingCharactersInSet :[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

//コンソールで値を [a]dd から入力して　[f]ind で確認してください。
