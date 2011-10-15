<%inherit file="/src/include/common.makoi"/>
\header {
	default_header

	title="Lucky Man"
	composer="Greg Lake"
	poet="Greg Lake"
	style="Rock"
	piece="Med. Ballad"

	completion="5"
	uuid="a68bcbbc-c8ae-11e0-8fa9-0019d11e5a41"

	remark="The D scale is the one used in the original version (Mark Veltzer,17/8/11)"

	idyoutube="5x6uQ6yZsOY"
	lyricsurl="http://www.sing365.com/music/lyric.nsf/Lucky-Man-lyrics-Emerson-Lake-Palmer/13302F99F6B11DEC48256AB8002432F8"
}
jazzTune

<%doc>
	remarks:
	\key d \major
	Some people play "a | g | d | d |" at the chorus but this is wrong if you bother
	to hear the original.
	Song progression:
		opening
		verse 1
		chorus 1
		verse 2
		chorus 2
		verse (solo)
		chorus (solo)
		verse 3
		chorus 3
		verse 4
		chorus 4
		ending (2.5 choruses with a solo keyboard and a long D at the end)

	TODO:
</%doc>

include(predefined-guitar-fretboards.ly)

myChords=\chordmode {
	\mark "Verse"
	g1 | d | g | d | g | d | g | d \endBar
	\mark "Chorus"
	a:m | e:m | d | d |
	a:m | e:m | d | d |
}
myFrets=\new FretBoards {
	\myChords
}
\score {
	<<
		\myFrets
		\new ChordNames="Chords"
		%% this adds a bar engraver which does not always come with chords
		%% I didn'f find a way to put this with the chords themselves...
		\with {
			\override BarLine #'bar-size = #4
			\consists "Bar_engraver"
		}
		\myChords
	>>
	\midi {}
	\layout {}
}

%% Lyrics
\verticalSpace
\verticalSpace
\markup {
	\small { %% \teeny \tiny \small \normalsize \large \huge
		\fill-line {
			\column {
				"He had white Horses"
				"And ladies by the score"
				"All dressed in satin"
				"And waiting by the door"
				\null
				"Ooooh, what a lucky man he was"
				"Ooooh, what a lucky man he was"
				\null
				"White lace and feathers"
				"They made up his bed"
				"A gold covered mattress"
				"On which he was led"
				\null
				"Ooooh, what a lucky man he was"
				"Ooooh, what a lucky man he was"
			}
			\null
			\column {
				"He went to fight wars"
				"For his country and his king"
				"Of his honor and his glory"
				"The people would sing"
				\null
				"Ooooh, what a lucky man he was"
				"Ooooh, what a lucky man he was"
				\null
				"A bullet had found him"
				"His blood ran as he cried"
				"No money could save him"
				"So he laid down and he died"
				\null
				"Ooooh, what a lucky man he was"
				"Ooooh, what a lucky man he was"
			}
		}
	}
}
