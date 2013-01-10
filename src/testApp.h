#pragma once

#include "ofMain.h"
#include "ofxiPhone.h"
#include "ofxiPhoneExtras.h"

class testApp : public ofxiPhoneApp{
	
    public:
        void setup();
        void update();
        void draw();
        void exit();
    	
        void touchDown(ofTouchEventArgs & touch);
        void touchMoved(ofTouchEventArgs & touch);
        void touchUp(ofTouchEventArgs & touch);
        void touchDoubleTap(ofTouchEventArgs & touch);
        void touchCancelled(ofTouchEventArgs & touch);

        void lostFocus();
        void gotFocus();
        void gotMemoryWarning();
        void deviceOrientationChanged(int newOrientation);
    
        void audioPlacement();
        void getPosition();
    
        ofxiPhoneCoreLocation * coreLocation;
        int index;
        float playTime;
        int previousIndex;
        float heading;
    
        bool hasCompass;
    
        ofSoundPlayer windSound;
        ofSoundPlayer EurydicePoem [9];
        ofSoundPlayer nowPlaying; 
    
        //ofiPhoneVideoPlayer video;
    
      };


