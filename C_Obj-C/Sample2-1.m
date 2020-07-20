#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init]; //エラーが出るとき(xcode 4以前)はこの文をコメントアウト
    
    NSLog(@"Hello, World!");
    
    [pool drain]; //エラーが出るとき(xcode 4以前)はこの文をコメントアウト
    
    return 0;
}


/*
 Objective-Cのソースコード(.m)のコンパイルは

 $ gcc -c Sample2-1.m(main関数のあるファイル)
 
 実行ファイルの生成は
 
 $ gcc -o Sample2-1(生成するファイル名) Sample2-1.o(コンパイルされたファイル) -framework Foundation
 
 実行ファイルの実行は
 
 $ open Sample2-1(生成されたファイル名)
 */
