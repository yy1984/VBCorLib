VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IWin32Api"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public Function CopyFile(ExistingFileName As String, NewFileName As String, ByVal FailIfExists As Boolean) As Long: End Function

Public Function CreateDirectory(PathName As String, Optional ByVal lpSecurityAttributes As Long = 0&) As Long: End Function

Public Function CreateFile(FileName As String, ByVal DesiredAccess As Long, ByVal ShareMode As Long, ByVal lpSecurityAttributes As Long, ByVal CreationDisposition As Long, ByVal FlagsAndAttributes As Long, ByVal hTemplateFile As Long) As Long: End Function

Public Function CreateFileMapping(ByVal hFile As Long, ByVal lpSecurityAttributes As Long, ByVal flProtect As Long, ByVal MaximumSizeHigh As Long, ByVal MaximumSizeLow As Long, Name As String) As Long: End Function

Public Function DeleteFile(FileName As String) As Long: End Function

Public Function ExpandEnvironmentStrings(lpSrc As String, lpDst As String, ByVal nSize As Long) As Long: End Function

Public Function FindFirstFile(FileName As String, FindFileData As VBCorType.WIN32_FIND_DATA) As Long: End Function

Public Function FindNextFile(ByVal Handle As Long, FindFileData As VBCorType.WIN32_FIND_DATA) As Long: End Function

Public Function GetComputerName(Buffer As String, Size As Long) As Long: End Function

Public Function GetCurrentDirectory(ByVal BufferLength As Long, Buffer As String) As Long: End Function

Public Function GetEnvironmentStrings() As String: End Function

Public Function GetEnvironmentVariable(Name As String, Buffer As String, ByVal Size As Long) As Long: End Function

Public Function GetFileAttributes(FileName As String) As Long: End Function

Public Function GetFileAttributesEx(FileName As String, ByVal fInfoLevelId As Long, lpFileInformation As VBCorType.WIN32_FILE_ATTRIBUTE_DATA) As Long: End Function

Public Function GetFullPathName(FileName As String, ByVal BufferLength As Long, Buffer As String, ByVal lpFilePart As Long) As Long: End Function

Public Function GetLocaleInfo(ByVal Locale As Long, ByVal LCType As Long, lpLCData As String, ByVal cchData As Long) As Long: End Function

Public Function GetLongPathName(ShortPath As String, LongPath As String, ByVal LongPathBufferSize As Long) As Long: End Function

Public Function GetPrivateProfileSection(AppName As String, ReturnedString As String, ByVal Size As Long, FileName As String) As Long: End Function

Public Function GetPrivateProfileString(AppName As String, KeyName As String, Default As String, ReturnedString As String, ByVal Size As Long, FileName As String) As Long: End Function

Public Function GetSystemDirectory(Buffer As String, ByVal Size As Long) As Long: End Function

Public Function GetTempFileName(PathName As String, PrefixString As String, ByVal Unique As Long, TempFileName As String) As Long: End Function

Public Function GetTempPath(ByVal BufferLength As Long, Buffer As String) As Long: End Function

Public Function MoveFile(ExistingFileName As String, NewFileName As String) As Long: End Function

Public Function RegCreateKeyEx(ByVal hKey As Long, lpSubKey As String, ByVal reserved As Long, lpClass As String, ByVal dwOptions As Long, ByVal samDesired As Long, ByVal lpSecurityAttributes As Long, phkResult As Long, lpdwDisposition As Long) As Long: End Function

Public Function RegDeleteKey(ByVal hKey As Long, lpSubKey As String) As Long: End Function

Public Function RegDeleteValue(ByVal hKey As Long, lpValueName As String) As Long: End Function

Public Function RegEnumKeyEx(ByVal hKey As Long, ByVal dwIndex As Long, lpName As String, lpcName As Long, ByVal lpReserved As Long, lpClass As String, lpcClass As Long, lpftLastWriteTime As Currency) As Long: End Function

Public Function RegEnumValue(ByVal hKey As Long, ByVal dwIndex As Long, lpValueName As String, lpcValueName As Long, ByVal lpReserved As Long, ByVal lpType As Long, ByVal lpData As Long, ByVal lpcbData As Long) As Long: End Function

Public Function RegOpenKeyEx(ByVal hKey As Long, SubKey As String, ByVal Options As Long, ByVal Desired As Long, Result As Long) As Long: End Function

Public Function RegQueryInfoKey(ByVal hKey As Long, lpClass As String, ByVal lpcClass As Long, ByVal lpReserve As Long, ByVal lpcSubKeys As Long, ByVal lpcMaxSubKeyLen As Long, ByVal lpcMaxClassLen As Long, ByVal lpcValues As Long, ByVal lpMaxValueNameLen As Long, ByVal lpMaxValueLen As Long, ByVal lpSecurityDescriptor As Long, ByVal lpLastWriteTime As Long) As Long: End Function

Public Function RegQueryValueEx(ByVal hKey As Long, ValueName As String, ValueType As Long, ByVal lpData As Long, lpcbData As Long) As Long: End Function

Public Function RegQueryValueExStr(ByVal hKey As Long, ValueName As String, ValueType As Long, Data As String) As Long: End Function

Public Function RegSetValueEx(ByVal hKey As Long, ValueName As String, ByVal ValueType As Long, ByVal lpData As Long, ByVal cbData As Long) As Long: End Function

Public Function RegSetValueExStr(ByVal hKey As Long, ValueName As String, ByVal ValueType As Long, Data As String) As Long: End Function

Public Function RemoveDirectory(lpPathName As String) As Long: End Function

Public Function SetCurrentDirectory(PathName As String) As Long: End Function

Public Function SetEnvironmentVariable(Name As String, Value As String) As Long: End Function

Public Function SetFileAttributes(FileName As String, ByVal dwFileAttributes As Long) As Long: End Function

Public Function WritePrivateProfileSection(AppName As String, Value As String, FileName As String) As Long: End Function

Public Function WritePrivateProfileString(AppName As String, KeyName As String, Value As String, FileName As String) As Long: End Function


