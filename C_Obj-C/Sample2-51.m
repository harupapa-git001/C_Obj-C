#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableArray *arr = [NSMutableArray arrayWithObjects :@"Hello", @"Welcome", @"Bye", nil];
        
        for(id obj in arr){
            NSLog(@"%@", obj);
        }
        NSEnumerator *enm = [arr reverseObjectEnumerator];
        
        id obj;
        
        while(obj = [enm nextObject]){
            NSLog(@"%@", obj);
        }
    }
    return 0;
}
