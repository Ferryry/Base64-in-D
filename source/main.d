module app;

import encoding;
import std.utf : toUTF8, toUTF32;
import dlangui;

mixin APP_ENTRY_POINT;

extern (C) int UIAppMain(string[] args) {

    Window window = Platform.instance.createWindow("Simple Base64 Encoder/Decoder", null, 1u, 800, 320);

    Encoding encoding = new Encoding();

    window.mainWidget = parseML(q{
        VerticalLayout {
            margins: 16pt
            padding: 24pt
            layoutWidth: fill
            TextWidget { text: "Simple Base64 Encoder/Decoder"; textColor: "gray"; fontSize: 150%; fontWeight: 800; fontFace: "Arial" }
            TableLayout {
                padding: 24pt
                colCount: 2
                layoutWidth: fill
                TextWidget { text: "Text Input:" }
                EditLine { id: edit1; layoutWidth: fill }
                TextWidget { text: "Encoded/Decoded Text:" }
                EditLine { id: edit2; layoutWidth: fill }
            }
            HorizontalLayout {
                Button { id: btnEncode; text: "Encode" }
                Button { id: btnDecode; text: "Decode" }
            }
        }
    });

    auto editEncode = window.mainWidget.childById!EditLine("edit1");
    auto editDecode = window.mainWidget.childById!EditLine("edit2");

    window.mainWidget.childById!Button("btnEncode").click = delegate(Widget w) {
        editDecode.text = toUTF32(encoding.encode(toUTF8(editEncode.text)));
        return true;
    };

    window.mainWidget.childById!Button("btnDecode").click = delegate(Widget w) {
        editEncode.text = toUTF32(encoding.decode(toUTF8(editDecode.text)));
        return true;
    };

    window.show();

    return Platform.instance.enterMessageLoop();
}
