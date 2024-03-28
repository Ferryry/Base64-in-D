module encoding;

import std.base64;
import std.exception;
import std.stdio;
import std.string;
import std.conv;
import std.file : write;

class Encoding
{
    public string encode(string input)
    {
        try
        {
            return Base64.encode(cast(ubyte[]) input);
        }
        catch (Exception exc)
        {
            writeln(exc);
            return "";
        }
        return "";
    }

    public string decode(string input)
    {
        try
        {
            return cast(string) Base64.decode(cast(ubyte[]) input);
        }
        catch (Exception exc)
        {
            writeln(exc);
            return "";
        }
        return "";
    }
}