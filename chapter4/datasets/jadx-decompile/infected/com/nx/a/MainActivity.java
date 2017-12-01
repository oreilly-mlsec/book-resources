package com.nx.a;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import cn.dump.pencil.R;

public class MainActivity extends Activity {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.image_editing);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131165184, menu);
        return true;
    }
}
