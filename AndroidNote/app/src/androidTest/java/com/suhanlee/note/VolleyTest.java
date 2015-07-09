package com.suhanlee.note;

import android.test.ActivityInstrumentationTestCase2;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

/**
 * Created by suhanlee on 15. 6. 13..
 */
public class VolleyTest extends ActivityInstrumentationTestCase2<MainActivity>{

    public VolleyTest(Class<MainActivity> activityClass) {
        super(activityClass);
    }

    public void testInitVolley() throws Exception {

    }
}
