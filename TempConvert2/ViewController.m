//
//  ViewController.m
//  TempConvert2
//
//  Created by Aeonz on 10/9/17.
//  Copyright © 2017 Aeonz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmControl;
@property (weak, nonatomic) IBOutlet UILabel *activeTemp;
@property (weak, nonatomic) IBOutlet UILabel *nameTemp1;
@property (weak, nonatomic) IBOutlet UILabel *nameTemp2;
@property (weak, nonatomic) IBOutlet UILabel *numTemp1;
@property (weak, nonatomic) IBOutlet UILabel *numTemp2;
@property (weak, nonatomic) IBOutlet UISlider *sliderTemp;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.sgmControl.selectedSegmentIndex == 0) {
        self.nameTemp1.text = @"Degree in Farenheit";
        self.nameTemp2.text = @"Degree in Kelvin";
         self.sliderTemp.value = 50;
        self.activeTemp.text = @"50";
        self.numTemp1.text = @"82";
        self.numTemp2.text = @"323";
     
    }
    else if (self.sgmControl.selectedSegmentIndex == 1) {
        self.nameTemp1.text = @"Degree in Celcius";
        self.nameTemp2.text = @"Degree in Kelvin";
        self.activeTemp.text = @"82";
        self.numTemp1.text = @"50";
        self.numTemp2.text = @"323";
    
    }
    if (self.sgmControl.selectedSegmentIndex == 2) {
        self.nameTemp1.text = @"Degree in Celcius";
        self.nameTemp2.text = @"Degree in Farenheit";
        self.activeTemp.text = @"323";
        self.numTemp1.text = @"50";
        self.numTemp2.text = @"82";
       
    }
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)silderTempMoved:(id)sender {
    [self.activeTemp setText:[NSString stringWithFormat:@"%d" , (int)self.sliderTemp.value]];
    if (self.sgmControl.selectedSegmentIndex == 0) {
        [self.numTemp1 setText:[NSString stringWithFormat:@"%d" , (int)self.sliderTemp.value + 32]];
        [self.numTemp2 setText:[NSString stringWithFormat:@"%d" , (int)self.sliderTemp.value + 273]];
    }
    else if (self.sgmControl.selectedSegmentIndex == 1) {
        [self.numTemp1 setText:[NSString stringWithFormat:@"%d" , (int)self.sliderTemp.value -32 ]];
        [self.numTemp2 setText:[NSString stringWithFormat:@"%d" , (int)self.sliderTemp.value + 241]];
    }
    else if (self.sgmControl.selectedSegmentIndex == 2) {
        [self.numTemp1 setText:[NSString stringWithFormat:@"%d" , (int)self.sliderTemp.value - 273]];
        [self.numTemp2 setText:[NSString stringWithFormat:@"%d" , (int)self.sliderTemp.value - 241]];
    }
    
    
}

- (IBAction)SgmPressed:(UISegmentedControl *)sender {
    if (self.sgmControl.selectedSegmentIndex == 0) {
        self.nameTemp1.text = @"Degree in Farenheit";
        self.nameTemp2.text = @"Degree in Kelvin";
        self.sliderTemp.minimumValue = 0;
        self.sliderTemp.maximumValue = 100;
          self.sliderTemp.value = 50;
        self.numTemp1.text = @"82";
        self.numTemp2.text = @"323";
  [self.activeTemp setText:[NSString stringWithFormat:@"%d" , (int)self.sliderTemp.value]];
  

    }
    else if (self.sgmControl.selectedSegmentIndex == 1) {
        self.nameTemp1.text = @"Degree in Celcius";
        self.nameTemp2.text = @"Degree in Kelvin";
        self.sliderTemp.minimumValue = 32;
        self.sliderTemp.maximumValue = 132;
        self.sliderTemp.value = 82;
        self.numTemp1.text = @"50";
        self.numTemp2.text = @"323";
     [self.activeTemp setText:[NSString stringWithFormat:@"%d" , (int)self.sliderTemp.value]];
        

    }
    else if (self.sgmControl.selectedSegmentIndex == 2) {
        self.nameTemp1.text = @"Degree in Celcius";
        self.nameTemp2.text = @"Degree in Farenheit";
        self.sliderTemp.minimumValue = 273;
        self.sliderTemp.maximumValue = 373;
          self.sliderTemp.value = 323;
        self.numTemp1.text = @"50";
        self.numTemp2.text = @"82";
 [self.activeTemp setText:[NSString stringWithFormat:@"%d" , (int)self.sliderTemp.value]];

    }
}



@end
