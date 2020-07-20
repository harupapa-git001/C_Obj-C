#import "Sample2-3.h"

@implementation MyClass

 
-(id)init
{
    self = [super init];
    
    if(self){
    
    }
    return self;
}

-(void)dealloc
{
    [super dealloc];
}


@end

int main(int argc, const char * argv[])
{
    NSLog(@"ARCが機能してエラーになる時は@implementationより後の-(id)initから } まで(@endの前まで)をコメントアウトしてください");
    
    return 0;
}
