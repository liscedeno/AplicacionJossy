package com.embutidosjossy2.aplicacionjossy;

import androidx.appcompat.app.AppCompatActivity;
import com.loopj.android.http.*;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import org.json.JSONObject;

import cz.msebera.android.httpclient.Header;

public class MainActivity extends AppCompatActivity {
    private EditText edtusu, edtpas;
    private Button btnlog;
    private AsyncHttpClient cliente;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        edtusu = (EditText) findViewById(R.id.edtusu);
        edtpas = (EditText) findViewById(R.id.edtpas);
        btnlog= (Button) findViewById(R.id.btnlog);
        cliente = new AsyncHttpClient();
        botonLogin();

    }

    private void botonLogin(){
        btnlog.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(edtusu.getText().toString().isEmpty() || edtpas.getText().toString().isEmpty()){ //pregunto  si los txt estan vacios
                    Toast.makeText(MainActivity.this, "Hay Campos En Blanco!!", Toast.LENGTH_SHORT).show();
                    //edtusu.setText("");
                    //dtpas.setText("");
                }else{
                    String usu = edtusu.getText().toString().replace(" ","%20");//corregir q la app se caiga cuando hay espacios en blancos
                    String pas = edtpas.getText().toString().replace(" ","%20");
                    String url = "http://192.168.100.5/prueba-session/Main_app/validar_usuario.php?Usuario="+usu+"&Password="+pas; //mando los datos al servicio web

                    cliente.post(url, new AsyncHttpResponseHandler() { //accedo a la pagina con cliente.post
                        @Override
                        public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {//verificar si el estado del acceso es ok no
                            if(statusCode == 200) {
                                String respuesta = new String(responseBody); //captura la respuesta q entregue el cuerpo del servicio web
                                if (respuesta.equalsIgnoreCase("null")) { // si la respuesta es nul mande mensaje
                                    Toast.makeText(MainActivity.this, "Error De Usuario y/o Contraseña, intente de nuevo!!", Toast.LENGTH_SHORT).show();
                                    edtusu.setText("");
                                    edtpas.setText("");
                                } else {
                                    try {
                                        JSONObject jsonObj = new JSONObject(respuesta); //captura el registro
                                        Usuario u = new Usuario();
                                        u.setId(jsonObj.getInt("Id_empleados"));
                                        u.setNombre(jsonObj.getString("nombre_empleados"));
                                        u.setUsuario(jsonObj.getString("usuario_empleados"));
                                        u.setClave(jsonObj.getString("clave_empleados"));
                                        u.setIdcargo(jsonObj.getInt("cargo_empleados"));
                                        Intent i = null; //movernos entre varios activitys enviando datos o no
                                        switch(u.getIdcargo()){
                                            case 2:
                                                u.setDescripcion("Vendedor");
                                                i = new Intent(MainActivity.this,vendedoractivity.class);
                                                break;
                                            case 3:
                                                u.setDescripcion("Chofer");
                                                i = new Intent(MainActivity.this,choferactivity.class);
                                                break;
                                                                                    }
                                        i.putExtra("u",u);
                                        startActivity(i);
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                }
                            }
                        }

                        @Override
                        public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {
                            Toast.makeText(MainActivity.this, "Error Desconocido. Intentelo De Nuevo!!", Toast.LENGTH_SHORT).show();
                            edtusu.setText("");
                            edtpas.setText("");
                        }
                    });
                }
            }
        });
    } // Cierra el metodo botonLogin

}
