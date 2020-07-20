#import <Foundation/Foundation.h>
#import "Sample2-21.h"

int main(int argc, const char * argv[])
{
    MyClass *obj = [MyClass MyClass];
    
    [obj setMyMsg :@"This is sixth Object!"];
    
    [obj printMessage];
    
    return 0;
}
