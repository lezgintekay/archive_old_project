package com.example.chatty;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.ViewPager;

import android.os.Bundle;

import com.google.android.material.tabs.TabLayout;

public class StartActivity extends AppCompatActivity {

    private Toolbar actionBar ;
    private ViewPager vpMain ;
    private TabLayout tabsMain ;
    private TabsAdaptor tabsAdaptor ;


    public void init(){

        actionBar = (Toolbar) findViewById(R.id.actionBar);
        setSupportActionBar(actionBar);
        getSupportActionBar().setTitle(R.string.app_name);

        vpMain = (ViewPager) findViewById(R.id.vpMain);
        tabsAdaptor = new TabsAdaptor(getSupportFragmentManager());
        vpMain.setAdapter(tabsAdaptor);

        tabsMain = (TabLayout) findViewById(R.id.tabsMain);
        tabsMain.setupWithViewPager(vpMain);


    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_start);
        init();

    }
}