%!PS-Adobe-2.0 EPSF-2.0
%%Title: saida/gmres/lung2/resvec.plot
%%Creator: gnuplot 5.2 patchlevel 6
%%CreationDate: Wed May  1 19:47:40 2019
%%DocumentFonts: (atend)
%%BoundingBox: 50 50 626 482
%%EndComments
%%BeginProlog
/gnudict 256 dict def
gnudict begin
%
% The following true/false flags may be edited by hand if desired.
% The unit line width and grayscale image gamma correction may also be changed.
%
/Color true def
/Blacktext false def
/Solid false def
/Dashlength 2 def
/Landscape false def
/Level1 false def
/Level3 false def
/Rounded false def
/ClipToBoundingBox false def
/SuppressPDFMark false def
/TransparentPatterns false def
/gnulinewidth 5.000 def
/userlinewidth gnulinewidth def
/Gamma 1.0 def
/BackgroundColor {1.000 1.000 1.000} def
%
/vshift -66 def
/dl1 {
  10.0 Dashlength userlinewidth gnulinewidth div mul mul mul
  Rounded { currentlinewidth 0.75 mul sub dup 0 le { pop 0.01 } if } if
} def
/dl2 {
  10.0 Dashlength userlinewidth gnulinewidth div mul mul mul
  Rounded { currentlinewidth 0.75 mul add } if
} def
/hpt_ 31.5 def
/vpt_ 31.5 def
/hpt hpt_ def
/vpt vpt_ def
/doclip {
  ClipToBoundingBox {
    newpath 50 50 moveto 626 50 lineto 626 482 lineto 50 482 lineto closepath
    clip
  } if
} def
%
% Gnuplot Prolog Version 5.2 (Dec 2017)
%
%/SuppressPDFMark true def
%
/M {moveto} bind def
/L {lineto} bind def
/R {rmoveto} bind def
/V {rlineto} bind def
/N {newpath moveto} bind def
/Z {closepath} bind def
/C {setrgbcolor} bind def
/f {rlineto fill} bind def
/g {setgray} bind def
/Gshow {show} def   % May be redefined later in the file to support UTF-8
/vpt2 vpt 2 mul def
/hpt2 hpt 2 mul def
/Lshow {currentpoint stroke M 0 vshift R 
	Blacktext {gsave 0 setgray textshow grestore} {textshow} ifelse} def
/Rshow {currentpoint stroke M dup stringwidth pop neg vshift R
	Blacktext {gsave 0 setgray textshow grestore} {textshow} ifelse} def
/Cshow {currentpoint stroke M dup stringwidth pop -2 div vshift R 
	Blacktext {gsave 0 setgray textshow grestore} {textshow} ifelse} def
/UP {dup vpt_ mul /vpt exch def hpt_ mul /hpt exch def
  /hpt2 hpt 2 mul def /vpt2 vpt 2 mul def} def
/DL {Color {setrgbcolor Solid {pop []} if 0 setdash}
 {pop pop pop 0 setgray Solid {pop []} if 0 setdash} ifelse} def
/BL {stroke userlinewidth 2 mul setlinewidth
	Rounded {1 setlinejoin 1 setlinecap} if} def
/AL {stroke userlinewidth 2 div setlinewidth
	Rounded {1 setlinejoin 1 setlinecap} if} def
/UL {dup gnulinewidth mul /userlinewidth exch def
	dup 1 lt {pop 1} if 10 mul /udl exch def} def
/PL {stroke userlinewidth setlinewidth
	Rounded {1 setlinejoin 1 setlinecap} if} def
3.8 setmiterlimit
% Classic Line colors (version 5.0)
/LCw {1 1 1} def
/LCb {0 0 0} def
/LCa {0 0 0} def
/LC0 {1 0 0} def
/LC1 {0 1 0} def
/LC2 {0 0 1} def
/LC3 {1 0 1} def
/LC4 {0 1 1} def
/LC5 {1 1 0} def
/LC6 {0 0 0} def
/LC7 {1 0.3 0} def
/LC8 {0.5 0.5 0.5} def
% Default dash patterns (version 5.0)
/LTB {BL [] LCb DL} def
/LTw {PL [] 1 setgray} def
/LTb {PL [] LCb DL} def
/LTa {AL [1 udl mul 2 udl mul] 0 setdash LCa setrgbcolor} def
/LT0 {PL [] LC0 DL} def
/LT1 {PL [2 dl1 3 dl2] LC1 DL} def
/LT2 {PL [1 dl1 1.5 dl2] LC2 DL} def
/LT3 {PL [6 dl1 2 dl2 1 dl1 2 dl2] LC3 DL} def
/LT4 {PL [1 dl1 2 dl2 6 dl1 2 dl2 1 dl1 2 dl2] LC4 DL} def
/LT5 {PL [4 dl1 2 dl2] LC5 DL} def
/LT6 {PL [1.5 dl1 1.5 dl2 1.5 dl1 1.5 dl2 1.5 dl1 6 dl2] LC6 DL} def
/LT7 {PL [3 dl1 3 dl2 1 dl1 3 dl2] LC7 DL} def
/LT8 {PL [2 dl1 2 dl2 2 dl1 6 dl2] LC8 DL} def
/SL {[] 0 setdash} def
/Pnt {stroke [] 0 setdash gsave 1 setlinecap M 0 0 V stroke grestore} def
/Dia {stroke [] 0 setdash 2 copy vpt add M
  hpt neg vpt neg V hpt vpt neg V
  hpt vpt V hpt neg vpt V closepath stroke
  Pnt} def
