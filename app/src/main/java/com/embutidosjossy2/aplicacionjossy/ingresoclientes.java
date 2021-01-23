
package com.embutidosjossy2.aplicacionjossy;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ActivityManager;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.Toast;

import com.loopj.android.http.*;

import org.json.JSONArray;

import java.util.ArrayList;

import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.entity.ContentProducer;


public class ingresoclientes extends AppCompatActivity {

    private EditText edtcedula, edtnombres, edtapellidos, edttelefono, edtcorreo, edtdireccion, edtruc, resultado;
    private Button btnguardar;
    private AsyncHttpClient cliente;
    private Spinner spnbarrio;
    String barrio;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ingresoclientes);


        spnbarrio= (Spinner) findViewById(R.id.spnbarrio); String text = spnbarrio.getSelectedItem().toString();

        edtcedula = (EditText) findViewById(R.id.edtcedula);
        edtnombres = (EditText) findViewById(R.id.edtnombres);
        edtapellidos = (EditText) findViewById(R.id.edtapellidos);
        edttelefono = (EditText) findViewById(R.id.edttelefono);
        edtcorreo = (EditText) findViewById(R.id.edtcorreo);
        edtdireccion = (EditText) findViewById(R.id.edtdireccion);
        edtruc   = (EditText) findViewById(R.id.edtruc);
        btnguardar = (Button) findViewById(R.id.btnguardar);
        cliente= new AsyncHttpClient();
        spnbarrio.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { public void onItemSelected(AdapterView<?> parent, View view, int pos, long id) { Object item = parent.getItemAtPosition(pos); } public void onNothingSelected(AdapterView<?> parent) { } });

        llenarSpinner();
        botonGuardar();
    }





    private void botonGuardar(){
        btnguardar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if (edtcedula.getText().toString().isEmpty() || edtnombres.getText().toString().isEmpty() || edtapellidos.getText().toString().isEmpty() || edttelefono.getText().toString().isEmpty() || edtcorreo.getText().toString().isEmpty() || edtdireccion.getText().toString().isEmpty() || edtruc.getText().toString().isEmpty()) {
                    Toast.makeText(ingresoclientes.this, "No deje campos vacios", Toast.LENGTH_SHORT).show();
                } else {
                    Cliente c = new Cliente();
                    c.setCedula(edtcedula.getText().toString().replaceAll(" ","%20"));
                    c.setNombres(edtnombres.getText().toString().replaceAll(" ","%20"));
                    c.setApellidos(edtapellidos.getText().toString().replaceAll(" ","%20"));
                    c.setTelefono(edttelefono.getText().toString().replaceAll(" ","%20"));
                    c.setCorreo(edtcorreo.getText().toString().replaceAll(" ","%20"));
                    c.setDireccion(edtdireccion.getText().toString().replaceAll(" ","%20"));
//                    c.setBarrio(adapterSpinner.getItem(spnbarrio.getSelectedItemPosition())

                    c.setRuc(edtruc.getText().toString().replaceAll(" ","%20"));
                    agregarCliente(c);
                }
            }
        });
    }

    private void agregarCliente(Cliente c){
        String url = "http://192.168.100.5/prueba-session/Main_app/agregarcliente.php?";
        String parametros = "cedula="+c.getCedula()+"&nombreclientes="+c.getNombres()+"&apellidoclientes="+c.getApellidos()+"&telefonoclientes="+c.getTelefono()+"&correoclientes="+c.getCorreo()+"&direccionclientes="+c.getDireccion()+"&distritoclientes="+c.getBarrio()+"&rucclientes"+c.getRuc();
        cliente.post(url + parametros, new AsyncHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
                if(statusCode == 200){
                    Toast.makeText(ingresoclientes.this, "Cliente agregado correctamente", Toast.LENGTH_SHORT).show();
                    edtcedula.setText("");
                    edtnombres.setText("");
                    edtapellidos.setText("");
                    edtdireccion.setText("");
                    edttelefono.setText("");
                    edtcorreo.setText("");
                    edtruc.setText("");

                }
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {

            }
        });
    }


    private void llenarSpinner(){ //se encarga de llamar al cargarspinner
        String url="http://192.168.100.5/prueba-session/Main_app/obtener.php";
        cliente.post(url, new AsyncHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {//evalua la pagina si e que cumple on la condicion
                if (statusCode == 200){
                    cargarSpinner (new String(responseBody));
                    
                }

            }

            @Override
            public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {

            }
        });
    }

    private void cargarSpinner(String respuesta){
        ArrayList <Barrio> lista = new ArrayList<Barrio>();

        try {
            JSONArray jsonArreglo = new JSONArray(respuesta);
            for(int i=0; i < jsonArreglo.length(); i++){
                Barrio b = new Barrio();
                b.setNombrebarrio(jsonArreglo.getJSONObject(i).getString("nombre_circuito"));
                lista.add(b);
            }
            ArrayAdapter <Barrio> a = new ArrayAdapter <Barrio> ( this, android.R.layout.simple_dropdown_item_1line, lista);
            spnbarrio.setAdapter(a);


        }catch (Exception e){
            e.printStackTrace();

        }
    }
}
