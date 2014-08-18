//
//  DetailViewController.m
//  DrinkMixer
//
//  Created by Administrator on 8/15/14.
//  Copyright (c) 2014 Administrator. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

@synthesize nameTextField = nameTextField_ , ingredientsTextView = ingredientsTextView_ , directionsTextView = directionsTextView_ , drink = drink_;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;

        // Update the view.
        [self configureView];
    }
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"%@", drink_);
    self.nameTextField.text = [drink_ objectForKey:@"name"];
    self.ingredientsTextView.text = [drink_ objectForKey:@"ingredients"];
    self.directionsTextView.text = [drink_ objectForKey:@"directions"];
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
