package kr.ac.skuniv.arduino;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SwitchCompat;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothSocket;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    ImageView imageView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
    }

    public void onButtonClicked(View v){
        setContentView(R.layout.button);
    }

    public boolean onKeyDown(int keyCode, KeyEvent evnet){
        if(keyCode==KeyEvent.KEYCODE_BACK){
            setContentView(R.layout.activity_main);
            return true;
        }
        return false;
    }
}