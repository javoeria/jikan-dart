class Genre {
  static const ACTION = const Genre._(1);
  static const ADVENTURE = const Genre._(2);
  static const CARS = const Genre._(3);
  static const COMEDY = const Genre._(4);
  static const DEMENTIA = const Genre._(5);
  static const DEMONS = const Genre._(6);
  static const MYSTERY = const Genre._(7);
  static const DRAMA = const Genre._(8);
  static const ECCHI = const Genre._(9);
  static const FANTASY = const Genre._(10);
  static const GAME = const Genre._(11);
  static const HENTAI = const Genre._(12);
  static const HISTORICAL = const Genre._(13);
  static const HORROR = const Genre._(14);
  static const KIDS = const Genre._(15);
  static const MAGIC = const Genre._(16);
  static const MARTIAL_ARTS = const Genre._(17);
  static const MECHA = const Genre._(18);
  static const MUSIC = const Genre._(19);
  static const PARODY = const Genre._(20);
  static const SAMURAI = const Genre._(21);
  static const ROMANCE = const Genre._(22);
  static const SCHOOL = const Genre._(23);
  static const SCI_FI = const Genre._(24);
  static const SHOUJO = const Genre._(25);
  static const SHOUJO_AI = const Genre._(26);
  static const SHOUNEN = const Genre._(27);
  static const SHOUNEN_AI = const Genre._(28);
  static const SPACE = const Genre._(29);
  static const SPORTS = const Genre._(30);
  static const SUPER_POWER = const Genre._(31);
  static const VAMPIRE = const Genre._(32);
  static const YAOI = const Genre._(33);
  static const YURI = const Genre._(34);
  static const HAREM = const Genre._(35);
  static const SLICE_OF_LIFE = const Genre._(36);
  static const SUPERNATURAL = const Genre._(37);
  static const MILITARY = const Genre._(38);
  static const POLICE = const Genre._(39);
  static const PSYCHOLOGICAL = const Genre._(40);
  static const THRILLER = const Genre._(41);
  static const SEINEN = const Genre._(42);
  static const JOSEI = const Genre._(43);
  static const DOUJINSHI = const Genre._(44);
  static const GENDER_BENDER = const Genre._(45);

  static get values => [
        ACTION,
        ADVENTURE,
        CARS,
        COMEDY,
        DEMENTIA,
        DEMONS,
        MYSTERY,
        DRAMA,
        ECCHI,
        FANTASY,
        GAME,
        HENTAI,
        HISTORICAL,
        HORROR,
        KIDS,
        MAGIC,
        MARTIAL_ARTS,
        MECHA,
        MUSIC,
        PARODY,
        SAMURAI,
        ROMANCE,
        SCHOOL,
        SCI_FI,
        SHOUJO,
        SHOUJO_AI,
        SHOUNEN,
        SHOUNEN_AI,
        SPACE,
        SPORTS,
        SUPER_POWER,
        VAMPIRE,
        YAOI,
        YURI,
        HAREM,
        SLICE_OF_LIFE,
        SUPERNATURAL,
        MILITARY,
        POLICE,
        PSYCHOLOGICAL,
        THRILLER,
        SEINEN,
        JOSEI,
        DOUJINSHI,
        GENDER_BENDER
      ];

  final int value;

  const Genre._(this.value);
}
