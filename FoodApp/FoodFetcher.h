//
//  FoodFetcher.h
//  FoodApp
//
//  Created by Mathias Fredriksson on 3/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FoodFetcher : NSObject


@property (retain, nonatomic) NSArray *foodData;

+ (id)sharedInstance;
- (void)fetchFoodList;
- (void)fetchData:(NSArray *)responseData;
- (void)encodeWithCoder:(NSCoder *)encode;
- (id)initWithCoder:(NSCoder *)decoder;

- (void) saveData;
- (NSArray*) loadData; 
@end
