package com.example.iot;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

public class activity2 extends AppCompatActivity {
    Switch swch;
    ImageView imgView1;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.button2);
        swch =(Switch) findViewById(R.id.ledSwitch);
        imgView1 = (ImageView)findViewById(R.id.imageSet);

        swch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                    imgView1.setImageResource(R.drawable.open);
                }
                else
                    imgView1.setImageResource(R.drawable.close);

            }
        });
    }
}
