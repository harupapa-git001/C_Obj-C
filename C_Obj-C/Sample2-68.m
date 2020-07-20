#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *address = @"http://www.apple.com/";
        
        NSURL *url = [NSURL URLWithString :address];
        
        NSURLRequest *request = [NSURLRequest requestWithURL :url];
        
        NSURLResponse *response = nil;
        
        NSError *error = nil;
        
        NSData *data = [NSURLConnection sendSynchronousRequest :request returningResponse :&response error :&error];
        
        NSString *result = [[NSString alloc] initWithData :data encoding :NSASCIIStringEncoding];
        
        NSLog(@"%@", result);
    }
    return 0;
}