/Pls {stroke [] 0 setdash vpt sub M 0 vpt2 V
  currentpoint stroke M
  hpt neg vpt neg R hpt2 0 V stroke
 } def
/Box {stroke [] 0 setdash 2 copy exch hpt sub exch vpt add M
  0 vpt2 neg V hpt2 0 V 0 vpt2 V
  hpt2 neg 0 V closepath stroke
  Pnt} def
/Crs {stroke [] 0 setdash exch hpt sub exch vpt add M
  hpt2 vpt2 neg V currentpoint stroke M
  hpt2 neg 0 R hpt2 vpt2 V stroke} def
/TriU {stroke [] 0 setdash 2 copy vpt 1.12 mul add M
  hpt neg vpt -1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt 1.62 mul V closepath stroke
  Pnt} def
/Star {2 copy Pls Crs} def
/BoxF {stroke [] 0 setdash exch hpt sub exch vpt add M
  0 vpt2 neg V hpt2 0 V 0 vpt2 V
  hpt2 neg 0 V closepath fill} def
/TriUF {stroke [] 0 setdash vpt 1.12 mul add M
  hpt neg vpt -1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt 1.62 mul V closepath fill} def
/TriD {stroke [] 0 setdash 2 copy vpt 1.12 mul sub M
  hpt neg vpt 1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt -1.62 mul V closepath stroke
  Pnt} def
/TriDF {stroke [] 0 setdash vpt 1.12 mul sub M
  hpt neg vpt 1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt -1.62 mul V closepath fill} def
/DiaF {stroke [] 0 setdash vpt add M
  hpt neg vpt neg V hpt vpt neg V
  hpt vpt V hpt neg vpt V closepath fill} def
/Pent {stroke [] 0 setdash 2 copy gsave
  translate 0 hpt M 4 {72 rotate 0 hpt L} repeat
  closepath stroke grestore Pnt} def
/PentF {stroke [] 0 setdash gsave
  translate 0 hpt M 4 {72 rotate 0 hpt L} repeat
  closepath fill grestore} def
/Circle {stroke [] 0 setdash 2 copy
  hpt 0 360 arc stroke Pnt} def
/CircleF {stroke [] 0 setdash hpt 0 360 arc fill} def
/C0 {BL [] 0 setdash 2 copy moveto vpt 90 450 arc} bind def
/C1 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 90 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C2 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 90 180 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C3 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 180 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C4 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 180 270 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C5 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 90 arc
	2 copy moveto
	2 copy vpt 180 270 arc closepath fill
	vpt 0 360 arc} bind def
/C6 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 90 270 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C7 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 270 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C8 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 270 360 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C9 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 270 450 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C10 {BL [] 0 setdash 2 copy 2 copy moveto vpt 270 360 arc closepath fill
	2 copy moveto
	2 copy vpt 90 180 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C11 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 180 arc closepath fill
	2 copy moveto
	2 copy vpt 270 360 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C12 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 180 360 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C13 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 90 arc closepath fill
	2 copy moveto
	2 copy vpt 180 360 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C14 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 90 360 arc closepath fill
	vpt 0 360 arc} bind def
/C15 {BL [] 0 setdash 2 copy vpt 0 360 arc closepath fill
	vpt 0 360 arc closepath} bind def
/Rec {newpath 4 2 roll moveto 1 index 0 rlineto 0 exch rlineto
	neg 0 rlineto closepath} bind def
/Square {dup Rec} bind def
/Bsquare {vpt sub exch vpt sub exch vpt2 Square} bind def
/S0 {BL [] 0 setdash 2 copy moveto 0 vpt rlineto BL Bsquare} bind def
/S1 {BL [] 0 setdash 2 copy vpt Square fill Bsquare} bind def
/S2 {BL [] 0 setdash 2 copy exch vpt sub exch vpt Square fill Bsquare} bind def
/S3 {BL [] 0 setdash 2 copy exch vpt sub exch vpt2 vpt Rec fill Bsquare} bind def
/S4 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt Square fill Bsquare} bind def
/S5 {BL [] 0 setdash 2 copy 2 copy vpt Square fill
	exch vpt sub exch vpt sub vpt Square fill Bsquare} bind def
/S6 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt vpt2 Rec fill Bsquare} bind def
/S7 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt vpt2 Rec fill
	2 copy vpt Square fill Bsquare} bind def
/S8 {BL [] 0 setdash 2 copy vpt sub vpt Square fill Bsquare} bind def
/S9 {BL [] 0 setdash 2 copy vpt sub vpt vpt2 Rec fill Bsquare} bind def
/S10 {BL [] 0 setdash 2 copy vpt sub vpt Square fill 2 copy exch vpt sub exch vpt Square fill
	Bsquare} bind def
/S11 {BL [] 0 setdash 2 copy vpt sub vpt Square fill 2 copy exch vpt sub exch vpt2 vpt Rec fill
	Bsquare} bind def
/S12 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt2 vpt Rec fill Bsquare} bind def
/S13 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt2 vpt Rec fill
	2 copy vpt Square fill Bsquare} bind def
