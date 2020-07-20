#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSDate *date = [NSDate dateWithNaturalLanguageString :@"2001年 1月 1日 12時"];
    
    NSLog(@"%@", date);
    
    return 0;
}
