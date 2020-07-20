#import <Foundation/Foundation.h>
#import "Sample2-88.h"

NSString *input();

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
        NSMutableDictionary *memo = [defaults sampleDataDicForKey :@"newmemo"];
    
        BOOL flg = YES;
    
        while(flg){
            printf("[a]dd or [f]ind :");
        
            NSString *cmd = input();
        
            if([cmd isEqualToString :@""]){
                flg = NO;
            }
            
            if([cmd isEqualToString :@"a"]){
                printf("key :");
                
                NSString *keystr = input();
                
                printf("mail :");
                
                NSString *mailstr = input();
                
                printf("memo :");
                
                NSString *memostr = input();
                
                SampleData *obj = [[SampleData alloc]  init];
                
                obj.key = keystr;
                
                obj.mail = mailstr;
                
                obj.memo = memostr;
                
                [memo setValue :obj forKey :keystr];
                
                printf("saved...\n");
            }
            
            if([cmd isEqualToString :@"f"]){
                printf("find :");
                
                NSString *fstr = input();
                
                SampleData *obj = [memo valueForKey :fstr];
                
                printf("%s :%s, %s\n",
                       [fstr cStringUsingEncoding :NSUTF8StringEncoding],
                       
                       [obj.mail cStringUsingEncoding :NSUTF8StringEncoding],
                       
                       [obj.memo cStringUsingEncoding :NSUTF8StringEncoding]);
            }
        }
        
        [defaults setSampleDataDic :memo forKey :@"newmemo"];
        
        [defaults synchronize];
        
        printf("bye...");
    }
    return 0;
}

//テキスト入力用関数

NSString *input()
{
    char str[255];
    
    fgets(str, 255, stdin);
    
    NSString *result = [NSString stringWithUTF8String :str];
    
    return [result stringByTrimmingCharactersInSet :[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

//コンソール入力終了はCtrl + Cです
