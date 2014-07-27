package com.secrettransaction.galleyviewpractice;

import android.content.Context;

/**
 * Created by lbibera on 7/27/14.
 */
public class Application extends android.app.Application {

    private static Context context;

    @Override
    public void onCreate() {
        super.onCreate();

        context = this;
    }

    public static Context getContext() {
        return context;
    }
}
