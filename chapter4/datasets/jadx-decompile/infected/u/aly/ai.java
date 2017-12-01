package u.aly;

import org.json.JSONArray;

/* compiled from: UPage */
public class ai extends bi {
    public ai(JSONArray jSONArray) throws Exception {
        a(jSONArray);
    }

    public ai(String str) throws Exception {
        a(new JSONArray(str));
    }

    private void a(JSONArray jSONArray) throws Exception {
        a(jSONArray.getString(0));
        a((long) jSONArray.getInt(1));
    }
}
