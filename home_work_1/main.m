//
//  main.m
//  home_work_1
//
//  Created by farades on 27.10.14.
//  proglive.ru
//

#import <Foundation/Foundation.h>

#define MY_AGE       22
#define DAYS_IN_YEAR 365.25

NSString* divide(int num1, int num2);

int main(int argc, const char * argv[]) {

    int       myAgeInTenYears = MY_AGE + 10;
    float     daysPassed      = myAgeInTenYears * DAYS_IN_YEAR;
    unsigned  firstVar        = 777;
    unsigned  secondVar       = 666;
    int       result          = firstVar / secondVar;
    int       reminder        = firstVar % secondVar;
    int       numerator       = 115;
    int       divider         = 55;
    NSString  *firstString    = @"I can";
    NSString  *secondString   = @"code";
    
    NSLog(@"Через 10 лет мне будет %d лет, с момента моего рождения пройдет %.2f дней", myAgeInTenYears, daysPassed);
    NSLog(@"При делении %u на %u результат равен %d, остаток равен %d", firstVar, secondVar, result, reminder);
    NSLog(@"Результат деления %d на %d равен %@", numerator, divider, divide(numerator, divider));
    NSLog(@"%@ %@!", firstString, secondString);

    return 0;
}

NSString* divide(int numerator, int divider) {
    int integerPart = numerator / divider;
    int residue     = numerator % divider;
    NSString *result = [NSString stringWithFormat:@"%d %d/%d", integerPart, residue, divider];
    
    return result;
}
