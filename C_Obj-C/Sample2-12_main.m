#import <Foundation/Foundation.h>
#import "Sample2-12.h"

int main(int argc, const char * argv[])
{
    id obj = [MyClass MyClassWithMessage :@"This is second Object!"];
    
    [obj printMessage];
    
    return 0;
}

/*
コンパイルは

$ gcc -c Sample2-12.m

$ gcc -c Sample2-12_main.m

実行ファイルの作成は

$ gcc -o Sample2-12.o Sample2-12_main.o -framework Foundation
*/
