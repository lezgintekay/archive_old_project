package com.example.chatty;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.os.Bundle;

public class LoginActivity extends AppCompatActivity {

    private Toolbar actionBarLogin;

    public void init()
    {

        actionBarLogin = (Toolbar) findViewById(R.id.actionBarLogin);
        setSupportActionBar(actionBarLogin);
        getSupportActionBar().setTitle("Giriş Yap");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);



    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        init();
    }
}