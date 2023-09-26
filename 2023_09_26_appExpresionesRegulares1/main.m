//
//  main.m
//  2023_09_26_appExpresionesRegulares1
//
//  Created by Ivanovicx Nuñez on 26/09/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString *cadena1 = @"abcd abc ca db BD AC TOrreon COahuila 1 21 12 123 01010101";
        NSLog(@"Cadena: %@", cadena1);
        
        NSError *error = nil;
        
        NSMutableString *cadenaPatron = [[NSMutableString alloc] init];
        //[cadenaPatron appendString:@"\\b(a|b)(c|d)\\b"];
        //[cadenaPatron appendString:@"(t|c)(o)"];
        
        //[cadenaPatron appendString:@"[a-z]"];
        //[cadenaPatron appendString:@"[^aeiou]"];
        //[cadenaPatron appendString:@"[a-f0-9]{1,2}"];
        [cadenaPatron appendString:@"(0|1){8}"];
        
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:cadenaPatron options:NSRegularExpressionCaseInsensitive error:&error];
        
        NSArray *matches = [regex matchesInString:cadena1 options:0 range:NSMakeRange(0, cadena1.length)];
        
        for(NSTextCheckingResult *matchResultado in matches){
            NSString *match = [cadena1 substringWithRange:matchResultado.range];
            NSLog(@"Coincidencia: %@", match);
        }
        
        /*
            1.- Diseñe un patrón o expresión regular para determinar las letras minusculas en la cadena de entrada:
                [cadenaPatron appendString:@"[a-z]"];
         
            2.- Diseñe una expresión regular para determinar solo letras consonantes en la cadena de entrada:
                [cadenaPatron appendString:@"[^aeiou]"];
         
            3.- Diseñe una expresión regular para determinar si un número es hexadecimal y hasta de dos digitos
                [cadenaPatron appendString:@"[a-f0-9]{1,2}"];
         
            4.- Determine con una expresión regular si una cadena de entrada es un número binario de 8 bits
                [cadenaPatron appendString:@"(0|1){8}"];
                
         */
    }
    return 0;
}
