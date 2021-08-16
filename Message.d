module messages;

static class Messages
{
	static const NoArgumentMessage = "You must use arguments!\n\n*.exe inputString outputFile mode\ninputString = Any String; OutputFile = Any String; Mode = 'E' = Encode or 'D' = Decode";
	static const SuccessfullyEncoded = "Successfully encoded!";
	static const SuccessfullyDecoded = "Successfully decoded!";
	static const FailedInEncodingString = "Failed in encoding string!";
	static const FailedInDecodingString = "Failed in decoding string!";
	static const UnknownOperator = "Unknown operator!";
}
