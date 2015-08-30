//
//  ViewController.m
//  Calculator
//
//  Created by Văn Tiến Tú on 8/23/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *LabelResult;
@property (weak, nonatomic) IBOutlet UILabel *labelKetQua;

@end

@implementation ViewController
{
    NSMutableString *s1;
    NSMutableString *strTest;
    NSMutableString *textCong;
    
    float valueCong,valueChia,valueTru,valueNhan;
    float Answer;
    BOOL variable;
    BOOL avariTest;
    BOOL pheptinhthu2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    s1 = [[NSMutableString alloc] init];
    textCong = [[NSMutableString alloc] init];
    Answer = 0;
    variable = false;
    avariTest = false;
    
}
-(void) ShowLabel{
    
    if (variable == false) {
        
        NSString *s2 = [NSString stringWithFormat:@"%0.2f",Answer];
        BOOL test = [s1 hasPrefix: s2];
        if (test) {
            
            NSMutableString *s3 = [NSMutableString stringWithFormat:@"%0.2f",Answer];
            
            NSString *s4;
            s4 = [s1 substringFromIndex:[s3 length] + 1];
            NSLog(@"%@",s4);
            
            _labelKetQua.text = [NSString stringWithString:s4];
            
    
        }else{
            
            _labelKetQua.text = [NSMutableString stringWithString:s1];
        }
    }else {
        _labelKetQua.text = [NSString stringWithString:textCong];
        
    }
    variable = false;
}
- (IBAction)buttonOne:(id)sender {
    
    [s1 appendString:@"1"];
    [textCong appendString:@"1"];
    [self ShowLabel];
}
- (IBAction)buttonTwo:(id)sender {
    
    [s1 appendString:@"2"];
    [textCong appendString:@"2"];
    
    [self ShowLabel];
    
}
- (IBAction)buttonThree:(id)sender {
    
    [s1 appendString:@"3"];
    [textCong appendString:@"3"];
    
    [self ShowLabel];
}
- (IBAction)buttonFour:(id)sender {
    
    [s1 appendString:@"4"];
    [textCong appendString:@"4"];
    
    [self ShowLabel];
}
- (IBAction)buttonFive:(id)sender {
    
    [s1 appendString:@"5"];
    [textCong appendString:@"5"];
    
    [self ShowLabel];
}
- (IBAction)buttonSix:(id)sender {
    
    [s1 appendString:@"6"];
    [textCong appendString:@"6"];
    
    [self ShowLabel];
}
- (IBAction)buttonSeven:(id)sender {
    
    [s1 appendString:@"7"];
    [textCong appendString:@"7"];
    
    [self ShowLabel];
}
- (IBAction)buttonEight:(id)sender {
    
    [s1 appendString:@"8"];
    [textCong appendString:@"8"];
    
    [self ShowLabel];
}
- (IBAction)buttonNine:(id)sender {
    
    [s1 appendString:@"9"];
    [textCong appendString:@"9"];
    
    [self ShowLabel];
}
- (IBAction)buttonZero:(id)sender {
    
    [s1 appendString:@"0"];
    [textCong appendString:@"0"];
    
    //NSRange match;
    
    [self ShowLabel];

}
- (IBAction)buttonDaucham:(id)sender {
    
    [s1 appendString:@"."];
    [textCong appendString:@"."];
    
    [self ShowLabel];

}

- (IBAction)buttonCong:(id)sender {
    
    //NSMutableString *s2;
    if(variable == false){
        
        NSRange match;
        
        if ((match = [s1 rangeOfString:@"+"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"-"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"x"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"/"]).location !=NSNotFound ) {
            
            [s1 appendString:@""];
        }else{
            
            [s1 appendString:@"+"];
            _labelKetQua.text = [NSString stringWithString:s1];
        }
    }else{
        
        s1 = [NSMutableString stringWithFormat:@"%0.2f+",Answer];
        _LabelResult.text = [NSString stringWithString:s1];
        [s1 appendString:textCong];
        _labelKetQua.text = [NSString stringWithFormat:@""];
    }
}

