//
//  StoryPartViewController.m
//  AVStorybook
//
//  Created by Katherine Peterson on 2015-09-11.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "StoryPartViewController.h"
@import AVFoundation;
@import MobileCoreServices;
#import "Page.h"

@interface StoryPartViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *storyImageView;
@property (strong, nonatomic) IBOutlet UIButton *storyCameraButton;
@property (strong, nonatomic) IBOutlet UIButton *storyMicrophoneButton;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;
@property (strong, nonatomic) AVAudioRecorder *audioRecorder;

@end

@implementation StoryPartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Image Picker and display

- (IBAction)cameraClicked:(id)sender {
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    pickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    pickerController.delegate = self;
    pickerController.mediaTypes = @[(__bridge NSString *)kUTTypeImage];
    
    [self presentViewController:pickerController animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    self.storyImageView.image = info[UIImagePickerControllerOriginalImage];
    self.storyPage.pageImage = info[UIImagePickerControllerOriginalImage];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)microphoneClicked:(id)sender {
    
//    avAudiorecorder
}

- (IBAction)imageTapped:(id)sender {
//    avaudioPlayer
}

@end
