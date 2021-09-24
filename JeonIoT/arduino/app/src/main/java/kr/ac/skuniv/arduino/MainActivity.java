package kr.ac.skuniv.arduino;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onButtonClicked(View v){
        setContentView(R.layout.button);
        Toast.makeText(this,"버튼 눌림",Toast.LENGTH_LONG).show();
    }

    public boolean onKeyDown(int keyCode, KeyEvent evnet){
        if(keyCode==KeyEvent.KEYCODE_BACK){
            setContentView(R.layout.activity_main);
            return true;
        }
        return false;
    }
}