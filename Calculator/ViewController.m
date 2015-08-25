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
    NSMutableString *textCong,*textTru,*textChia,*textNhan;
    
    float valueCong,valueChia,valueTru,valueNhan;
    float Answer;
    BOOL variable;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    s1 = [[NSMutableString alloc] init];
    textCong = [[NSMutableString alloc] init];
    textTru = [[NSMutableString alloc] init];
    Answer = 0;
    variable = false;
   
    
}

- (IBAction)buttonOne:(id)sender {

    [s1 appendString:@"1"];
    [textCong appendString:@"1"];
    
    _LabelResult.text = [NSMutableString stringWithString:s1];

}
- (IBAction)buttonTwo:(id)sender {
    
    [s1 appendString:@"2"];
    [textCong appendString:@"2"];
    
    _LabelResult.text = [NSMutableString stringWithString:s1];
    
}
- (IBAction)buttonThree:(id)sender {
    
    [s1 appendString:@"3"];
    [textCong appendString:@"3"];
    
    _LabelResult.text = [NSMutableString stringWithString:s1];
}
- (IBAction)buttonFour:(id)sender {
    
    [s1 appendString:@"4"];
    [textCong appendString:@"4"];
    
    _LabelResult.text = [NSMutableString stringWithString:s1];
}
- (IBAction)buttonFive:(id)sender {
    
    [s1 appendString:@"5"];
    [textCong appendString:@"5"];
    
    _LabelResult.text = [NSMutableString stringWithString:s1];
}
- (IBAction)buttonSix:(id)sender {
    
    [s1 appendString:@"6"];
    [textCong appendString:@"6"];
    
    _LabelResult.text = [NSMutableString stringWithString:s1];
}
- (IBAction)buttonSeven:(id)sender {
    
    [s1 appendString:@"7"];
    [textCong appendString:@"7"];
    
    _LabelResult.text = [NSMutableString stringWithString:s1];
}
- (IBAction)buttonEight:(id)sender {
    
    [s1 appendString:@"8"];
    [textCong appendString:@"8"];
    
    _LabelResult.text = [NSMutableString stringWithString:s1];
}
- (IBAction)buttonNine:(id)sender {
    
    [s1 appendString:@"9"];
    [textCong appendString:@"9"];
    
    _LabelResult.text = [NSMutableString stringWithString:s1];
}
- (IBAction)buttonZero:(id)sender {
    
    [s1 appendString:@"0"];
    [textCong appendString:@"0"];
    
    _LabelResult.text = [NSMutableString stringWithString:s1];

}
- (IBAction)buttonDaucham:(id)sender {
    
    [s1 appendString:@"."];
    [textCong appendString:@"."];
    _LabelResult.text = [NSMutableString stringWithString:s1];

}


- (IBAction)buttonCong:(id)sender {
    if(variable == false){
        
        [s1 appendString:@"+"];
        _LabelResult.text = [NSString stringWithString:s1];
        
    }else{
        
        s1 = [NSMutableString stringWithFormat:@"Ans+"];
        _LabelResult.text = [NSString stringWithString:s1];
        [s1 appendString:textCong];
    }
}
- (IBAction)buttonTru:(id)sender {
    
    if(variable == false){
        
        [s1 appendString:@"-"];
        _LabelResult.text = [NSString stringWithString:s1];
        
    }else{
        
        s1 = [NSMutableString stringWithFormat:@"Ans-"];
        _LabelResult.text = [NSString stringWithString:s1];
        [s1 appendString:textCong];
    }
}
- (IBAction)buttonNhan:(id)sender {
    
    if(variable == false){
        
        [s1 appendString:@"x"];
        _LabelResult.text = [NSString stringWithString:s1];
        
    }else{
        
        s1 = [NSMutableString stringWithFormat:@"Ansx"];
        _LabelResult.text = [NSString stringWithString:s1];
        [s1 appendString:textCong];
    }
}
- (IBAction)buttonChia:(id)sender {
    
    if(variable == false){
        
        [s1 appendString:@"/"];
        _LabelResult.text = [NSString stringWithString:s1];
        
    }else{
        
        s1 = [NSMutableString stringWithFormat:@"Ans/"];
        _LabelResult.text = [NSString stringWithString:s1];
        [s1 appendString:textCong];
    }
}

