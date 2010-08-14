\include "src/include/common.lyi"
\header {
	title="Nature Boy"
	subtitle=""
	composer="Eben Ahbez"
	copyright="-- help me fill this out --"
	style="Jazz"
	piece="Med. Ballad"
	poet="Eben Ahbez"

	completion="5"
	note="7th bar of letters A and B were originally 2 bars each. Melody is straight eights, though rather freely interpreted rhythmically."
	url="http://www.youtube.com/watch?v=Iq0XJCJ1Srw"

	uuid="13d57a4a-a26f-11df-8711-0019d11e5a41"
}

%{
	NOTES:
	- you cannot put the quotes in double quotation marks (") since that will cause the
	lyrics to come out wrong, instead I used single quotation marks (').
	- I did not render the lyrics for midi. It seems that could be beneficial for Karaoke or various other uses. In any case I have yet to see this work right since timidity does not render it well (could be a problem with timidity or maybe a problem with lilyponds rendering of the lyrics for midi...).
	TODO:
	- when playing in timidity the channel for the voice is seen as "\new" while the channel for the chords looks like "mychords" (which is the name I gave it). Why is that ?!?
%}

myChords=\chordmode {
	\set chordChanges = ##t

	\partial 8 r8 |
	\repeat volta 2 {
		d1:min | e2:min7.5- a2:7 | d1:min | e2:min7.5- a2:7 |
		d2:min d2:min7+ | d2:min7 d2:min6 | g2:min6 d2:min | e1:min7.5- |
	}
	\alternative {
		{
			a1:7 | r1 | d1:min | r1 |
			e1:7.9- | r1 | a1:7 | r1 \bar "||"
		}
		{
			a1:7 | r1 | d1:min | b1:min7.5- |
			e1:7.9- | a1:7.5+ | d1:min | e2:min7.5- a2:7 \bar "|."
		}
	}
}
myVoice={
	%% http://en.wikipedia.org/wiki/Tempo
	\tempo "Moderato" 4 = 110
	\time 4/4
	\key d \minor
	\partial 8 a8 \bar "||"
	\repeat volta 2 {
		a'8 f'8 d'2. | r4 r8 a8 e'8 f'8 g'8 bes'8 | a'8 f'8 d'2. | r4 r8 a8 e'8 f'8 g'8 bes'8 | \break
		a'4. d''8 cis''2 | a'4. c''8 b'2 | g'4. bes'8 a'4. d'8 | e'2. r8 a8 | \break
	}
	\alternative {
		{
			a'2. g'4 | e'2. a4 | g'2. f'4 | d'2. a4 | \break
			f'2. e'4 | b2. c'4 | cis'1 | r2 r4 r8 a8 \bar "||" \break
		}
		{
			a'2. g'4 | e'2. a4 | g'2. f'4 | d'2. a4 | \break
			f'4. e'8 b4. a8 | g'4 f'2 a8 e'8 | d'1 | r1 \bar "|." \break
		}
	}
}

myLyrics=\lyricmode {
	There was a boy,
	A ver -- y strange en -- chan -- ted boy
	They say he wan -- dered ver -- y far ver -- y far
	O -- ver land and sea
	A Lit -- tle shy
	And sad of eye
	But ver -- y wise
	Was he

	And

	great -- est thing
	You'll ev -- er learn
	Is just to love and be loved
	In re -- turn.'
}
myLyricsmore=\lyricmode {
	And then one day,
	A mag -- ic day he passed my way,
	And while we spoke of man -- y things, Fools and kings,
	This he said to me: 'The
}
%% score for printing
\score {
	<<
		\new ChordNames="mychords" \myChords
		\new Voice="myvoice" \myVoice
		\new Lyrics \lyricsto "myvoice" \myLyrics
		\new Lyrics \lyricsto "myvoice" \myLyricsmore
	>>
	\layout {
	}
}
%% score for midi
\score {
	\unfoldRepeats
	<<
		\new ChordNames="mychords" \myChords
		\new Voice="myvoice" \myVoice
	>>
	\midi {
	}
}
