package com.secrettransaction.gradledemo;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.appspot.hello_trash.helloworld.Helloworld;
import com.appspot.hello_trash.helloworld.model.HelloGreeting;
import com.google.api.client.extensions.android.http.AndroidHttp;
import com.google.api.client.extensions.android.json.AndroidJsonFactory;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.secrettransaction.demo.lib.Wazzuper;

import java.io.IOException;


public class MainActivity extends Activity {

    TextView helloWorld;
    Helloworld api;
    Button apiButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        helloWorld = (TextView) findViewById(R.id.helloWorld);
        helloWorld.setText(Wazzuper.wazzup());

        JsonFactory JSON_FACTORY = new AndroidJsonFactory();
        HttpTransport HTTP_TRANSPORT = AndroidHttp.newCompatibleTransport();
        Helloworld.Builder builder = new Helloworld.Builder(HTTP_TRANSPORT, JSON_FACTORY, null);
        api = builder.build();

        apiButton = (Button) findViewById(R.id.apiButton);
        apiButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onApiButtonClick();
            }
        });
    }

    public void onApiButtonClick() {

        AsyncTask<Void, Void, HelloGreeting> sendGreetings = new AsyncTask<Void, Void, HelloGreeting> () {
            @Override
            protected HelloGreeting doInBackground(Void... unused) {
                // Retrieve service handle.
                Helloworld apiServiceHandle = api;

                try {
                    HelloGreeting greeting = new HelloGreeting();
                    greeting.setMessage("test message");

                    Helloworld.Greetings.Multiply multiplyGreetingCommand = apiServiceHandle.greetings().multiply(10, greeting);
                    greeting = multiplyGreetingCommand.execute();
                    return greeting;
                } catch (IOException e) {
                    Log.e("API", "Exception during API call", e);
                }
                return null;
            }

            @Override
            protected void onPostExecute(HelloGreeting greeting) {

            }
        };

        sendGreetings.execute((Void)null);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
