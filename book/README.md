#Book Template
This template was inspired by Robert Bringhurst’s “The Elements of Typographical Style.” It attempts to apply the principles discussed there and uses the proportional margin sizes of that book for various document sizes. It also has the ability to draw a simple family tree diagram for compiling family histories.

The template is based around a custom class `bringhurst.cls` which implements the details. I’ve included example chapters and front matter so you can see how the class works. Example output is available in `main.pdf` while `main.tex` is the primary XeLaTeX document that should be compiled: `xelatex main.tex`

#Options
All options available in the `memoir` class are also available in the `bringhurst` class. Additionally, there are options for including a family tree and other paper sizes.

##Family Tree
* `familytree`: simplifies drawing family trees

##Paper Sizes
Many of the sizes below are not available in the `memoir` class but were at one point available via the on-demand print service [Lulu.com](https://www.lulu.com). Those paper sizes that are shared by the `memoir` class are appended with `br`. They all have margins proportional to those implemented by “The Elements of Typographic Style.”

* `a4paperbr`: 11.69 x 8.26 in
* `a5paperbr`: 8.26 x 5.83 in
* `bringhurstsize`: 9 x 5.25 in
* `comicbook`: 10.25 x 6.625 in
* `crownquarto`: 9.68 x 7.44 in
* `eightbyten`: 10.75 x 8.25 in
* `landscape`: 7 x 9 in
* `largelandscape`: 10.75 x 12.75 in
* `largesquare`: 12 x 12 in
* `letterpaperbr`: 11 x 8.5 in
* `pocketbook`: 6.87 x 4.25 in
* `royal`: 9.21 x 6.13 in
* `smallsquare`: 7.5 x 7.5 in
* `square`: 8.5 x 8.5 in
* `statementpaperbr`: 8.5 x 5.5 in
* `ustrade`: 9 x 6 in

#Dependencies
##Required Packages

1. `enumitem`
2. `fontspec`
3. `lettrine`
4. `memoir`
5. `microtype`
6. `xfrac`


##Optional Packages
If you will be including a family tree drawing in your document, the following packages are required:

1. `pstricks`
2. `pst-node`
3. `pst-tree`

#TODO
* The paper sizes in the `memoir` class are mutually exclusive and only one can be called at a time. `bringhurst` allows multiple paper sizes to be called but only the last one will be used. Should throw an error if you call mutually exclusive options.
* The `memoir` class includes commands to change the stock and page sizes. It would be nice to have the same for `bringhurst`.

#Font Information
##Introduction
This template references two fonts: Minion Pro and Inconsolata. To use different fonts, change lines 9, 10, and 11 in `main.tex`.

##[Minion Pro](https://typekit.com/fonts/minion-pro)
“Minion is an Adobe Originals typeface designed by Robert Slimbach. It was inspired by classical, old style typefaces of the late Renaissance, a period of elegant, beautiful, and highly readable type designs. Minion Pro exhibits the aesthetic and functional qualities that make text type highly readable, yet is also suitable for display settings.”

##[Inconsolata](http://levien.com/type/myfonts/inconsolata.html)
“Inconsolata is my first serious original font release. It is a monospace font, designed for code listings and the like, in print. There are a great many ‘programmer fonts,’ designed primarily for use on the screen, but in most cases do not have the attention to detail for high resolution rendering.

“Inconsolata draws from many inspirations and sources. I was particularly struck by the beauty of Luc(as) de Groot’s Consolas, which is his monospaced design for Microsoft’s upcoming Vista release. This font, similar to his earlier TheSansMono, demonstrated clearly to me that monospaced fonts do not have to suck.

“First and foremost, Inconsolata is a humanist sans design. I strove for the clarity and clean lines of Adrian Frutiger’s Avenir (the lowercase ‘a’, in particular, pays homage to this wonderful design), but also looked to Morris Fuller Benton’s Franklin Gothic family for guidance on some of my favorite glyphs, such as lowercase ‘g’ and ‘S’, and, most especially, the numerals.

“Designing a monospace font poses unique challenges. I have carefully studied many other monospaced fonts to see how they solve these problems. Many of the available monospace fonts are adaptations of existing proportionally-spaced fonts, but some, such as Letter Gothic, draw strength from being their own designs. I hope Inconsolata upholds that tradition.

“Some details will be most apparent in print, such as the subtle curves in lowercase ‘t’, ‘v’, ‘w’, and ‘y’. Inconsolata also borrows ‘micro-serifs’ from some Japanese Gothic fonts, which enhance the appearance of crispness and legibility.”
