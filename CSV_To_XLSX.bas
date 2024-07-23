Attribute VB_Name = "CSV_To_XLSX"
Sub CSV_To_XLSX()

    Dim i As Integer
    Dim oFile As Object
    Dim oFSO As Object
    Dim oFolder As Object
    Dim oFiles As Object
    Dim wbk As Workbook
    Dim FilePath As String
    Dim LnLastRow As Long
    Dim StString As String
    Dim StSplit() As String

    FilePath = "D:\R\Projects\S12_2023E_MNB\Excel_Files\PSZAF"
    Set oFSO = CreateObject("Scripting.FileSystemObject")
    Set oFolder = oFSO.GetFolder(FilePath)
    Set oFiles = oFolder.Files

    For Each oFile In oFiles
    
    
   ' Set wBook = Workbooks.Open(CSVfolder & fname, Format:=6, Delimiter:=",")
  '  wBook.SaveAs XlsFolder & Replace(fname, ".csv", ""), xlOpenXMLWorkbook
   ' wBook.Close False
    '& oFile.Name & "x",
        If Right(oFile.Name, 4) = ".csv" Then
            'Konvertálás CSV-bõl XLSX-be
            Set wbk = Workbooks.Open(Filename:=FilePath & "\" & oFile.Name) ', Format:=6, Delimiter:=";"
            
            LnLastRow = wbk.Sheets(1).Range("A1").End(xlDown).Row
            For i = 1 To LnLastRow
                StString = wbk.Sheets(1).Cells(i, 1)
                StSplit() = Split(Mid(StString, 1), ";")
                For j = LBound(StSplit) To UBound(StSplit)
                    wbk.Sheets(1).Cells(i, (j + 1)) = "'" & StSplit(j)
                Next j
            Next i
            
            wbk.SaveAs Filename:=FilePath & "\" & Replace(oFile.Name, ".csv", ""), FileFormat:=xlOpenXMLWorkbook ', AccessMode:=xlExclusive, ConflictResolution:=Excel.XlSaveConflictResolution.xlLocalSessionChanges
            wbk.Close SaveChanges:=False
            
            'CSV állomány törlése
            Kill (FilePath & "\" & oFile.Name)
            
        End If
    Next


End Sub