/S14 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt2 vpt Rec fill
	2 copy exch vpt sub exch vpt Square fill Bsquare} bind def
/S15 {BL [] 0 setdash 2 copy Bsquare fill Bsquare} bind def
/D0 {gsave translate 45 rotate 0 0 S0 stroke grestore} bind def
/D1 {gsave translate 45 rotate 0 0 S1 stroke grestore} bind def
/D2 {gsave translate 45 rotate 0 0 S2 stroke grestore} bind def
/D3 {gsave translate 45 rotate 0 0 S3 stroke grestore} bind def
/D4 {gsave translate 45 rotate 0 0 S4 stroke grestore} bind def
/D5 {gsave translate 45 rotate 0 0 S5 stroke grestore} bind def
/D6 {gsave translate 45 rotate 0 0 S6 stroke grestore} bind def
/D7 {gsave translate 45 rotate 0 0 S7 stroke grestore} bind def
/D8 {gsave translate 45 rotate 0 0 S8 stroke grestore} bind def
/D9 {gsave translate 45 rotate 0 0 S9 stroke grestore} bind def
/D10 {gsave translate 45 rotate 0 0 S10 stroke grestore} bind def
/D11 {gsave translate 45 rotate 0 0 S11 stroke grestore} bind def
/D12 {gsave translate 45 rotate 0 0 S12 stroke grestore} bind def
/D13 {gsave translate 45 rotate 0 0 S13 stroke grestore} bind def
/D14 {gsave translate 45 rotate 0 0 S14 stroke grestore} bind def
/D15 {gsave translate 45 rotate 0 0 S15 stroke grestore} bind def
/DiaE {stroke [] 0 setdash vpt add M
  hpt neg vpt neg V hpt vpt neg V
  hpt vpt V hpt neg vpt V closepath stroke} def
/BoxE {stroke [] 0 setdash exch hpt sub exch vpt add M
  0 vpt2 neg V hpt2 0 V 0 vpt2 V
  hpt2 neg 0 V closepath stroke} def
/TriUE {stroke [] 0 setdash vpt 1.12 mul add M
  hpt neg vpt -1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt 1.62 mul V closepath stroke} def
/TriDE {stroke [] 0 setdash vpt 1.12 mul sub M
  hpt neg vpt 1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt -1.62 mul V closepath stroke} def
/PentE {stroke [] 0 setdash gsave
  translate 0 hpt M 4 {72 rotate 0 hpt L} repeat
  closepath stroke grestore} def
/CircE {stroke [] 0 setdash 
  hpt 0 360 arc stroke} def
/Opaque {gsave closepath 1 setgray fill grestore 0 setgray closepath} def
/DiaW {stroke [] 0 setdash vpt add M
  hpt neg vpt neg V hpt vpt neg V
  hpt vpt V hpt neg vpt V Opaque stroke} def
/BoxW {stroke [] 0 setdash exch hpt sub exch vpt add M
  0 vpt2 neg V hpt2 0 V 0 vpt2 V
  hpt2 neg 0 V Opaque stroke} def
/TriUW {stroke [] 0 setdash vpt 1.12 mul add M
  hpt neg vpt -1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt 1.62 mul V Opaque stroke} def
/TriDW {stroke [] 0 setdash vpt 1.12 mul sub M
  hpt neg vpt 1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt -1.62 mul V Opaque stroke} def
/PentW {stroke [] 0 setdash gsave
  translate 0 hpt M 4 {72 rotate 0 hpt L} repeat
  Opaque stroke grestore} def
/CircW {stroke [] 0 setdash 
  hpt 0 360 arc Opaque stroke} def
/BoxFill {gsave Rec 1 setgray fill grestore} def
/Density {
  /Fillden exch def
  currentrgbcolor
  /ColB exch def /ColG exch def /ColR exch def
  /ColR ColR Fillden mul Fillden sub 1 add def
  /ColG ColG Fillden mul Fillden sub 1 add def
  /ColB ColB Fillden mul Fillden sub 1 add def
  ColR ColG ColB setrgbcolor} def
/BoxColFill {gsave Rec PolyFill} def
/PolyFill {gsave Density fill grestore grestore} def
/h {rlineto rlineto rlineto closepath gsave fill grestore stroke} bind def
%
% PostScript Level 1 Pattern Fill routine for rectangles
% Usage: x y w h s a XX PatternFill
%	x,y = lower left corner of box to be filled
%	w,h = width and height of box
%	  a = angle in degrees between lines and x-axis
%	 XX = 0/1 for no/yes cross-hatch
%
/PatternFill {gsave /PFa [ 9 2 roll ] def
  PFa 0 get PFa 2 get 2 div add PFa 1 get PFa 3 get 2 div add translate
  PFa 2 get -2 div PFa 3 get -2 div PFa 2 get PFa 3 get Rec
  TransparentPatterns {} {gsave 1 setgray fill grestore} ifelse
  clip
  currentlinewidth 0.5 mul setlinewidth
  /PFs PFa 2 get dup mul PFa 3 get dup mul add sqrt def
  0 0 M PFa 5 get rotate PFs -2 div dup translate
  0 1 PFs PFa 4 get div 1 add floor cvi
	{PFa 4 get mul 0 M 0 PFs V} for
  0 PFa 6 get ne {
	0 1 PFs PFa 4 get div 1 add floor cvi
	{PFa 4 get mul 0 2 1 roll M PFs 0 V} for
 } if
  stroke grestore} def
