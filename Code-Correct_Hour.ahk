FileSelectFile, Path , S, RootDir\Filename, Select Markers File Path, Text Documents (*.edl; *.txt)
If ErrorLevel
{
    ExitApp
}
FileSelectFolder, OUT_Path , Desktop, 1, Now, choose the output file path :)
If ErrorLevel
{
    ExitApp
}
LineNum := 4
FileAppend, 00:00:00 | Intro `n, %OUT_Path%\ChaptersYT.txt
Loop, {
    FileReadLine, TimestampPROV, %Path%, %LineNum%
    StringTrimLeft, TimestampInizio, TimestampPROV, 29
    StringTrimRight, TimestampDEF, TimestampInizio, 41
    LineNum := ++LineNum
    FileReadLine, ChaptersPROV, %Path%, %LineNum%
    If ChaptersPROV contains ResolveColorCyan
    {
        StringTrimLeft, DescrizioneInizio, ChaptersPROV, 24
        StringTrimRight, DescrizioneDEF, DescrizioneInizio, 5
        FileAppend, %TimestampDEF% | %DescrizioneDEF% `n, %OUT_Path%\ChaptersYT.txt
        LineNum := ++LineNum
        LineNum := ++LineNum
        If DescrizioneDEF = Conclusione
        {
            ExitApp
        }
    }
}