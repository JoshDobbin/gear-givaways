gear-givaways
=============

I am new to 3D printing and have been showing the printer off to lots of my firends and family. I wanted something small that I could give kids to take home with them.  

This is a highly customizable project that lets me put whatever I want on a gear. The gear has a keychain hole in it so kids can use them on their backbpacks.  I found a variety of methods for adding things to the gear using openscad and this repository has three examples:

* including another openscad file
* from a logo image file
* importing another stl file

This project is really just a mash-up of other peoples work. Specifically I would like to give credit to the following projects:

* http://www.openscad.org/
* http://www.inkscape.org/

* Gear Model - http://www.thingiverse.com/thing:40410
* Ultimaker Key fob model - https://www.youmagine.com/designs/ultimaker-key-fob-flat
* Customizable Robot keychain - http://www.thingiverse.com/thing:53285

INSTRUCTIONS for generating dxf files 

1. Find image you would like to appear on the gear. Needs to be a drawing that looks good in black and white (not grayscale).  
2. Download and install inkscape ( www.inkscape.org ). My require some extra packages.
3. Select File->import image as embeded. Scale image to fit page.
4. Select Path->Trace Bitmap...  Click update button (adjust if needed) then hit OK and close the window
5. Try to select the original image and hit Delete. This can be tricky because the vector image and the original image are on top of each other.
6. Select all verticies and click the add "+" verticies button to add verticies on the curves.
7. Select button to "make selected segments lines"
8. Select Path->Uniion from the menu
9. Select File->Export as dxf from the menu 
10. Close inkscape (no need to save)





