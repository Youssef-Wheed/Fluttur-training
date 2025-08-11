class OnboardingModel {
  final String title;
  final String description;
  final String image;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.image,
  });
}

final List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: "Listen Anywhere",
    description:
        "Favorite tunes follow, anytime, anywhere. Worry-free offline playback for your journey.",
    image: "assets/listen.png",
  ),
  OnboardingModel(
    title: "Playback",
    description:
        "Pristine sound quality for absolute clarity in audio playback.",
    image: "assets/playback.png",
  ),
  OnboardingModel(
    title: "Music For You",
    description:
        "Curated weekly playlists tailored to your music listening history.",
    image: "assets/music.png",
  ),
];