- (IBAction)buttonTru:(id)sender {
    
    if(variable == false){
        
        NSRange match;
        
        if ((match = [s1 rangeOfString:@"+"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"-"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"x"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"/"]).location !=NSNotFound) {
            
            [s1 appendString:@""];
        }else{
            
            [s1 appendString:@"-"];
            _labelKetQua.text = [NSString stringWithString:s1];
        }
        
    }else{
        
        s1 = [NSMutableString stringWithFormat:@"%0.2f-",Answer];
        _LabelResult.text = [NSString stringWithString:s1];
        [s1 appendString:textCong];
        _labelKetQua.text = [NSString stringWithFormat:@""];
    }
}
- (IBAction)buttonNhan:(id)sender {
    
    if(variable == false){
       
        NSRange match;
        
        if ((match = [s1 rangeOfString:@"+"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"-"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"x"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"/"]).location !=NSNotFound) {
            
            [s1 appendString:@""];
        }else{
            
            [s1 appendString:@"x"];
            _labelKetQua.text = [NSString stringWithString:s1];
        }
    }else{
        
        s1 = [NSMutableString stringWithFormat:@"%0.2fx",Answer];
        _LabelResult.text = [NSString stringWithString:s1];
        [s1 appendString:textCong];
        _labelKetQua.text = [NSString stringWithFormat:@""];
    }
}
- (IBAction)buttonChia:(id)sender {
    
    if(variable == false){
        
        NSRange match;
        
        if ((match = [s1 rangeOfString:@"+"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"-"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"x"]).location !=NSNotFound ||
            (match = [s1 rangeOfString:@"/"]).location !=NSNotFound) {
            
            [s1 appendString:@""];
        }else{
            
            [s1 appendString:@"/"];
            _labelKetQua.text = [NSString stringWithString:s1];
        }
        
    }else{
        
        s1 = [NSMutableString stringWithFormat:@"%0.2f/",Answer];
        _LabelResult.text = [NSString stringWithString:s1];
        [s1 appendString:textCong];
        _labelKetQua.text = [NSString stringWithFormat:@""];
    }
}

- (IBAction)buttonBang:(id)sender {
    
    if (variable == false) {
        
        [self xulyPhepTinh];
        _LabelResult.text = [NSString stringWithFormat:@"%0.2f",Answer];
        s1 = [NSMutableString stringWithFormat:@""];
        textCong = [NSMutableString stringWithFormat:@""];
        
        variable = true;
        //avariTest = true;
    }else {
        _LabelResult.text = [NSString stringWithFormat:@"%0.2f",Answer];
    }
    
}
- (IBAction)buttonClear:(id)sender {
    
    NSString *test =s1;
    NSString *str = @"";
    
    if ([test isEqualToString:str ]) {
    
        _labelKetQua.text = [NSString stringWithFormat:@""];
        
    }else {
        //if (avariTest == false) {
            
        //}
            //int count = (unsigned int)[s1 length];
            //NSUInteger lenghtS1 = (unsigned long)(count -1);
            
            NSString *s2 = [s1 substringWithRange:NSMakeRange(0, [s1 length] -1 )];
            s1 = [[NSMutableString alloc] init];
            [s1 appendString:s2];
    }
    
    int coutText = (unsigned int)[textCong length];
    
    if (coutText > 1) {
        
        NSUInteger lenghtTextCong = (unsigned long)(coutText - 1);
        NSString *text = [textCong substringWithRange:NSMakeRange(0, lenghtTextCong)];
        textCong = [[NSMutableString alloc] init];
        [textCong appendString:text];
        
        _labelKetQua.text = [NSString stringWithString:textCong];
    }else{
        
        _labelKetQua.text = [NSString stringWithFormat:@""];
        textCong = [[NSMutableString alloc] init];
        avariTest = true;
    }
    
    NSLog(@"gia tri textCong = %d",coutText);
    NSLog(@"textCong = %@",textCong);
}
- (IBAction)buttonClearAll:(id)sender {
    
    _labelKetQua.text = [NSString stringWithFormat:@""];
    _LabelResult.text = [NSString stringWithFormat:@""];
    s1 = [[NSMutableString alloc] init];
    
    variable = false;
    avariTest = false;
}
- (IBAction)buttonAnswer:(id)sender {
    
    variable = true;
    _labelKetQua.text = [NSString stringWithFormat:@"Ans"];
    s1 = [NSMutableString stringWithFormat:@""];
    textCong = [NSMutableString stringWithFormat:@""];
    
    //avariTest = false;
}
- (IBAction)button1X:(id)sender {
    
    if (variable == false) {
        
        NSString *s2 = [NSString stringWithFormat:@"1/%@",s1];
        s1 = [[NSMutableString alloc] init];
        [s1 appendString:s2];
        _labelKetQua.text = [NSString stringWithString:s1];
    }else{
        _labelKetQua.text = [NSString stringWithFormat:@"1/%0.2f",Answer];
        Answer = 1 / Answer;
        _LabelResult.text = [NSString stringWithFormat:@"%0.2f",Answer];
    }
    
    avariTest = true;
    //s1 = [[NSMutableString alloc] init];
}
- (IBAction)buttonX2:(id)sender {
    
    if (variable == false) {
        
        strTest = [NSMutableString stringWithFormat:@"%@^2",s1];
        _labelKetQua.text = [NSString stringWithFormat:@"%@^2",s1];
    }else{
        
        _labelKetQua.text = [NSString stringWithFormat:@"%0.2f^2",Answer];
        //Answer = Answer * Answer;
        _LabelResult.text = [NSString stringWithFormat:@"%0.2f",Answer];
        avariTest = true;
    }
    
    //s1 = [[NSMutableString alloc] init];
}
- (IBAction)buttonSqrt:(id)sender {
    
    if (variable == false) {
        
        strTest = [NSMutableString stringWithFormat:@"Sqrt(%@)",s1];
        _labelKetQua.text = [NSString stringWithFormat:@"Sqrt(%@)",s1];
        
    }else {
        
        _labelKetQua.text = [NSString stringWithFormat:@"sqrt(%0.2f)",Answer];
        Answer = sqrtf(Answer);
        _LabelResult.text = [NSString stringWithFormat:@"%0.2f",Answer];
        
        avariTest = true;
    }
    
    
}