%
/languagelevel where
 {pop languagelevel} {1} ifelse
dup 2 lt
	{/InterpretLevel1 true def
	 /InterpretLevel3 false def}
	{/InterpretLevel1 Level1 def
	 2 gt
	    {/InterpretLevel3 Level3 def}
	    {/InterpretLevel3 false def}
	 ifelse }
 ifelse
%
% PostScript level 2 pattern fill definitions
%
/Level2PatternFill {
/Tile8x8 {/PaintType 2 /PatternType 1 /TilingType 1 /BBox [0 0 8 8] /XStep 8 /YStep 8}
	bind def
/KeepColor {currentrgbcolor [/Pattern /DeviceRGB] setcolorspace} bind def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop 0 0 M 8 8 L 0 8 M 8 0 L stroke} 
>> matrix makepattern
/Pat1 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop 0 0 M 8 8 L 0 8 M 8 0 L stroke
	0 4 M 4 8 L 8 4 L 4 0 L 0 4 L stroke}
>> matrix makepattern
/Pat2 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop 0 0 M 0 8 L
	8 8 L 8 0 L 0 0 L fill}
>> matrix makepattern
/Pat3 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop -4 8 M 8 -4 L
	0 12 M 12 0 L stroke}
>> matrix makepattern
/Pat4 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop -4 0 M 8 12 L
	0 -4 M 12 8 L stroke}
>> matrix makepattern
/Pat5 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop -2 8 M 4 -4 L
	0 12 M 8 -4 L 4 12 M 10 0 L stroke}
>> matrix makepattern
/Pat6 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop -2 0 M 4 12 L
	0 -4 M 8 12 L 4 -4 M 10 8 L stroke}
>> matrix makepattern
/Pat7 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop 8 -2 M -4 4 L
	12 0 M -4 8 L 12 4 M 0 10 L stroke}
>> matrix makepattern
/Pat8 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop 0 -2 M 12 4 L
	-4 0 M 12 8 L -4 4 M 8 10 L stroke}
>> matrix makepattern
/Pat9 exch def
/Pattern1 {PatternBgnd KeepColor Pat1 setpattern} bind def
/Pattern2 {PatternBgnd KeepColor Pat2 setpattern} bind def
/Pattern3 {PatternBgnd KeepColor Pat3 setpattern} bind def
/Pattern4 {PatternBgnd KeepColor Landscape {Pat5} {Pat4} ifelse setpattern} bind def
/Pattern5 {PatternBgnd KeepColor Landscape {Pat4} {Pat5} ifelse setpattern} bind def
/Pattern6 {PatternBgnd KeepColor Landscape {Pat9} {Pat6} ifelse setpattern} bind def
/Pattern7 {PatternBgnd KeepColor Landscape {Pat8} {Pat7} ifelse setpattern} bind def
} def
%
%
%End of PostScript Level 2 code
%
/PatternBgnd {
  TransparentPatterns {} {gsave 1 setgray fill grestore} ifelse
} def
%
% Substitute for Level 2 pattern fill codes with
% grayscale if Level 2 support is not selected.
%
/Level1PatternFill {
/Pattern1 {0.250 Density} bind def
/Pattern2 {0.500 Density} bind def
/Pattern3 {0.750 Density} bind def
/Pattern4 {0.125 Density} bind def
/Pattern5 {0.375 Density} bind def
/Pattern6 {0.625 Density} bind def
/Pattern7 {0.875 Density} bind def
} def
%
% Now test for support of Level 2 code
%
Level1 {Level1PatternFill} {Level2PatternFill} ifelse
%
/Symbol-Oblique /Symbol findfont [1 0 .167 1 0 0] makefont
dup length dict begin {1 index /FID eq {pop pop} {def} ifelse} forall
currentdict end definefont pop
%
/Metrics {ExtendTextBox Gswidth} def
/Lwidth {currentpoint stroke M 0 vshift R Metrics} def
/Rwidth {currentpoint stroke M dup stringwidth pop neg vshift R Metrics} def
/Cwidth {currentpoint stroke M dup stringwidth pop -2 div vshift R Metrics} def
/GLwidth {currentpoint stroke M 0 vshift R {ExtendTextBox} forall} def
/GRwidth {currentpoint stroke M dup Gwidth vshift R {ExtendTextBox} forall} def
/GCwidth {currentpoint stroke M dup Gwidth 2 div vshift R {ExtendTextBox} forall} def
/GLwidth2 {0 Gwidth AddGlyphWidth} def
/GRwidth2 {Gwidth -1 mul 0 AddGlyphWidth} def
/GCwidth2 {Gwidth 2 div dup -1 mul AddGlyphWidth} def
/AddGlyphWidth { dup TBx2 gt {userdict /TBx2 3 -1 roll put} {pop} ifelse
                 dup TBx1 lt {userdict /TBx1 3 -1 roll put} {pop} ifelse } def
