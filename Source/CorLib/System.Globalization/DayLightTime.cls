VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 1  'Persistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "DayLightTime"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'The MIT License (MIT)
'Copyright (c) 2015 Kelly Ethridge
'
'Permission is hereby granted, free of charge, to any person obtaining a copy
'of this software and associated documentation files (the "Software"), to deal
'in the Software without restriction, including without limitation the rights to
'use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
'the Software, and to permit persons to whom the Software is furnished to do so,
'subject to the following conditions:
'
'The above copyright notice and this permission notice shall be included in all
'copies or substantial portions of the Software.
'
'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
'INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
'PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
'FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
'OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
'DEALINGS IN THE SOFTWARE.
'
'
' Module: DaylightTime
'

''
' Represents the start and end times for a daylight saving period, and the
' difference between daylight saving time and standard time.
'
' @see Constructors
' @see TimeZone
' @see TimeZoneStatic
'
Option Explicit
Implements IObject

Private Const StartTimeProp As String = "StartTime"
Private Const EndTimeProp   As String = "EndTime"
Private Const DeltaProp     As String = "Delta"

Private mDelta      As TimeSpan
Private mStartTime  As CorDateTime
Private mEndTime    As CorDateTime


''
' Returns the date for when the daylight saving period starts.
'
' @return The date of the start of daylight saving.
Public Property Get StartTime() As CorDateTime
    Set StartTime = mStartTime
End Property

''
' Returns the date for when the daylight saving period ends.
'
' @return The date of the end of daylight saving.
Public Property Get EndTime() As CorDateTime
    Set EndTime = mEndTime
End Property

''
' Returns the difference between stadard time and daylight saving.
'
' @return The difference between stadard time and daylight saving.
' @remarks This is the amount to change the current time when switching
' between standard and daylight saving time.
Public Property Get Delta() As TimeSpan
    Set Delta = mDelta
End Property

''
' Returns a string representation of this object instance.
'
' @return String representing this instance.
Public Function ToString() As String
    ToString = MyBase.ToString(Me, App)
End Function

''
' Returns a boolean indicating if the value and this object
' instance are the same instance.
'
' @param value The value to compare equality to.
' @return Boolean indicating equality.
Public Function Equals(ByRef Value As Variant) As Boolean
    Equals = MyBase.Equals(Me, Value)
End Function

''
' Returns a pseudo-unique number identifying this instance.
'
' @return Pseudo-unique number identifying this instance.
Public Function GetHashCode() As Long
    GetHashCode = MyBase.GetHashCode(Me)
End Function


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'   Constructors
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Friend Sub Init(ByRef StartTime As Variant, ByRef EndTime As Variant, ByVal Delta As TimeSpan)
    Set mDelta = IfObject(Delta, TimeSpan.Zero)
    Set mStartTime = Convert.ToDateTime(StartTime)
    Set mEndTime = Convert.ToDateTime(EndTime)
End Sub


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'   Serialization
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Private Sub Class_ReadProperties(PropBag As PropertyBag)
    With PropBag
        Set mStartTime = .ReadProperty(StartTimeProp)
        Set mEndTime = .ReadProperty(EndTimeProp)
        Set mDelta = .ReadProperty(DeltaProp)
    End With
End Sub

Private Sub Class_WriteProperties(PropBag As PropertyBag)
    With PropBag
        .WriteProperty StartTimeProp, mStartTime
        .WriteProperty EndTimeProp, mEndTime
        .WriteProperty DeltaProp, mDelta
    End With
End Sub


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'   IObject
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Private Function IObject_Equals(Value As Variant) As Boolean
    IObject_Equals = Equals(Value)
End Function

Private Function IObject_GetHashCode() As Long
    IObject_GetHashCode = GetHashCode
End Function

Private Function IObject_ToString() As String
    IObject_ToString = ToString
End Function
