''  Can be used to check if an expression is valid
''  Best for things like testing if a property is a valid property of a model
''
''  Note: that expression must be given to function as a string
''

Function isValidExpression(string)
    Dim tmp
    On Error Resume Next
    tmp = Eval(string)
    If Err.Number <> 0 Then
        isValidExpression = false
    Else
        isValidExpression =  true
    End If
    Err.Clear
End Function