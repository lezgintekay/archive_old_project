import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularRedProgress()],
      ),
      body:
      const LinearProgressIndicator()
    );
  }
}

class CenterCircularRedProgress extends StatelessWidget {
  const CenterCircularRedProgress({super.key,});

  final redColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: CircularProgressIndicator(
        color: redColor,
        strokeWidth: 10,
        // ! value : 0.7 (zaman zaman uygulama içerisindeki datalar alınırken animasyon oluşturmak istediğimizde kullanabileceğimiz bir propertie'dir. 'valueColor:' ile custom özellikler kazanadırabilmemiz mümkündür.)
      ),
    );
  }
}

// * Indicatorlar loading State'ler için kullanılır, mobil uygulamalarda kullanıcı deneyimi için önemli bir yer tutar.
// # Bu componentler arasında en çok kullanılanlardından biri CircularProgressIndicator'dır. Çok fazla kullanılmasa da LinearProgressBar'da zaman zaman uygulamaya göre kullanılma durumu olabilir.