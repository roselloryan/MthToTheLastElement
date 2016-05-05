//
//  main.m
//  MthToLastElement


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *line = @"a b c d e f g h i j k l m n o p q r s 2";
        
        NSArray *componentsArray = [line componentsSeparatedByString:@" "];
        
        NSInteger mthDistance = [(NSString *)[componentsArray lastObject] integerValue];
        
        NSInteger indexFromEndOfArray = (componentsArray.count - 1 - mthDistance);
        
        // as per instructions: if mth place exceeds given characters "ignore"
        if (indexFromEndOfArray >= 0) {
            
            NSString *solutionString = [componentsArray objectAtIndex:indexFromEndOfArray];
            
            NSLog(@"solutionString: %@", solutionString);
        }
        
    }
    return 0;
}
