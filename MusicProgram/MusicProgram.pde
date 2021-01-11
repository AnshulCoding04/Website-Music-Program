//Minum Library: use Sketch / Import Library / Add Library
//Minum Library: use Sketch / Import Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "play List" variable holding extentions WAC, AIFF, AU, SND, and MP3

void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  minim = new Minim(this); //Load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim. loadFile("../Music/Sunset.mp3");
  song1.play();
}

void draw() {}//End draw()

void keyPressed() {
  //
  if ( key == 'p' || key == 'P' ) {//Play-Pause Button
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {//.length() = end
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }//End of Play-Pause Button
  //
  if (key == 's' || key == 'S' ) {//Stop Button
    if (song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else if ( song1.position() == song1.length() ) {//.length() = end
      song1.rewind();
    } else {
      song1.rewind();
    }
  }//End of Stop Button
  //
  if (key == 'f' || key == 'F' ) song1.skip(1000); //Fast Forward 1 second
  if (key == 'r' || key == 'R' ) song1.skip(-1000); //Rewind 1 second
  }//End keyPressed()
  //
  void mousePressed() {}//End mousePressed