-(void) xulyPhepTinh{
    
    NSString *Cong,*Tru,*Nhan,*Chia;
    Cong = @"+";
    Nhan = @"x";
    Chia = @"/";
    Tru = @"-";
    
    NSRange math;
    NSString *s2;
    
    BOOL result = [s1 hasPrefix:@"-"];
    
    if(result){
        
        s2 = [s1 substringFromIndex:1];
        
        if ((math = [s2 rangeOfString:Cong]).location != NSNotFound) {
            
            NSArray *mang = [s2 componentsSeparatedByString:Cong];
            Answer = -[mang[0] floatValue] + [mang[1] floatValue];
            
        } else if((math = [s2 rangeOfString:Tru]).location !=NSNotFound){
            
            NSArray *mang = [s2 componentsSeparatedByString:Tru];
            Answer = -[mang[0] floatValue] - [mang[1] floatValue];
            
        } else if((math = [s2 rangeOfString:Nhan]).location !=NSNotFound){
            
            NSArray *mang = [s2 componentsSeparatedByString:Nhan];
            Answer = -[mang[0] floatValue] * [mang[1] floatValue];
            
        } else if((math = [s2 rangeOfString:Chia]).location !=NSNotFound){
            
            NSArray *mang = [s2 componentsSeparatedByString:Chia];
            Answer = -[mang[0] floatValue] / [mang[1] floatValue];
        }else if((math = [strTest rangeOfString:@"^"]).location != NSNotFound){
            
            Answer = [s1 floatValue] * [s1 floatValue];
        }else if((math = [strTest rangeOfString:@"Sqrt"]).location != NSNotFound){
            
            //_LabelResult.text = @"inf";
            Answer = sqrt([s1 floatValue]);
        }else{
            Answer = -[s2 floatValue];
        }
        
    }else{
    
        if ((math = [s1 rangeOfString:Cong]).location != NSNotFound) {
            
            NSArray *mang = [s1 componentsSeparatedByString:Cong];
            Answer = [mang[0] floatValue] + [mang[1] floatValue];
        
        } else if((math = [s1 rangeOfString:Tru]).location !=NSNotFound){
        
            NSArray *mang = [s1 componentsSeparatedByString:Tru];
            Answer = [mang[0] floatValue] - [mang[1] floatValue];

        } else if((math = [s1 rangeOfString:Nhan]).location !=NSNotFound){
        
            NSArray *mang = [s1 componentsSeparatedByString:Nhan];
            Answer = [mang[0] floatValue] * [mang[1] floatValue];
        
        } else if((math = [s1 rangeOfString:Chia]).location !=NSNotFound){
        
            NSArray *mang = [s1 componentsSeparatedByString:Chia];
            Answer = [mang[0] floatValue] / [mang[1] floatValue];
        }else if((math = [strTest rangeOfString:@"^"]).location != NSNotFound){
            
            Answer = [s1 floatValue] * [s1 floatValue];
        }else if((math = [strTest rangeOfString:@"Sqrt"]).location != NSNotFound){
            
            Answer = sqrt([s1 floatValue]);
        }else {
            Answer = [s1 floatValue];
        }
   }
}

@end









