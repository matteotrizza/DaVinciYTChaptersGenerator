# Generate YouTube Chapters from your DaVinci Resolve Marker File (EDL)
Hi! This is a software that can help you to generate YouTube Chapters form DaVinci Resolve Markers.

## Version
- For export your marker file, you need DaVinci Resolve 17;
- When there is a new **stable** version of DaVinci, the software will be updated.

## Requirements
- You need a Windows PC, the program in not compatible with Mac or Linux.
- You can also have Windows XP, the script will still work.
- The program create your chapter only with the timeline-marker, it doesn't convert clip-markers

## Instructions
- Make sure that the markers you want to convert in YouTube chapters are **Cyan** and the **title of every marker is the description you want to give to the specific chapter**;
- The last marker (the outro of your video) must be called "Conclusione" (Yes, it's in Italian, because i'm italian :)

![immagine](https://user-images.githubusercontent.com/81535145/130810681-cb46af70-de34-44d2-9d38-8946864d7d15.png)
- Then, you must export your Resolve marker like EDL file, by right clicking on the Timeline with the timestamp, then going to Timelines > Export > Timeline Marker to EDL;

![immagine](https://user-images.githubusercontent.com/81535145/130809429-d946a9f3-ac86-4391-9205-bc62e83d4d43.png)
- Make sure that **the exported EDL File** and **the program (EXE File)** is **in the same folder**: if there isn't a file, the script will **fail** 😔 (if you find it inconvenient, you can access the code and customize it according to your needs);
- Finally, you can run the program (if you run the program for the first time, your PC may be reporting security issues, but don't warry, I'm not here to steal your data :).
- You will see a Box, **write the exactly name** of exported file (EDL with markers) and press Enter.

![immagine](https://user-images.githubusercontent.com/81535145/130871010-3897aa38-0f88-4aba-8cb3-5743174299f7.png)

- Boom! Now you will see a new file in the origin folder, named *"YTChapters.txt"*, with **all your Cyan markers**; you are ready to upload your video and paste the text in the description!
---
# Download
You can download EXE file form [here](https://github.com/matteotrizza/DaVinciYTChaptersGenerator/releases/download/V1.0/DaVinciResolveYTChaptersGenerator.exe), and the code from [here](https://github.com/matteotrizza/DaVinciYTChaptersGenerator/releases/download/V1.0/Code.for.Developer.ahk) (first read [the notes](https://github.com/matteotrizza/DaVinciYTChaptersGenerator/blob/main/Developers%20Docs.md))
