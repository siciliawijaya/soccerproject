class Match {
    String teamOne;
    String logoOne;
    int scoreOne;
    String teamTwo;
    String logoTwo;
    int scoreTwo;

    Match({required this.teamOne, required this.logoOne, required this.scoreOne,
    required this.teamTwo, required this.logoTwo, required this.scoreTwo});
}

var matchList = [
  Match(
    teamOne: "Liverpool",
    logoOne: "image/liv.png",
    scoreOne: 1,
    teamTwo: "Arsenal",
    logoTwo: "image/arsenal.png",
    scoreTwo: 2
  ),
  Match(
      teamOne: "Manchester City",
      logoOne: "image/mancity.png",
      scoreOne: 1,
      teamTwo: "Liverpool",
      logoTwo: "image/liv.png",
      scoreTwo: 2
  ),
  Match(
      teamOne: "Liverpool",
      logoOne: "image/liv.png",
      scoreOne: 1,
      teamTwo: "WestHam",
      logoTwo: "image/westham.png",
      scoreTwo: 2
  ),
  Match(
      teamOne: "Manchester United",
      logoOne: "image/manutd.png",
      scoreOne: 1,
      teamTwo: "Liverpool",
      logoTwo: "image/liv.png",
      scoreTwo: 2
  ),
  Match(
      teamOne: "Watford",
      logoOne: "image/watford.png",
      scoreOne: 1,
      teamTwo: "Liverpool",
      logoTwo: "image/liv.png",
      scoreTwo: 5
  ),
];

