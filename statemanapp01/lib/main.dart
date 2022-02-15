import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("State management 01"),
        ),
        body: const Center(
          child: _ParentWidget(),
        ),
      ),
    );
  }
}

class _ParentWidget extends StatefulWidget {
  const _ParentWidget({Key? key}) : super(key: key);

  @override
  __ParentWidgetState createState() => __ParentWidgetState();
}

class __ParentWidgetState extends State<_ParentWidget> {
  bool _active = true;
  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TapBoxC(
      active: _active,
      onChanged: _handleTapboxChanged,
    );
  }
}

class TapBoxC extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;
  const TapBoxC({Key? key, required this.active, required this.onChanged})
      : super(key: key);

  @override
  State<TapBoxC> createState() => _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {
  bool _highlight = false;

  void handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleTap,
      onTapDown: handleTapDown,
      onTapUp: handleTapUp,
      onTapCancel: handleTapCancel,
      child: Container(
        width: 200,
        height: 200,
        child: Center(
          child: Text(
            widget.active ? "Active" : "Inactive",
            style: TextStyle(fontSize: 32),
          ),
        ),
        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight ? Border.all(color: Colors.teal, width: 10) : null,
        ),
      ),
    );
  }
}

// class TapBoxB extends StatelessWidget {
//   final bool active;
//   final Function handler;
//   const TapBoxB({Key? key, this.active = true, required this.handler})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         handler(!active);
//       },
//       child: Container(
//         width: 200,
//         height: 200,
//         decoration: BoxDecoration(
//             color: active ? Colors.lightGreen[700] : Colors.grey[600]),
//         child: Center(
//           child: Text(
//             active ? 'Active' : 'Inactive',
//             style: const TextStyle(fontSize: 32.0, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TapBoxA extends StatefulWidget {
//   const TapBoxA({Key? key}) : super(key: key);

//   @override
//   State<TapBoxA> createState() => _TapBoxAState();
// }

// class _TapBoxAState extends State<TapBoxA> {
//   bool _active = false;

//   void _handleTap() {
//     setState(() {
//       _active = !_active;
//     });
//   }

//   @override
  // Widget build(BuildContext context) {
  //   return GestureDetector(
  //     onTap: _handleTap,
  //     child: Container(
  //       width: 200,
  //       height: 200,
  //       decoration: BoxDecoration(
  //           color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
  //       child: Center(
  //         child: Text(
  //           _active ? 'Active' : 'Inactive',
  //           style: const TextStyle(fontSize: 32.0, color: Colors.white),
  //         ),
  //       ),
  //     ),
  //   );
  // }
// }
