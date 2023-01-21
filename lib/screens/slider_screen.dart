import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue,
            activeColor: AppTheme.primary,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          Checkbox(
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ),
          CheckboxListTile(
            title: const Text('Allow Slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ),
          Switch(
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value;
              setState(() {});
            },
          ),
          SwitchListTile.adaptive(
            title: const Text('Allow Slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value;
              setState(() {});
            },
          ),
          AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://2.bp.blogspot.com/kH8OZaKy4M4FdKc3tcYIegr55e_wPHROVbnz3EXbq6L9f_eADU3xic1Cc5GGeSNR_cMctLTA52EV=s0'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
