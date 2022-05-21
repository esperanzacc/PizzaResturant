//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Esperanza on 2022-05-20.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

typedef NS_ENUM(char, PizzaSize) {
  small,
  medium,
  large
};

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

@property (nonatomic) PizzaSize pizzaSize;
@property (nonatomic) NSArray * toppings;

- (instancetype)initWithPizzaSize: (PizzaSize) pizzaSize andToppings: (NSArray *) toppings;
+ (Pizza *)largePepperoni;

@end

NS_ASSUME_NONNULL_END
