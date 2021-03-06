//
//  NSDictionary+IPQueueDispatcher.m
//  Pods
//
//  Created by Ilias Pavlidakis on 15/06/2016.
//
//

#import "NSDictionary+IPQueueDispatcher.h"

@implementation NSDictionary (IPQueueDispatcher)

- (NSDictionary *)addObject:(id)object
                     forKey:(NSString *)key
{
    NSDictionary *result = self;
    if (object && key){
        NSMutableDictionary *temp = [self mutableCopy];
        [temp setObject:object forKey:key];
        result = [NSDictionary dictionaryWithDictionary:temp];
    }
    return result;
}

- (NSDictionary *)addObjectsFromDictionary:(NSDictionary *)dictionary
{
    NSDictionary *result = self;
    if (dictionary && [dictionary count] > 0){
        NSMutableDictionary *temp = [self mutableCopy];
        [temp addEntriesFromDictionary:dictionary];
        result = [NSDictionary dictionaryWithDictionary:temp];
    }
    return result;
}

@end