- (IBAction)buttonBang:(id)sender {
    
    if (variable == false) {
        
        [self xulyPhepTinh];
        _labelKetQua.text = [NSString stringWithFormat:@"%f",Answer];
        s1 = [NSMutableString stringWithFormat:@""];
        textCong = [NSMutableString stringWithString:@""];
        
        variable = true;
    }else {
        
        [self xulykhiAnskhachKhong];
        _labelKetQua.text = [NSString stringWithFormat:@"%f",Answer];
        
        textCong = [NSMutableString stringWithString:@""];
    }
}
- (IBAction)buttonClear:(id)sender {
    
    if (variable == false) {
    
        int count = (unsigned int)[s1 length];
        NSUInteger lenghtS1 = (unsigned long)(count -1);
        NSUInteger lenghtTextCong = (unsigned long)(((unsigned int)[textCong length]) - 1);
    
        NSString *s2 = [s1 substringWithRange:NSMakeRange(0, lenghtS1)];
        NSString *text = [textCong substringWithRange:NSMakeRange(0, lenghtTextCong)];
    
        textCong = [[NSMutableString alloc] init];
        [textCong appendString:text];
    
        s1 = [[NSMutableString alloc] init];
        [s1 appendString:s2];
    
        _LabelResult.text = [NSString stringWithString:s1];
    }else {
        
        _labelKetQua.text = [NSString stringWithFormat:@"%f",Answer];
    }
}
- (IBAction)buttonClearAll:(id)sender {
    
    _labelKetQua.text = [NSString stringWithFormat:@""];
    _LabelResult.text = [NSString stringWithFormat:@""];
    s1 = [[NSMutableString alloc] init];
    
    variable = false;
}
- (IBAction)buttonAnswer:(id)sender {
    
    variable = true;
    
    _LabelResult.text = [NSString stringWithFormat:@"Ans"];
}
- (IBAction)button1X:(id)sender {
    
    Answer = 1 / Answer;
    _LabelResult.text = [NSString stringWithFormat:@"1/Ans"];
    _labelKetQua.text = [NSString stringWithFormat:@"%f",Answer];
    
    variable = true;
    //s1 = [[NSMutableString alloc] init];
}
- (IBAction)buttonX2:(id)sender {
    
    Answer = Answer * Answer;
    _LabelResult.text = [NSString stringWithFormat:@"Ans^2"];
    _labelKetQua.text = [NSString stringWithFormat:@"%f",Answer];
    
    variable = true;
    //s1 = [[NSMutableString alloc] init];
}
- (IBAction)buttonSqrt:(id)sender {
    
    Answer = sqrtf(Answer);
    _LabelResult.text = [NSString stringWithFormat:@"sqrt(Ans)"];
    _labelKetQua.text = [NSString stringWithFormat:@"%f",Answer];
    
    variable = true;
    //s1 = [[NSMutableString alloc] init];
}

-(void) xulyPhepTinh{
    
    NSString *Cong,*Tru,*Nhan,*Chia;
    Cong = @"+";
    Nhan = @"x";
    Chia = @"/";
    Tru = @"-";
    
    NSRange math;
    
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
    }else {
        Answer = [s1 floatValue];
    }
    
}
-(void) xulykhiAnskhachKhong{
    
    NSString *Cong,*Tru,*Nhan,*Chia;
    Cong = @"+";
    Nhan = @"x";
    Chia = @"/";
    Tru = @"-";
    
    NSRange math;
    
    if ((math = [s1 rangeOfString:Cong]).location != NSNotFound) {
        
        Answer = Answer + [textCong floatValue];
        
    } else if((math = [s1 rangeOfString:Tru]).location !=NSNotFound){
        
       Answer = Answer - [textCong floatValue];
        
    } else if((math = [s1 rangeOfString:Nhan]).location !=NSNotFound){
        
       Answer = Answer * [textCong floatValue];
        
    } else if((math = [s1 rangeOfString:Chia]).location !=NSNotFound){
        
        Answer = Answer / [textCong floatValue];
    }
    
    //[self xulykhiAnskhachKhong];
}
@end









