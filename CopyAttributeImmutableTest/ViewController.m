//
//  ViewController.m
//  CopyAttributeImmutableTest
//
//  Created by Adam Johns on 1/14/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *personNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *otherNameLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableString *otherName = [NSMutableString stringWithString:@"adam"];
    Person *person = [[Person alloc] init];
    person.name = otherName;
    
    // If person.name has strong attribute then the following line
    // will change both otherName AND person.name. If person.name
    // has copy attribute then the following line will only change
    // otherName and person.name doesn't change.
    [otherName setString:@"john"];
    
    _personNameLabel.text = [NSString stringWithFormat:@"person.name: %@", person.name];
    _otherNameLabel.text = [NSString stringWithFormat:@"otherName: %@", otherName];
}

@end
