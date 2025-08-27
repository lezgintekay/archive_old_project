import 'package:flutter/material.dart';

class StatefullLifecycleLearn extends StatefulWidget {
  const StatefullLifecycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifecycleLearn> createState() =>
      _StatefullLifecycleLearnState();
}

class _StatefullLifecycleLearnState extends State<StatefullLifecycleLearn> {
  String _message = "";
  late final bool _isOdd ;
  @override

  void didChangeDependencies() {
    super.didChangeDependencies();
    

  }

  @override
  void didUpdateWidget(covariant StatefullLifecycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
    
  }

    @override
  void dispose() {
    super.dispose();
    _message = "";
  }

  
  @override
  void initState() {
    
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _message += " Tek";
    } else {
      _message += " Çift";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: widget.message.length.isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
