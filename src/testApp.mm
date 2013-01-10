#include "testApp.h"

#import "AVFoundationVideoPlayer.h"

//--------------------------------------------------------------
void testApp::setup(){	
	// initialize the accelerometer
    ofBackground(255,255,255);
    ofSetFrameRate(60);

	ofxAccelerometer.setup();
    
    coreLocation = new ofxiPhoneCoreLocation();
    hasCompass = coreLocation->startHeading();
    
    heading = 0.0;
    
    windSound.loadSound("sounds/wind.wav");
    windSound.setVolume(0.5f);
    windSound.setMultiPlay(false);
    windSound.setLoop(true);
    windSound.play();
    
    for (int i = 0; i < 9; i++){
        EurydicePoem[i].loadSound("sounds/EurydicePoem0" + ofToString(i) + ".wav");
        EurydicePoem[i].setMultiPlay(false);
        EurydicePoem[i].setVolume(1.0f);
    }
    
        
 //   video.loadMovie("fogMovieH264_480_2.mov");
  //  video.play();
  //  video.setLoopState(OF_LOOP_NORMAL);
    
    //AVFoundationVideoPlayer * avVideoPlayer;
  //  avVideoPlayer = (AVFoundationVideoPlayer *)video.getAVFoundationVideoPlayer();
   // [avVideoPlayer setVideoPosition:CGPointMake(0,240)];
    
    
    heading = 0.0;
    index = 0;
    previousIndex = 0;
    playTime = 0;

}

//--------------------------------------------------------------
void testApp::update(){
 //   if(!video.isLoaded()){
 //       return;
//    }
    heading = (coreLocation->getTrueHeading());
 //   video.update();
    audioPlacement();
    ofSoundUpdate();
    playTime = ofMap(ofGetElapsedTimeMillis(), 0, 120000, 0, 1);



}

//--------------------------------------------------------------
void testApp::draw(){

    ofEnableAlphaBlending();
   // video.getTexture()->draw(0, 0);
   
   // Debug 
    ofSetColor(57);
    ofDrawBitmapString(ofToString(index), 8, 20);
    ofDrawBitmapString(ofToString(playTime), 8, 50);
    ofDrawBitmapString(ofToString(EurydicePoem[index].getPosition()), 8, 80);
    


if (index != previousIndex){

    EurydicePoem[index].play();
        EurydicePoem[index].setPosition(playTime);
    
    for (int i = 0; i < 9; i++){
   //     EurydicePoem[i].setPositionMS(playTime);

        if (i != index){
            EurydicePoem[i].stop();
           // EurydicePoem[i].setPosition(playTime);
        }
    }
    
    previousIndex = index;
  //  playTime = EurydicePoem[index].getPosition();
    }
}


void testApp::audioPlacement(){
    if(heading > 337.5 && heading < 360){
        index = 1;

    }
    
    else if (heading > 22.5 && heading < 67.5){
        index = 2;
        
    }
    
    else if (heading > 67.5 && heading < 112.5){
         index = 3;
    }
    
    else if (heading > 112.5 && heading < 157.5){
        index = 4;
    }
    
    else if (heading > 157.5 && heading <202.5){
        index = 5;
    }
    
    else if (heading > 202.5 && heading < 247.5){
        index = 6;
        }
    
    else if (heading > 247.5 && heading < 292.5){
         index = 7;
    }
    
    else if (heading > 292 && heading < 337.5){
       index = 8;
         }
    
    else if (heading > 0 && heading <22.5){
        index = 0;
    }
    

}




//--------------------------------------------------------------
void testApp::exit(){

    }

void testApp::touchDown(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
    
}



//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}

