//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
          if ([inputString isEqualToString:@"pepperoni"]) {
            [restaurantKitchen makeLargePepperoni];
            NSLog(@"\nYour largePepperoni pizza is here.");
          } else {
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
          PizzaSize orderSize = [restaurantKitchen pizzaSize:[commandWords objectAtIndex:0]];
          NSArray *toppingsArray = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)];
          [restaurantKitchen makePizzaWithSize:orderSize toppings:toppingsArray];
         
          NSString *pizzaSize = [Kitchen sizeStringFromPizzaSize:orderSize];
          NSString *pizzaToppings = [toppingsArray componentsJoinedByString:@", "];
          NSLog(@"\nYour pizza is %@ size with %@.", pizzaSize, pizzaToppings);
          }
          
        }

    }
    return 0;
}

