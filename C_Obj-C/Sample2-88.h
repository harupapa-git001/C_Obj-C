#import <Foundation/Foundation.h>

@interface SampleData : NSObject<NSCoding>
{
    NSString *key;
    
    NSString *mail;
    
    NSString *memo;
}

@property(retain, readwrite)NSString *key;

@property(retain, readwrite)NSString *mail;

@property(retain, readwrite)NSString *memo;

@end



@interface NSUserDefaults(SampleDataSupport)

-(void)setSampleData :(SampleData *)obj forKey :(NSString *)aKey;

-(SampleData *)sampleDataForKey :(NSString *)aKey;

//結合

-(void)setSampleData :(SampleData *)obj forKey :(NSString *)aKey;

-(SampleData *)sampleDataForKey :(NSString *)aKey;

-(void)setSampleDataDic :(NSDictionary *)obj forKey :(NSString *)aKey;

-(NSMutableDictionary *)sampleDataDicForKey :(NSString *)aKey;

@end
