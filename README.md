# Generate YouTube Chapters from your DaVinci Resolve Marker File (EDL)
Hi! This is a software that can help you to generate YouTube Chapters form DaVinci Resolve Markers.

## Version
- For export your marker file, you need DaVinci Resolve 17;
- When there is a new **stable** version of DaVinci, the software will be updated.
### **PLEASE READ!**
Sometimes, on some PCs, DaVinci Resolve has a bug that creates problems in the management of hours:
- Sometimes, by positioning the playback head at **video start**, a time equal to 01: 00: 00: 00 is indicated (as if we were already 1 hour of video);
- In other cases, on other PCs, this problem is not present.
For this, I ask you to PAY ATTENTION to which version of DaVinciYTChaptersGenerator to download: to check, go to DaVinci, open any project (or create a new one) and go to the beginning of the timeline. If the time indicator shows a time equal to **00:00:00:00** download the version with the wording **"Correct_Hour"**, otherwise, if the indicator shows **01:00:00:00** download the **Wrong_Hour"**.
![image](https://user-images.githubusercontent.com/81535145/133614848-8b7d19e0-14ee-46af-bd07-1402dc722182.png)
![image](https://user-images.githubusercontent.com/81535145/133615450-9e88c845-efc3-425b-970c-7edfe567677b.png)

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
- Now you can run the program!
- Please select the input file (.edl with DaVinci Markers);
- Now select the output directory, where you will find a file with the final result!

![image](https://user-images.githubusercontent.com/81535145/134764281-c02351a7-8309-4f9b-af42-17bca5a0e97c.png) ![image](https://user-images.githubusercontent.com/81535145/134764319-2191df61-aa9b-44fd-93a8-1494c4f9bcec.png)

- Boom! Now you will see a new file in the output folder, named *"YTChapters.txt"*, with **all your Cyan markers**; you are ready to upload your video and paste the text in the description!
---
# Download
You can download EXE file and Code from [here](https://github.com/matteotrizza/DaVinciYTChaptersGenerator/releases).
