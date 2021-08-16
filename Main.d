import encoder : encode, decode;
import messages;
import std.stdio;
import std.string;

int main(string[] args)
{
	string input, output;
	char mode;
	if(args.length < 4)
	{
		writeln(Messages.NoArgumentMessage);
		return -1;
	}
	input = args[1];
	output = args[2];
	mode = args[3][0];

	switch (mode.toUpper)
	{
		case 'E':
			if (encode(input, output))
				writeln(Messages.SuccessfullyEncoded);
			else {
				writeln(Messages.FailedInEncodingString);
				return -1;
			}
			break;

		case 'D':
			if (decode(input, output))
				writeln(Messages.SuccessfullyDecoded);
			else {
				writeln(Messages.FailedInDecodingString);
				return -1;
			}
			break;

		default:
			writeln(Messages.UnknownOperator);
			return -1;
	}
	return 0;
}
