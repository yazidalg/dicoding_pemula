class ModelSinger {
  int? id;
  String? name;
  List<String>? album;
  String? desc;
  String? born;
  String? image;
  String? placeOfBirth;

  ModelSinger({
    this.id,
    this.name,
    this.album,
    this.desc,
    this.born,
    this.image,
    this.placeOfBirth,
  });
}

var listSinger = [
  ModelSinger(
    id: 1,
    name: "Ariana Grande",
    album: ["Position", "Side to Side", "7 rings"],
    desc:
        "Ariana Grande Dia memulai kariernya pada tahun 2008 di drama musikal Broadway berjudul 13, sebelum memerankan Cat Valentine di serial televisi Nickelodeon Victorious (2010–2013) dan di spinoff Sam & Cat (2013–2014).Dia juga pernah tampil di berbagai teater dan peran televisi dan telah mengisi suara dibeberapa serial televisi dan film.",
    born: "26 Juni 1993",
    image: "images/ariana.jpeg",
    placeOfBirth: "Florida, Amerika",
  ),
  ModelSinger(
    id: 2,
    name: "Justin Bieber",
    album: ["Yummy", "Baby", "Peaches"],
    desc:
        "Justin Bieber adalah seorang penyanyi dan penulis lagu berkebangsaan Kanada. Setelah manajer pencarian bakat Scooter Braun menemukannya melalui video-video YouTube-nya sedang mengcover lagu pada tahun 2008 dan dia dikontrak oleh RBMG, Bieber merilis EP debutnya, My World, pada akhir tahun 2009",
    born: "1 Maret 1994",
    image: "images/justin.jpeg",
    placeOfBirth: "London, Kanada",
  ),
  ModelSinger(
    id: 3,
    name: "Selena Gomez",
    album: ["Wolves", "Lose You to Love Me", "It Ain't Me"],
    desc:
        "Selena Gomez adalah seorang penyanyi, aktris, dan produser berkebangsaan Amerika Serikat. Setelah tampil di serial televisi anak-anak Barney & Friends, dia semakin dikenal atas perannya sebagai Alex Russo di serial televisi Disney Channel Wizards of Waverly Place, yang tayang sampai empat musim dari tahun 2007 sampai 2012.",
    born: "22 Juli 1992",
    image: "images/selena.jpeg",
    placeOfBirth: "Texas, Amerika",
  ),
  ModelSinger(
    id: 4,
    name: "Raisa",
    album: ["Percayalah", "Jatuh Hati", "Apalah"],
    desc:
        "Raisa Andriana adalah seorang model, pemeran dan penyanyi Indonesia. Sebelum berkarier sebagai penyanyi solo, ia merupakan vokalis dari grup musik bentukan Kevin Aprilio, Andante yang kemudian menjadi Vierra–sekarang Vierratale.",
    born: "6 Juni 1990",
    image: "images/raisa.jpeg",
    placeOfBirth: "Jakarta, Indonesia",
  ),
  ModelSinger(
    id: 5,
    name: "Isyana Saraswati",
    album: ["Tetap Dalam Jiwa", "Anganku Anganmu", "Kau Adalah"],
    desc:
        "Isyana Sarasvati merupakan penyanyi dan pencipta lagu berkebangsaan Indonesia. Isyana merupakan lulusan dari Nanyang Academy of Fine Arts, Singapura dan Royal College of Music, Britania Raya. Isyana yang menyusun sendiri semua lagunya juga pernah menjadi penyanyi opera di Singapura.",
    born: "2 Mei 1993",
    image: "images/isyana.jpeg",
    placeOfBirth: "Bandung, Indonesia",
  ),
  ModelSinger(
    id: 6,
    name: "Drake",
    album: ["God's Plan", "One Dance", "Life Is Good"],
    desc:
        "Aubrey Drake Graham adalah seorang rapper, penyanyi, penulis lagu, produser rekaman, aktor, dan pengusaha asal Kanada. Drake awalnya dikenal sebagai aktor serial televisi drama remaja Degrassi: The Next Generation di awal tahun 2000-an.",
    born: "24 Oktober 1986",
    image: "images/drake.jpeg",
    placeOfBirth: "Toronto, Kanada",
  ),
  ModelSinger(
    id: 7,
    name: "Tulus",
    album: ["Pamit", "Sepatu", "Teman Hidup"],
    desc:
        "Muhammad Tulus Rusydi adalah seorang penyanyi, pencipta lagu, dan arsitek Indonesia. Ia menamatkan studinya di Universitas Katolik Parahyangan, Bandung.",
    born: "20 Agustus 1987",
    image: "images/tulus.jpeg",
    placeOfBirth: "Bukit Tinggi, Indonesia",
  ),
  ModelSinger(
    id: 8,
    name: "Bazzi",
    album: ["Mine", "I.F.L.Y", "Why"],
    desc:
        "Andrew Bazzi atau yang dikenal dengan Bazzi adalah seorang penyanyi, penulis lagu dan produser rekaman asal Amerika Serikat. ",
    born: "28 Agustus 1997",
    image: "images/bazzi.jpeg",
    placeOfBirth: "Canton, Michigan, Amerika",
  ),
  ModelSinger(
    id: 9,
    name: "Joji",
    album: ["Sanctuary", "Nectar", "Pink Season"],
    desc:
        "George Kusunoki Miller, yang lebih dikenal dengan nama panggung Joji, atau nama pengguna YouTube Filthy Frank, adalah penyanyi, penulis lagu, produser rekaman, mantan selebriti internet dan komedian. Penyanyi Asal Kobe, Jepang ini mulai dikenal dengan lagunya yang berjudul Slow Dancing in the Dark.",
    born: "18 September 1992",
    image: "images/joji.jpeg",
    placeOfBirth: "Prefektur Osaka, Jepang",
  ),
  ModelSinger(
    id: 10,
    name: "Niki",
    album: ["Lowkey", "Lose", "I Like U "],
    desc:
        "Nicole Zefanya, yang juga dikenal dengan nama panggung NIKI, adalah seorang musisi, penulis lagu, dan produser rekaman asal Indonesia. Bersama dengan Rich Brian, Niki merupakan dua penyanyi asal Indonesia yang berada dalam payung label rekaman asal Amerika Serikat 88rising.",
    born: "24 Januari 1999 ",
    image: "images/niki.jpeg",
    placeOfBirth: "Jakarta, Indonesia",
  ),
  ModelSinger(
    id: 11,
    name: "Rich Brian",
    album: ["Dat Stick", "Glow Like Dat", "100 Degrees"],
    desc:
        "Brian Imanuel Soewarno, yang lebih dikenal dengan nama panggung Rich Brian, adalah seorang penyanyi rap, produser rekaman, dan penulis lagu dari Indonesia. Ia dikenal melalui singelnya yang berjudul 'Dat Stick', yang dirilis pada bulan Maret 2016.",
    born: "3 September 1999",
    image: "images/brian.jpeg",
    placeOfBirth: "Jakarta, Indonesia",
  ),
  ModelSinger(
    id: 12,
    name: "Bruno Mars",
    album: ["Talking to the Moon", "It Will Rain", "That's What I Like"],
    desc:
        "Peter Gene Hernandez, dikenal secara profesional sebagai Bruno Mars, adalah seorang penyanyi-penulis lagu, multi-instrumentalis, produser rekaman, dan penari berkebangsaan Amerika Serikat. Lahir dan dibesarkan di Honolulu, Hawaii, Mars pindah ke Los Angeles pada tahun 2003 untuk mengejar karier musik.",
    born: "8 Oktober 1985",
    image: "images/bruno.jpeg",
    placeOfBirth: "Honolulu, Hawaii, Amerika",
  ),
  ModelSinger(
    id: 13,
    name: "Ed Sheeran",
    album: ["Shape Of You", "Perfect", "Photograph"],
    desc:
        "Edward Christopher Sheeran, MBE adalah seorang penyanyi, penulis lagu, gitaris, produser rekaman, dan aktor berkebangsaan Inggris. Sheeran lahir di Halifax, West Yorkshire, dan dibesarkan di Framlingham, Suffolk.",
    born: "17 Februari 1991",
    image: "images/edsheran.jpeg",
    placeOfBirth: "Halifax, Britania Raya",
  ),
];
