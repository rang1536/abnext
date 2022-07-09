import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String strContext = "1";
		String strLPad = setLPad( strContext, 5, "0" );  // "*"문자로 10자리만큼 LPadding처리한다.


	}

	private static String setLPad( String strContext, int iLen, String strChar ) {

		String strResult = "";

		StringBuilder sbAddChar = new StringBuilder();
		for( int i = strContext.length(); i < iLen; i++ ) {  // iLen길이 만큼 strChar문자로 채운다.

			sbAddChar.append( strChar );
		}

		strResult = sbAddChar + strContext;  // LPAD이므로, 채울문자열 + 원래문자열로 Concate한다.

		return strResult;
	}

}
