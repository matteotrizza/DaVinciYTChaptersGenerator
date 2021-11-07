FileSelectFile, PathSource , S, RootDir\Filename, Select Markers File Path, Text Documents (*.edl; *.txt)
If ErrorLevel
{
    ExitApp
}
FileSelectFolder, OUT_Path , Desktop, 1, Now, choose the output file path :)
If ErrorLevel
{
    ExitApp
}

LineToPrint := "00:00:00 | Intro `n"
markerName = ResolveColorBlue
targetPath = %OUT_Path%\ChaptersYT.txt

Loop, read, %PathSource%
{
	if (A_Index <= 3) {
        continue
	}
    ; uncomment for debug: MsgBox %A_Index% %A_LoopReadLine%
   
	if not InStr(A_LoopReadLine, markerName) {		
		TimestampToPrint := ExtractTimestamp(A_LoopReadLine)
	} else {
		DescriptionToPrint := ExtractDescription(A_LoopReadLine)
		LineToPrint .= TimestampToPrint " | " DescriptionToPrint "`n"
	}	
}


if (DescriptionToPrint = "") {
	MsgBox Marker with name %markerName% not found in %PathSource%. `nNothing will be created.
} else {
	if FileExist(targetPath) {
	MsgBox, 4, , File %targetPath% already exist and will be overwritten.`nDo you want to continue?
		IfMsgBox, No
			Return  ; User pressed the "No" button.
		IfMsgBox, Yes
			FileDelete, %targetPath%
	}
	; write file
	FileAppend, %LineToPrint%,  %targetPath%
	MsgBox File %targetPath% created.
}


ExtractTimestamp(line) {
	StringTrimLeft, TimestampStart, A_LoopReadLine, 29
	StringTrimRight, TimestampDEF, TimestampStart, 41
	return TimestampDEF
}

ExtractDescription(line) {
	StringTrimLeft, DescriptionStart, A_LoopReadLine, 24
    StringTrimRight, DescriptionDEF, DescriptionStart, 5
	return DescriptionDEF
}
