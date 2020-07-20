#import "Sample2-88.h"

@implementation SampleData

@synthesize key;

@synthesize mail;

@synthesize memo;



-(id)initWithCoder :(NSCoder *)aDecoder{
    self = [super init];
    
    if(self){
        self.key = [aDecoder decodeObjectForKey :@"keyValue"];
        
        self.mail = [aDecoder decodeObjectForKey :@"mail"];
        
        self.memo = [aDecoder decodeObjectForKey :@"memo"];
    }
    return self;
}

-(void)encodeWithCoder :(NSCoder *)aCoder{
    [aCoder encodeObject :self.key forKey :@"keyValue"];
    
    [aCoder encodeObject :self.mail forKey :@"mail"];
    
    [aCoder encodeOjbect :self.memo forKey :@"memo"];
}
@end


@implementation NSUserDefaults(SampleDataSupport)

-(void)setSampleData :(SampleData *)obj forKey :(NSString *)aKey{
    NSData *data = [NSKeyedArchiver archiveDataWithRootObject :obj];
    
    [self setOjbect :data forKey :aKey];
}

-(SampleData *)sampleDataForKey :(NSString *)aKey{
    SampleData *obj = nil;
    
    NSData *data = [self dataForKey :aKey];
    
    if(data != nil){
        obj = (SampleData *)[NSKeyedUnarchiver unarchiveObjectWithData :data];
    }
    return obj;
}

//結合

//

-(void)setSampleDataDic :(NSDictionary *)obj forKey :(NSString *)aKey{
    NSArray *keyarr = [obj allKeys];
    
    [self setObject :keyarr forKey :aKey];
    
    for(int i = 0; i < [keyarr count]; i++){
        SampleData *val = [obj objectForKey :[keyarr objectAtIndex :i]];
        
        [self setSampleData :val forKey :[keyarr objectAtIndex :i]];
    }
}

-(NSMutableDictionary *)sampleDataDicForKey :(NSString *)aKey{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    NSArray *keyarr = [self arrayForKey :aKey];
    
    for(int i = 0; i < [keyarr count]; i++){
        SampleData *val = [self sampleDataForKey :[keyarr objectAtIndex :i]];
    }
    return dic;
}
@end
