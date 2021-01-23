package com.embutidosjossy2.aplicacionjossy;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

public class vendedoractivity extends AppCompatActivity implements View.OnClickListener {



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_vendedoractivity);

        View imageBoton= findViewById(R.id.btnnewclient);
        imageBoton.setOnClickListener(this);

    }

    public void onClick(View v) {
        if (v.getId()==R.id.btnnewclient){
            Intent irLayout= new Intent(getApplicationContext(),ingresoclientes.class);
            startActivity(irLayout);
        }
    }


}