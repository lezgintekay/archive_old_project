package com.lezgintekay.loginuicompose

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.material.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.lezgintekay.loginuicompose.ui.theme.LoginUIComposeTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            LoginUIComposeTheme {
                // A surface container using the 'background' color from the theme
                Surface(
                    color = MaterialTheme.colors.background
                ) {
                    Sayfa()
                }
            }
        }
    }
}

@Composable
fun Sayfa() {
    androidx.compose.material.Surface(color = MaterialTheme.colors.primary) {
        val tfKullaniciAdi = remember { mutableStateOf("") }
        val tfSifre = remember { mutableStateOf("") }
        Column(
            modifier = Modifier.fillMaxSize(),
            verticalArrangement = Arrangement.SpaceEvenly,
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Image(painter = painterResource(id = R.drawable.ic_baseline_deck_24),
                contentDescription ="" )
            TextField(value = tfKullaniciAdi.value,
                onValueChange ={tfKullaniciAdi.value=it},
                label = { Text(text = "Kullanıcı Adı",)},
                colors = TextFieldDefaults.textFieldColors(
                    backgroundColor = Color.White,
                    textColor = Color.Black,
                    focusedIndicatorColor = Color.Red
                )
            )
            TextField(value = tfSifre.value,
                onValueChange ={tfSifre.value=it},
                label = { Text(text = "Parola Giriniz",)},
                colors = TextFieldDefaults.textFieldColors(
                    backgroundColor = Color.White,
                    textColor = Color.Black,
                    focusedIndicatorColor = Color.Red
                )
            )
            Button(onClick = { /*TODO*/ },
            colors = ButtonDefaults.buttonColors(
                backgroundColor = Color.Red,
                contentColor = Color.White
            ),
                modifier = Modifier.size(250.dp, 50.dp)
            ) {
                Text(text = "Giriş Yap")
            }
        }
        
    }
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    LoginUIComposeTheme {
        Sayfa()
    }
}