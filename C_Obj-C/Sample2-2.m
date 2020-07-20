#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSLog(@"Hello, World!");
    
    return 0;
}

/*
 NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];と[pool drain];を削除
 
 以降ARC機能はONの状態でプログラミング
 
*/
