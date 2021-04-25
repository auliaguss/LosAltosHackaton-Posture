part of 'screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isDone = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          // Here the height of the container is 45% of our total height
          height: size.height * .45,
          decoration: BoxDecoration(
            color: Color(0xFFF5CEB8),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          color: Color(0xFFF2BEA1),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      "Good Mornign \nShishir",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isDone = !_isDone;
                        });
                      },
                      child: RoundedButton(
                        text: "Done",
                        color: (_isDone ? hijau : hijauMuda),
                        textColor: Colors.black,
                        // press: () {
                        //   setState(() {
                        //     if (_isDone) {
                        //       _isDone = false;
                        //     } else {
                        //       _isDone = true;
                        //     }
                        //   });
                        // },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isDone = !_isDone;
                        });
                      },
                      child: RoundedButton(
                        text: "Done",
                        color: (_isDone ? hijau : hijauMuda),
                        textColor: Colors.black,
                        // press: () {
                        //   setState(() {
                        //     if (_isDone) {
                        //       _isDone = false;
                        //     } else {
                        //       _isDone = true;
                        //     }
                        //   });
                        // },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isDone = !_isDone;
                        });
                      },
                      child: RoundedButton(
                        text: "Done",
                        color: (_isDone ? hijau : hijauMuda),
                        textColor: Colors.black,
                        // press: () {
                        //   setState(() {
                        //     if (_isDone) {
                        //       _isDone = false;
                        //     } else {
                        //       _isDone = true;
                        //     }
                        //   });
                        // },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isDone = !_isDone;
                        });
                      },
                      child: RoundedButton(
                        text: "Done",
                        color: (_isDone ? hijau : hijauMuda),
                        textColor: Colors.black,
                        // press: () {
                        //   setState(() {
                        //     if (_isDone) {
                        //       _isDone = false;
                        //     } else {
                        //       _isDone = true;
                        //     }
                        //   });
                        // },
                      ),
                    ),
                    SearchBar(),
                    SearchBar(),
                    SearchBar(),
                  ],
                ),
              )),
        )
      ],
    );
  }
}
