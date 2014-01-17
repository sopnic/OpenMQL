/*
The function adds a substring to the end of a string.
Parameters

string_var

[in][out]  String, to which another one is added.

add_substring

[in]  String that is added to the end of a  source string.

Return Value

In case of success returns true, otherwise false. In order to get an error code, the GetLastError() function should be called.
*/

bool StringAdd(string& string_var, string add_substring);

/*
The function returns the size of buffer allocated for the string.
Parameters

string_var

[in]  String.

Return Value

The value 0 means that the string is constant and buffer size can't be changed. -1 means that the string belongs to the client terminal, and modification of the buffer contents can have indeterminate results.

Note

Minimal buffer size is equal to 16.
*/
int StringBufferLen(string string_var);

int StringCompare(const string& string1, const string& string2, bool case_sensitive = true);

int StringConcatenate(string&  string_var, void argument1, void argument2, ...);

StringFill
StringFind
StringGetCharacter
StringInit
StringLen
StringReplace
StringSetCharacter
StringSplit
StringSubstr
StringToLower
StringToUpper
StringTrimLeft
StringTrimRight
