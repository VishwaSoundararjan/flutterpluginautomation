import 'dart:html' as html;
import 'dart:js' as js;

class ReFlutterWeb {
  static final sdk = js.context['web'];
  static final obj = js.JsObject(js.context['Object']);

  static void initWebSDK(String fcmPath) {
    //html.Element? head = html.document.querySelector('head');
    html.ScriptElement script = html.ScriptElement();
    script.defer = true;
    script.src = "https://web.rss.io/handlers/5g7a2e8e_1bdb_9d28_278a2759dfe3c.sdk";
  }
}