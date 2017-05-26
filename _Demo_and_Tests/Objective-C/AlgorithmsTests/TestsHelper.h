//
//  TestsHelper.h
//  Algorithms
//

#import <Foundation/Foundation.h>

@interface TestsHelper : NSObject

@property (class, strong, nonatomic) NSMutableArray *array;
@property (class, strong, nonatomic) NSMutableArray *sortedArrayAsc;
@property (class, strong, nonatomic) NSMutableArray *sortedArrayDesc;

+ (void)nullifyArrays;

@end
