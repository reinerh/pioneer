-- Copyright © 2008-2025 Pioneer Developers. See AUTHORS.txt for details
-- Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

-- Source surnames: http://www.japantimes.co.jp/life/2009/10/11/lifestyle/japans-top-100-most-common-family-names/
-- Source (fe)male: http://www.studentsoftheworld.info/penpals/stats.php3?Pays=JAP
-- Note: female and male names Looks suspiciously much like being mixed.

local CultureName = require './common'

local male = {
	'Aki',
	'Akira',
	'Alex',
	'Atsushi',
	'Brad',
	'Choko',
	'Daichi',
	'Daiki',
	'David',
	'Dimi',
	'Evan',
	'Gatti',
	'Haru',
	'Haruhito',
	'Haruki',
	'Hayashi',
	'Hayato',
	'Hikaru',
	'Hiro',
	'Hiroaki',
	'Hiroki',
	'Hiroshi',
	'Ikuta',
	'Issei',
	'Jack',
	'Jason',
	'Jose',
	'Junya',
	'Kaito',
	'Kanako',
	'Katu',
	'Kazu',
	'Kazuki',
	'Kazuma',
	'Kazuya',
	'Kei',
	'Keita',
	'Ken',
	'Kenta',
	'Kento',
	'Kiyoshi',
	'Ko',
	'Kotaro',
	'Kouhei',
	'Kouki',
	'Makoto',
	'Masa',
	'Masaki',
	'Masashi',
	'Masaya',
	'Masayuki',
	'Matt',
	'Muneyuki',
	'Naoki',
	'Naoto',
	'Naoya',
	'Nolan',
	'Ren',
	'Ryo',
	'Ryosuke',
	'Ryota',
	'Shinji',
	'Shintaro',
	'Shinya',
	'Sho',
	'Shogo',
	'Shota',
	'Shu',
	'Shuhei',
	'Shun',
	'Shuto',
	'Steven',
	'Taka',
	'Takahiro',
	'Take',
	'Takeshi',
	'Taku',
	'Takuma',
	'Takumi',
	'Takuto',
	'Takuya',
	'Taro',
	'Tatsuya',
	'Tohru',
	'Tom',
	'Toshi',
	'Wataru',
	'William',
	'Yasu',
	'Yoshiki',
	'Yosuke',
	'You',
	'Yu',
	'Yuki',
	'Yuma',
	'Yusuke',
	'Yuta',
	'Yuto',
	'Yuu',
	'Yuuki'
}

local female = {
	'Ai',
	'Aika',
	'Airi',
	'Akari',
	'Aki',
	'Anna',
	'Anri',
	'Aoi',
	'Arisa',
	'Asami',
	'Asuka',
	'Asumi',
	'Aya',
	'Ayaka',
	'Ayana',
	'Ayano',
	'Ayumi',
	'Chiharu',
	'Chihiro',
	'Chisato',
	'Emi',
	'Eri',
	'Erika',
	'Eriko',
	'Fuka',
	'Hana',
	'Haru',
	'Haruka',
	'Haruna',
	'Hina',
	'Hiromi',
	'Kaho',
	'Kana',
	'Kanako',
	'Kaori',
	'Kay',
	'Kei',
	'Keiko',
	'Mai',
	'Maki',
	'Mami',
	'Manami',
	'Mao',
	'Mari',
	'Marie',
	'Marina',
	'Mayu',
	'Mayumi',
	'Meg',
	'Megumi',
	'Mei',
	'Miho',
	'Mika',
	'Miki',
	'Mina',
	'Minami',
	'Minori',
	'Mio',
	'Misa',
	'Misaki',
	'Miyu',
	'Mizuki',
	'Moe',
	'Moeka',
	'Momoko',
	'Nana',
	'Nanako',
	'Nanami',
	'Nao',
	'Narumi',
	'Natsuki',
	'Natsumi',
	'Nene',
	'Rei',
	'Rieko',
	'Rika',
	'Rin',
	'Rina',
	'Risa',
	'Rui',
	'Sae',
	'Saki',
	'Sakura',
	'Satomi',
	'Saya',
	'Sayaka',
	'Shiho',
	'Shiori',
	'Tomo',
	'Tomoko',
	'Yoko',
	'Yu',
	'Yui',
	'Yuka',
	'Yuki',
	'Yukiko',
	'Yume',
	'Yumi',
	'Yuna',
	'Yuri'
}

local surname = {
	'Abe',
	'Ando',
	'Aoki',
	'Arai',
	'Chiba',
	'Endo',
	'Fujii',
	'Fujimoto',
	'Fujita',
	'Fujiwara',
	'Fukuda',
	'Goto',
	'Hara',
	'Harada',
	'Hasegawa',
	'Hashimoto',
	'Hayashi',
	'Hirano',
	'Ikeda',
	'Imai',
	'Inoue',
	'Ishida',
	'Ishii',
	'Ishikawa',
	'Ito',
	'Iwasaki',
	'Kaneko',
	'Kato',
	'Kikuchi',
	'Kimura',
	'Kinoshita',
	'Kobayashi',
	'Kojima',
	'Kondo',
	'Kubo',
	'Kudo',
	'Maeda',
	'Maruyama',
	'Masuda',
	'Matsuda',
	'Matsui',
	'Matsumoto',
	'Matsuo',
	'Miura',
	'Miyamoto',
	'Miyazaki',
	'Mori',
	'Morita',
	'Murakami',
	'Murata',
	'Nakagawa',
	'Nakajima',
	'Nakamura',
	'Nakano',
	'Nakayama',
	'Nishimura',
	'Noguchi',
	'Nomura',
	'Ogawa',
	'Ohno',
	'Okada',
	'Okamoto',
	'Onishi',
	'Ono',
	'Ota',
	'Otsuka',
	'Saito',
	'Saito',
	'Sakai',
	'Sakamoto',
	'Sakurai',
	'Sano',
	'Sasaki',
	'Sato',
	'Shibata',
	'Shimizu',
	'Sugawara',
	'Sugimoto',
	'Sugiyama',
	'Suzuki',
	'Takada',
	'Takagi',
	'Takahashi',
	'Takeda',
	'Takeuchi',
	'Tamura',
	'Tanaka',
	'Taniguchi',
	'Uchida',
	'Ueda',
	'Ueno',
	'Wada',
	'Watanabe',
	'Yamada',
	'Yamaguchi',
	'Yamamoto',
	'Yamashita',
	'Yamazaki',
	'Yokoyama',
	'Yoshida'
}

local Japanese = CultureName.New(
{
	male = male,
	female = female,
	surname = surname,
	name = "Japanese",
	code = "ja",
})

return Japanese