/MFshow {
   { dup 5 get 3 ge
     { 5 get 3 eq {gsave} {grestore} ifelse }
     {dup dup 0 get findfont exch 1 get scalefont setfont
     [ currentpoint ] exch dup 2 get 0 exch R dup 5 get 2 ne {dup dup 6
     get exch 4 get {textshow} {Metrics pop 0 R} ifelse }if dup 5 get 0 eq
     {dup 3 get {2 get neg 0 exch R pop} {pop aload pop M} ifelse} {dup 5
     get 1 eq {dup 2 get exch dup 3 get exch 6 get Gswidth pop -2 div
     dup 0 R} {dup 6 get Gswidth pop -2 div 0 R 6 get
     textshow 2 index {aload pop M neg 3 -1 roll neg R pop pop} {pop pop pop
     pop aload pop M} ifelse }ifelse }ifelse }
     ifelse }
   forall} def
/Gswidth {dup type /stringtype eq {stringwidth} {pop (n) stringwidth} ifelse} def
/MFwidth {0 exch { dup 5 get 3 ge { 5 get 3 eq { 0 } { pop } ifelse }
 {dup 3 get{dup dup 0 get findfont exch 1 get scalefont setfont
     6 get Gswidth pop add} {pop} ifelse} ifelse} forall} def
/MLshow { currentpoint stroke M
  0 exch R
  Blacktext {gsave 0 setgray MFshow grestore} {MFshow} ifelse } bind def
/MRshow { currentpoint stroke M
  exch dup MFwidth neg 3 -1 roll R
  Blacktext {gsave 0 setgray MFshow grestore} {MFshow} ifelse } bind def
/MCshow { currentpoint stroke M
  exch dup MFwidth -2 div 3 -1 roll R
  Blacktext {gsave 0 setgray MFshow grestore} {MFshow} ifelse } bind def
