package com.lezgintekay.multilanguagesup

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.sp
import com.lezgintekay.multilanguagesup.ui.theme.MultiLanguageSupTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MultiLanguageSupTheme {
                // A surface container using the 'background' color from the theme
                Surface(
                    color = MaterialTheme.colorScheme.background
                ) {
                    Sayfa()
                }
            }
        }
    }
}

@Composable
fun Sayfa() {
    Column(modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.SpaceEvenly ,
        horizontalAlignment =Alignment.CenterHorizontally ) {
        Text(text = stringResource(id = R.string.text), fontSize = 50.sp)
        Button(onClick = {  }) {
            Text(text = stringResource(id = R.string.button), fontSize = 24.sp)
        }
    }
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    MultiLanguageSupTheme {
        Sayfa()
    }
}