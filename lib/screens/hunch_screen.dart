part of 'screens.dart';

class HunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Youtube(
        title: "Hunch", url: "https://www.youtube.com/watch?v=JA3O0NVb-sk");
  }
}

class Youtube extends StatefulWidget {
  Youtube({this.title, this.url});
  final String title;
  final url;

  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  YoutubePlayerController _controller;

  void runYoutubePlayer() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.url),
        flags: YoutubePlayerFlags(
            enableCaption: false, isLive: false, autoPlay: false));
  }

  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [],
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  YoutubePlayer(
                    controller: _controller,
                  ),
                  SizedBox(height: size.height * 0.05),
                  Text(
                    "Fix Your HunchBack Posture",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.1),
                  Container(
                    height: size.height * .25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        image:
                            AssetImage("assets/images/undraw_pilates_gpdb.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Meditation",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.1),
                  RoundedButton(
                    text: "Start",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Timer();
                        }),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
