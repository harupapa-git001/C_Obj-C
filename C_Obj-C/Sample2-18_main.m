#import <Foundation/Foundation.h>
#import "Sample2-18.h"

int main(int argc, const char * argv[])
{
    MyClass *obj = [MyClass MyClass];
    
    obj -> message = @"This is Fifth Object!";
    
    [obj printMessage];
    
    return 0;
}
