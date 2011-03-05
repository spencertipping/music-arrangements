all: shine.pdf perfect-day.pdf
wavs: shine.wav perfect-day.wav

%.wav: %.mid
	timidity $< -Ow -o $@

%.mid: %.abc
	abc2midi $< -o $@

%.pdf: %.ps
	ps2pdf $<

%.ps: %.abc makefile
	abcm2ps $< && mv Out.ps $@
