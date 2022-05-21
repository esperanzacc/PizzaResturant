//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Esperanza on 2022-05-20.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"
#import "Kitchen.h"

@implementation Pizza

- (instancetype)initWithPizzaSize: (PizzaSize) pizzaSize andToppings: (NSArray *) toppings
{
  self = [super init];
  if (self) {
    _pizzaSize = pizzaSize;
    _toppings = toppings;
  }
  return self;
}

+ (Pizza *)largePepperoni {
  NSArray *toppings = [[NSArray alloc]initWithObjects:@"pepperoni", nil];
  Pizza *largePepperoniPizza = [[Pizza alloc]initWithPizzaSize:large andToppings:toppings];
  return largePepperoniPizza;
}

@end
