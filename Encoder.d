module encoder;

import std.base64;
import std.exception;
import std.stdio;
import std.string;
import std.conv;
import std.file : write;

bool encode(string input, string outputFile)
{
	try
	{
		string out_ = Base64.encode(cast(ubyte[])input);
		write(outputFile, out_);
	} catch (Exception exc) {
		writeln(exc);
		return false;
	}
	return true;
}

bool decode(string input, string outputFile)
{
	try
	{
		string out_ = cast(string)Base64.decode(cast(ubyte[])input);
		write(outputFile, out_);
	} catch (Exception exc) {
		writeln(exc);
		return false;
	}
	return true;
}
