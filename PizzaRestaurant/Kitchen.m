//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
  Pizza *pizza = [[Pizza alloc]initWithPizzaSize:size andToppings:toppings];
  return pizza;
}


- (PizzaSize)pizzaSize: (NSString *)userInput {
  PizzaSize type;

  if ([userInput isEqualToString:@"small"]) {
    type = small;
    return type;
  } else if ([userInput isEqualToString:@"medium"]) {
    type = medium;
    return type;
  } else if ([userInput isEqualToString:@"large"]) {
    type = large;
    return type;
  } else {
    return medium;
  }
  
}

// change enum type to string and print
+ (NSString *)sizeStringFromPizzaSize:(PizzaSize)size {
    switch (size) {
        case small:
            return @"small";
            
        case medium:
            return @"medium";
            
        case large:
            return @"large";
    }
}

- (Pizza *)makeLargePepperoni {
  Pizza *pepperoniPizza = [Pizza largePepperoni];
  return pepperoniPizza;
}

@end
