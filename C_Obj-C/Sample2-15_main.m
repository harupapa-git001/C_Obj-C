#import <Foundation/Foundation.h>
#import "Sample2-15.h"

int main(int argc, const char * argv[])
{
    MyClass *obj = [MyClass MyClassWithMessage :@"This is Third Object!"];
    
    [obj printMessage];
    
    PowerMyClass *obj2 = [PowerMyClass PowerMyClassWithMessage :@"This is Fourth Object!" andMessage2 :@"It's SUPER!"];
    
    [obj2 printMessage];
    
    return 0;
}
