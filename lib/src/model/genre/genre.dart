class Genre {
  static const action = Genre._(1);
  static const adventure = Genre._(2);
  static const cars = Genre._(3);
  static const comedy = Genre._(4);
  static const dementia = Genre._(5);
  static const demons = Genre._(6);
  static const mystery = Genre._(7);
  static const drama = Genre._(8);
  static const ecchi = Genre._(9);
  static const fantasy = Genre._(10);
  static const game = Genre._(11);
  static const hentai = Genre._(12);
  static const historical = Genre._(13);
  static const horror = Genre._(14);
  static const kids = Genre._(15);
  static const magic = Genre._(16);
  static const martialArts = Genre._(17);
  static const mecha = Genre._(18);
  static const music = Genre._(19);
  static const parody = Genre._(20);
  static const samurai = Genre._(21);
  static const romance = Genre._(22);
  static const school = Genre._(23);
  static const sciFi = Genre._(24);
  static const shoujo = Genre._(25);
  static const shoujoAi = Genre._(26);
  static const shounen = Genre._(27);
  static const shounenAi = Genre._(28);
  static const space = Genre._(29);
  static const sports = Genre._(30);
  static const superPower = Genre._(31);
  static const vampire = Genre._(32);
  static const yaoi = Genre._(33);
  static const yuri = Genre._(34);
  static const harem = Genre._(35);
  static const sliceOfLife = Genre._(36);
  static const supernatural = Genre._(37);
  static const military = Genre._(38);
  static const police = Genre._(39);
  static const psychological = Genre._(40);
  static const thriller = Genre._(41);
  static const seinen = Genre._(42);
  static const josei = Genre._(43);
  static const doujinshi = Genre._(44);
  static const genderBender = Genre._(45);

  static List<Genre> get values => [
        action,
        adventure,
        cars,
        comedy,
        dementia,
        demons,
        mystery,
        drama,
        ecchi,
        fantasy,
        game,
        hentai,
        historical,
        horror,
        kids,
        magic,
        martialArts,
        mecha,
        music,
        parody,
        samurai,
        romance,
        school,
        sciFi,
        shoujo,
        shoujoAi,
        shounen,
        shounenAi,
        space,
        sports,
        superPower,
        vampire,
        yaoi,
        yuri,
        harem,
        sliceOfLife,
        supernatural,
        military,
        police,
        psychological,
        thriller,
        seinen,
        josei,
        doujinshi,
        genderBender
      ];

  final int value;

  const Genre._(this.value);
}
