\include "src/include/common.lyi"
\header {
	title="אלוהים שלי"
	subtitle=""
	composer="עוזי חיטמן"
	copyright="unknown"
	style="Pop"
	piece="Med. Ballad"
	poet="עוזי חיטמן"

	singer="עוזי חיטמן"
	arranger="יאיר רוזנבלום"

	completion="2"
	url="http://www.youtube.com/watch?v=fTZb0abU4Rw"

	uuid="467b2af8-a26f-11df-b03d-0019d11e5a41"
}

%{
	TODO:
%}

\score {
<<
\chords {
	\set chordChanges = ##t

	g2:m | d2:7 | g2:m ~ | g4:m d4:7 |
	g2:m | d2:7 | g2:m ~ | g4:m d4:7 | \break
	g2:m | g2:m | c2:m | c2:m |
	g2:m/ees | d2:7 | g2:m | g4:m d4:7 | \break

	g2:m | d2:7 | g2:m ~ | g4:m d4:7 |
	g2:m | d2:7 | g2:m ~ | g4:m d4:7 | \break
	g2:m | g2:m | c2:m | c2:m |
	ees2:maj | f2:7 | bes2:maj | bes2:maj | \break
}

\new Voice="melody" {
	\time 2/4
	\key g \minor

	bes'4 bes'4 | a'4 a'4 | g'2 ~ | g'4 a'4 |
	bes'4 bes'4 | a'4 a'4 | g'2 ~ | g'4 d'4 |
	g'2 | a'4 bes'4 | d''2 | c''4 a'4 |
	bes'4 bes'4 | a'4 a'4 | g'2 ~ | g'2 |

	bes'2 | a'4 d''4 | g'2 ~ | g'4 a'4 |
	bes'2 | a'4 d''4 | g'2 ~ | g'2 |
	g'4 g'4 | a'4 bes'4 | d''4 c''4 | c''2 |
	bes'4 bes'4 | c''4 c''4 | d''2 |
}

\new Lyrics \lyricsto "melody" {
	א -- לו -- הים ש -- לי, ר -- צי -- תי ש -- ת -- דע
	ח -- לום ש -- ח -- למ -- תי ב -- לי -- לה ב -- מי -- טה
	ו -- ב -- ח -- לום ר -- אי -- תי מל -- אך
	מ -- ש -- מי -- ים בא א -- לי ו -- א -- מ -- ר לי כך

	באתי משמיים, עברתי נדודים
	לשאת ברכת שלום לכל הילדים
	לשאת ברכת שלום לכל הילדים

	וכשהתעוררתי נזכרתי בחלום
	ויצאתי לחפש מעט שלום
	ולא היה מלאך ולא היה שלום
	הוא מזמן הלך ואני עם החלום

	אלוהים שלי, רצית שתדע
	חלום שחלמתי בלילה במיטה
	ובחלום ראיתי מלח
	ממצולות הים עלה ואמר לי כך
	באתי מן המים, ממצולות הים
	לשאת ברכת שלום לילדי כל העולם
	לשאת ברכת שלום לילדי כל העולם

	וכשהתעוררתי נזכרתי בחלום
	ויצאתי לחפש מעט שלום
	ולא היה מלח ולא היה שלום
	הוא את הבשורה לקח ואני עם החלום

	אלוהים שלי, רציתי שתדע
	שהחלום הזה נשאר לי כחידה
	אלוהים שלי, רציתי שתדע
	על החלום שלי רציתי שתדע
	אלוהים שלי, רק רציתי שתדע
}
>>
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 130 4)
		}
	}
	\layout {}
}