/XYsave    { [( ) 1 2 true false 3 ()] } bind def
/XYrestore { [( ) 1 2 true false 4 ()] } bind def
Level1 SuppressPDFMark or 
{} {
/SDict 10 dict def
systemdict /pdfmark known not {
  userdict /pdfmark systemdict /cleartomark get put
} if
SDict begin [
  /Title (saida/gmres/lung2/resvec.plot)
  /Subject (gnuplot plot)
  /Creator (gnuplot 5.2 patchlevel 6)
%  /Producer (gnuplot)
%  /Keywords ()
  /CreationDate (Wed May  1 19:47:40 2019)
  /DOCINFO pdfmark
end
} ifelse
%
% Support for boxed text - Ethan A Merritt Sep 2016
%
/InitTextBox { userdict /TBy2 3 -1 roll put userdict /TBx2 3 -1 roll put
           userdict /TBy1 3 -1 roll put userdict /TBx1 3 -1 roll put
	   /Boxing true def } def
/ExtendTextBox { dup type /stringtype eq
    { Boxing { gsave dup false charpath pathbbox
      dup TBy2 gt {userdict /TBy2 3 -1 roll put} {pop} ifelse
      dup TBx2 gt {userdict /TBx2 3 -1 roll put} {pop} ifelse
      dup TBy1 lt {userdict /TBy1 3 -1 roll put} {pop} ifelse
      dup TBx1 lt {userdict /TBx1 3 -1 roll put} {pop} ifelse
      grestore } if }
    {} ifelse} def
/PopTextBox { newpath TBx1 TBxmargin sub TBy1 TBymargin sub M
               TBx1 TBxmargin sub TBy2 TBymargin add L
	       TBx2 TBxmargin add TBy2 TBymargin add L
	       TBx2 TBxmargin add TBy1 TBymargin sub L closepath } def
/DrawTextBox { PopTextBox stroke /Boxing false def} def
/FillTextBox { gsave PopTextBox fill grestore /Boxing false def} def
0 0 0 0 InitTextBox
/TBxmargin 20 def
/TBymargin 20 def
/Boxing false def
/textshow { ExtendTextBox Gshow } def
%
end
%%EndProlog
%%Page: 1 1
gnudict begin
gsave
doclip
50 50 translate
0.050 0.050 scale
0 setgray
newpath
(Helvetica) findfont 200 scalefont setfont
BackgroundColor 0 lt 3 1 roll 0 lt exch 0 lt or or not {BackgroundColor C 1.000 0 0 11520.00 8640.00 BoxColFill} if
gsave % colour palette begin
/maxcolors 64 def
/HSV2RGB {  exch dup 0.0 eq {pop exch pop dup dup} % achromatic gray
  { /HSVs exch def /HSVv exch def 6.0 mul dup floor dup 3 1 roll sub
     /HSVf exch def /HSVi exch cvi def /HSVp HSVv 1.0 HSVs sub mul def
	 /HSVq HSVv 1.0 HSVs HSVf mul sub mul def 
	 /HSVt HSVv 1.0 HSVs 1.0 HSVf sub mul sub mul def
	 /HSVi HSVi 6 mod def 0 HSVi eq {HSVv HSVt HSVp}
	 {1 HSVi eq {HSVq HSVv HSVp}{2 HSVi eq {HSVp HSVv HSVt}
	 {3 HSVi eq {HSVp HSVq HSVv}{4 HSVi eq {HSVt HSVp HSVv}
	 {HSVv HSVp HSVq} ifelse} ifelse} ifelse} ifelse} ifelse
  } ifelse} def
/Constrain {
  dup 0 lt {0 exch pop}{dup 1 gt {1 exch pop} if} ifelse} def
/CMY2RGB {  1 exch sub exch 1 exch sub 3 2 roll 1 exch sub 3 1 roll exch } def
/XYZ2RGB {  3 copy -0.9017 mul exch -0.1187 mul add exch 0.0585 mul exch add
  Constrain 4 1 roll 3 copy -0.0279 mul exch 1.999 mul add exch
  -0.9844 mul add Constrain 5 1 roll -0.2891 mul exch -0.5338 mul add
  exch 1.91 mul exch add Constrain 3 1 roll} def
/SelectSpace {ColorSpace (HSV) eq {HSV2RGB}{ColorSpace (XYZ) eq {
  XYZ2RGB}{ColorSpace (CMY) eq {CMY2RGB}{ColorSpace (YIQ) eq {YIQ2RGB}
  if} ifelse} ifelse} ifelse} def
/InterpolatedColor true def
/grayindex {/gidx 0 def
  {GrayA gidx get grayv ge {exit} if /gidx gidx 1 add def} loop} def
/dgdx {grayv GrayA gidx get sub GrayA gidx 1 sub get
  GrayA gidx get sub div} def 
/redvalue {RedA gidx get RedA gidx 1 sub get
  RedA gidx get sub dgdxval mul add} def
/greenvalue {GreenA gidx get GreenA gidx 1 sub get
  GreenA gidx get sub dgdxval mul add} def
/bluevalue {BlueA gidx get BlueA gidx 1 sub get
  BlueA gidx get sub dgdxval mul add} def
/interpolate {
  grayindex grayv GrayA gidx get sub abs 1e-5 le
    {RedA gidx get GreenA gidx get BlueA gidx get}
    {/dgdxval dgdx def redvalue greenvalue bluevalue} ifelse} def
/GrayA [0 .0159 .0317 .0476 .0635 .0794 .0952 .1111 .127 .1429 .1587 .1746 
  .1905 .2063 .2222 .2381 .254 .2698 .2857 .3016 .3175 .3333 .3492 .3651 
  .381 .3968 .4127 .4286 .4444 .4603 .4762 .4921 .5079 .5238 .5397 .5556 
  .5714 .5873 .6032 .619 .6349 .6508 .6667 .6825 .6984 .7143 .7302 .746 
  .7619 .7778 .7937 .8095 .8254 .8413 .8571 .873 .8889 .9048 .9206 .9365 
  .9524 .9683 .9841 1 ] def
/RedA [.267 .2727 .2771 .2804 .2824 .2832 .2828 .2812 .2785 .2747 .27 .2644 
  .258 .2511 .2437 .2361 .2283 .2204 .2127 .2051 .1977 .1906 .1838 .1773 
  .171 .1648 .1588 .153 .1471 .1414 .1358 .1306 .1259 .1222 .1199 .1196 .122 
  .1277 .1368 .1496 .166 .1855 .208 .2331 .2605 .29 .3213 .3544 .3889 .4249 
  .4622 .5008 .5403 .5809 .6222 .6641 .7064 .7489 .7913 .8333 .8747 .9153 
  .9548 .9932 ] def
/GreenA [.0049 .0258 .0509 .0742 .096 .1169 .1374 .1575 .1773 .197 .2163 
  .2354 .2542 .2726 .2906 .3083 .3256 .3425 .3591 .3754 .3913 .4071 .4226 
  .4379 .4531 .4681 .4831 .4981 .513 .5279 .5428 .5577 .5726 .5875 .6024 
  .6173 .6321 .6469 .6616 .6761 .6905 .7047 .7187 .7324 .7458 .7588 .7715 
  .7837 .7955 .8067 .8173 .8274 .8369 .8457 .8538 .8613 .8682 .8745 .8803 
  .8858 .8909 .896 .901 .9062 ] def
/BlueA [.3294 .3534 .3762 .3979 .4183 .4372 .4546 .4704 .4847 .4973 .5083 
  .5177 .5258 .5325 .5381 .5427 .5463 .5493 .5516 .5535 .555 .5561 .557 
  .5576 .558 .5581 .5581 .5577 .557 .5559 .5543 .5522 .5494 .546 .5418 .5368 
  .5308 .5239 .516 .5069 .4968 .4854 .4729 .4591 .4441 .4278 .4103 .3915 
  .3714 .3501 .3275 .3038 .2789 .253 .2262 .1989 .1715 .145 .1213 .1033 
  .0954 .1005 .1179 .1439 ] def
/pm3dround {maxcolors 0 gt {dup 1 ge
	{pop 1} {maxcolors mul floor maxcolors 1 sub div} ifelse} if} def
/pm3dGamma 1.0 1.5 Gamma mul div def
/ColorSpace (RGB) def
Color InterpolatedColor or { % COLOUR vs. GRAY map
  InterpolatedColor { %% Interpolation vs. RGB-Formula
    /g {stroke pm3dround /grayv exch def interpolate
        SelectSpace setrgbcolor} bind def
  }{
  /g {stroke pm3dround dup cF7 Constrain exch dup cF5 Constrain exch cF15 Constrain 
       SelectSpace setrgbcolor} bind def
  } ifelse
}{
  /g {stroke pm3dround pm3dGamma exp setgray} bind def
} ifelse
1.000 UL
LTb
1.00 1.00 1.00 C
1.000 780 400 10378 7618 BoxColFill
1.000 UL
LTb
0.00 0.00 0.00 C
780 400 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 400 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (-03)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
/vshift -66 def
1.000 UL
LTb
0.00 0.00 0.00 C
780 439 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 439 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (-02)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 479 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 479 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (-01)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 518 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 518 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (00)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 558 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 558 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (01)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 597 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 597 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (02)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 637 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 637 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (03)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 676 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 676 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (04)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 716 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 716 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (05)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 755 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 755 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (06)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 795 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 795 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (07)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 834 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 834 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (08)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 874 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 874 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (09)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 913 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 913 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (10)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 953 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 953 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (11)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 992 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 992 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (12)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1032 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1032 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (13)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1071 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1071 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (14)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1111 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1111 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (15)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1150 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1150 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (16)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1190 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1190 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (17)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1229 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1229 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (18)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1268 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1268 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (19)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1308 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1308 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (20)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1347 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1347 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (21)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1387 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1387 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (22)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1426 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1426 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (23)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1466 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1466 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (24)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1505 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1505 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (25)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1545 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1545 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (26)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1584 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1584 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (27)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1624 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1624 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (28)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1663 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1663 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (29)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1703 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1703 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (30)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1742 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1742 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (31)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1782 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1782 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (32)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1821 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1821 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (33)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1861 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1861 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (34)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1900 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1900 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (35)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1940 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1940 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (36)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 1979 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 1979 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (37)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2019 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2019 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (38)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2058 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2058 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (39)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2097 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2097 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (40)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2137 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2137 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (41)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2176 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2176 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (42)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2216 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2216 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (43)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2255 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2255 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (44)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2295 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2295 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (45)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2334 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2334 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (46)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2374 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2374 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (47)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2413 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2413 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (48)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2453 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2453 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (49)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2492 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2492 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (50)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2532 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2532 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (51)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2571 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2571 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (52)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2611 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2611 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (53)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2650 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2650 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (54)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2690 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2690 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (55)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2729 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2729 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (56)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2769 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2769 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (57)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2808 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2808 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (58)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2848 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2848 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (59)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2887 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2887 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (60)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2927 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2927 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (61)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 2966 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 2966 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (62)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3005 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3005 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (63)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3045 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3045 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (64)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3084 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3084 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (65)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3124 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3124 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (66)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3163 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3163 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (67)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3203 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3203 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (68)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3242 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3242 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (69)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3282 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3282 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (70)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3321 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3321 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (71)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3361 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3361 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (72)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3400 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3400 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (73)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3440 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3440 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (74)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3479 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3479 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (75)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3519 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3519 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (76)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3558 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3558 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (77)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3598 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3598 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (78)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3637 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3637 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (79)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3677 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3677 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (80)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3716 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3716 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (81)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3756 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3756 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (82)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3795 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3795 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (83)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3834 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3834 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (84)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3874 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3874 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (85)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3913 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3913 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (86)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3953 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3953 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (87)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 3992 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 3992 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (88)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4032 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4032 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (89)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4071 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4071 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (90)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4111 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4111 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (91)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4150 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4150 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (92)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4190 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4190 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (93)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4229 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4229 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (94)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4269 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4269 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (95)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4308 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4308 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (96)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4348 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4348 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (97)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4387 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4387 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (98)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4427 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4427 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (99)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4466 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4466 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (100)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4506 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4506 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (101)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4545 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4545 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (102)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4585 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4585 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (103)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4624 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4624 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (104)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4663 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4663 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (105)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4703 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4703 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (106)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4742 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4742 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (107)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4782 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4782 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (108)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4821 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4821 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (109)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4861 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4861 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (110)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4900 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4900 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (111)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4940 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4940 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (112)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 4979 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 4979 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (113)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5019 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5019 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (114)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5058 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5058 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (115)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5098 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5098 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (116)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5137 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5137 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (117)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5177 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5177 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (118)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5216 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5216 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (119)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5256 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5256 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (120)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5295 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5295 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (121)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5335 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5335 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (122)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5374 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5374 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (123)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5414 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5414 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (124)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5453 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5453 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (125)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5492 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5492 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (126)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5532 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5532 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (127)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5571 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5571 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (128)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5611 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5611 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (129)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5650 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5650 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (130)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5690 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5690 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (131)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5729 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5729 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (132)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5769 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5769 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (133)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5808 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5808 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (134)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5848 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5848 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (135)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5887 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5887 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (136)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5927 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5927 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (137)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 5966 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 5966 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (138)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6006 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6006 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (139)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6045 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6045 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (140)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6085 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6085 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (141)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6124 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6124 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (142)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6164 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6164 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (143)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6203 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6203 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (144)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6243 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6243 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (145)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6282 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6282 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (146)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6322 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6322 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (147)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6361 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6361 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (148)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6400 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6400 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (149)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6440 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6440 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (150)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6479 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6479 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (151)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6519 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6519 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (152)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6558 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6558 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (153)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6598 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6598 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (154)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6637 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6637 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (155)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6677 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6677 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (156)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6716 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6716 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (157)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6756 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6756 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (158)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6795 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6795 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (159)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6835 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6835 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (160)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6874 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6874 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (161)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6914 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6914 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (162)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6953 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6953 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (163)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 6993 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 6993 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (164)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7032 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7032 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (165)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7072 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7072 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (166)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7111 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7111 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (167)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7151 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7151 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (168)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7190 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7190 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (169)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7229 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7229 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (170)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7269 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7269 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (171)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7308 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7308 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (172)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7348 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7348 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (173)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7387 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7387 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (174)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7427 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7427 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (175)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7466 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7466 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (176)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7506 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7506 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (177)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7545 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7545 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (178)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7585 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7585 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (179)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7624 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7624 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (180)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7664 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7664 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (181)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7703 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7703 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (182)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7743 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7743 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (183)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7782 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7782 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (184)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7822 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7822 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (185)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7861 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7861 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (186)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7901 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7901 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (187)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7940 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7940 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (188)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 7980 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 7980 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (189)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 8019 M
88 0 V
10291 0 R
-88 0 V
stroke
0.15 0.15 0.15 C
660 8019 M
[ [(Helvetica) 200.0 0.0 true true 0 (10)]
[(Helvetica) 160.0 100.0 true true 0 (190)]
] -86.7 MRshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
780 400 M
0 88 V
0 7531 R
0 -88 V
stroke
0.15 0.15 0.15 C
780 200 M
[ [(Helvetica) 200.0 0.0 true true 0 (0)]
] -66.7 MCshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
3375 400 M
0 88 V
0 7531 R
0 -88 V
stroke
0.15 0.15 0.15 C
3375 200 M
[ [(Helvetica) 200.0 0.0 true true 0 (50)]
] -66.7 MCshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
5970 400 M
0 88 V
0 7531 R
0 -88 V
stroke
0.15 0.15 0.15 C
5970 200 M
[ [(Helvetica) 200.0 0.0 true true 0 (100)]
] -66.7 MCshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
8564 400 M
0 88 V
0 7531 R
0 -88 V
stroke
0.15 0.15 0.15 C
8564 200 M
[ [(Helvetica) 200.0 0.0 true true 0 (150)]
] -66.7 MCshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
11159 400 M
0 88 V
0 7531 R
0 -88 V
stroke
0.15 0.15 0.15 C
11159 200 M
[ [(Helvetica) 200.0 0.0 true true 0 (200)]
] -66.7 MCshow
/Helvetica findfont 200 scalefont setfont
1.000 UL
LTb
0.00 0.00 0.00 C
1.000 UP
1.000 UL
LTb
0.00 0.00 0.00 C
0.00 0.00 0.00 C
5969 8339 M
[ [(:Bold) 220.0 0.0 true true 0 (lung2 - k = 2000)]
] -73.3 MCshow
/Helvetica findfont 200 scalefont setfont
LTb
1.000 UL
LTb
LCb setrgbcolor
9464 6741 N
0 1215 V
1575 0 V
0 -1215 V
-1575 0 V
Z stroke
% Begin plot #1
2.000 UP
0.500 UL
LTb
0.00 0.45 0.74 C
0.00 0.00 0.00 C
10175 7753 M
[ [(Helvetica) 180.0 0.0 true true 0 (Original)]
] -60.0 MLshow
/Helvetica findfont 200 scalefont setfont
2.000 UP
0.500 UL
LTb
0.00 0.45 0.74 C
9572 7753 M
495 0 V
832 644 M
52 -12 V
52 -1 V
52 -7 V
51 -1 V
52 -2 V
52 -1 V
52 -1 V
52 -1 V
52 -1 V
52 -1 V
52 -1 V
52 -1 V
52 0 V
51 0 V
52 -1 V
52 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
51 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
51 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
51 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
51 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
51 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
51 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
51 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
51 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
51 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
51 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
51 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
51 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
51 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
51 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
51 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
51 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
51 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
51 0 V
52 0 V
52 0 V
52 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
52 0 V
51 -1 V
52 0 V
52 0 V
52 0 V
52 0 V
9820 7753 Pnt
% End plot #1
% Begin plot #2
2.000 UP
0.500 UL
LTb
0.85 0.33 0.10 C
0.00 0.00 0.00 C
10175 7348 M
[ [(Helvetica) 180.0 0.0 true true 0 (ILU\(O\))]
] -60.0 MLshow
/Helvetica findfont 200 scalefont setfont
2.000 UP
0.500 UL
LTb
0.85 0.33 0.10 C
9572 7348 M
495 0 V
832 882 M
52 -83 V
52 -58 V
52 -78 V
51 -62 V
9820 7348 Pnt
% End plot #2
% Begin plot #3
2.000 UP
0.500 UL
LTb
0.93 0.69 0.13 C
0.00 0.00 0.00 C
10175 6943 M
[ [(Helvetica) 180.0 0.0 true true 0 (ILU)]
] -60.0 MLshow
/Helvetica findfont 200 scalefont setfont
2.000 UP
0.500 UL
LTb
0.93 0.69 0.13 C
9572 6943 M
495 0 V
832 8003 M
52 -116 V
52 -110 V
52 -104 V
9820 6943 Pnt
% End plot #3
2.000 UL
LTb
LCb setrgbcolor
1.000 UP
0.500 UL
[] 0 setdash
PL 0.15 0.15 0.15 C
780 400 M
10379 0 V
stroke
[] 0 setdash
0.15 0.15 0.15 C
780 8019 M
10379 0 V
stroke
[] 0 setdash
0.15 0.15 0.15 C
780 400 M
0 7619 V
stroke
[] 0 setdash
0.15 0.15 0.15 C
11159 400 M
0 7619 V
stroke
1.000 UL
LTb
0.00 0.00 0.00 C
grestore % colour palette end
stroke
grestore
end
showpage
%%Trailer
%%DocumentFonts: :Bold Helvetica
