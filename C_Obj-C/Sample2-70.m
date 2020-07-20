#import <Foundation/Foundation.h>

@interface SampleConnectDelegate : NSObject
{
    NSMutableData *result;
}
@end

@implementation SampleConnectDelegate

-(void)connection :(NSURLConnection *)connection didReceiveResponse :(NSURLResponse *)response {
    result = [[NSMutableData alloc] init];
}

-(void)connection :(NSURLConnection *)connection didReceiveData :(NSData *)data {
    [result appendData :data];
}

-(void)connectionDidFinishLoading :(NSURLConnection *)connection {
    NSLog(@"%@", result);
}
@end

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *address = @"http://www.apple.com/";
        
        NSURL *url = [NSURL URLWithString :address];
        
        NSURLRequest *request = [NSURLRequest requestWithURL :url];
        
        SampleConnectDelegate *delegate = [[SampleConnectDelegate alloc] init];
        
        NSURLConnection *connection = [NSURLConnection connectionWithRequest :request delegate :delegate];
        
        if(!connection){
            NSLog(@"Error...");
        }
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
