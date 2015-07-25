<TeXmacs|1.99.2>

<style|<tuple|generic|german>>

<\body>
  <doc-data|<doc-title|Isomorphismen von Lie-Algebren>>

  Seien <math|<with|math-font|Euler|g>> und <math|<with|math-font|Euler|h>>
  reelle Lie-Algebren. Ein Lie-Algebra-Isomorphismus zwischen
  <math|<with|math-font|Euler|g>> und <math|<with|math-font|Euler|h>> ist
  eine Vektorraum-Isomorphismus (d.h. eine bijektive lineare Abbildung)
  <math|\<phi\>:<with|math-font|Euler|g>\<rightarrow\><with|math-font|Euler|h>>
  mit <math|\<phi\><around*|(|<around*|[|a,b|]>|)>=<around*|[|\<phi\><around*|(|a|)>,\<phi\><around*|(|b|)>|]>>
  für alle <math|a,b\<in\><with|math-font|Euler|g>>. Wenn
  <math|<with|math-font|Euler|g>> und <math|<with|math-font|Euler|h>>
  isomorph sind, so gilt

  <\enumerate>
    <item>Die Dimensionen stimmen überein:
    <math|dim<rsub|\<bbb-R\>><around*|(|<with|math-font|Euler|g>|)>=dim<rsub|\<bbb-R\>><around*|(|<with|math-font|Euler|h>|)>>

    <item>Die Dimensionen der Zentren stimmen überein:
    <math|dim<rsub|\<bbb-R\>><around*|(|Z<around*|(|<with|math-font|Euler|g>|)>|)>=dim<rsub|\<bbb-R\>><around*|(|Z<around*|(|<with|math-font|Euler|h>|)>|)>>.
    Dabei ist <math|Z<around*|(|<with|math-font|Euler|g>|)>\<assign\><around*|{|a\<in\><with|math-font|Euler|g>
    \| \<forall\>b\<in\><with|math-font|Euler|g>: <around*|[|a,b|]>=0|}>> das
    sogenannte Zentrum von <math|<with|math-font|Euler|g>>.

    <item>Falls <math|<with|math-font|Euler|g>> eine Unteralgebra der
    Dimension <math|r> besitzt (d.h. einen Unterraum
    <math|<with|math-font|Euler|p\<less\><with|math-font|Euler|g>>> mit
    <math|<around*|[|a,b|]>\<in\><with|math-font|Euler|p>> für alle
    <math|a,b\<in\><with|math-font|Euler|p>>), so auch
    <math|<with|math-font|Euler|h>> und andersrum.
  </enumerate>

  Falls eine dieser Bedingungen nicht erfüllt ist, so sind
  <math|<with|math-font|Euler|g>> und <math|<with|math-font|Euler|h>> also
  nicht isomorph.

  Die Dimension des Zentrums von <math|<with|math-font|Euler|g>> lässt sich
  wie folgt berechnen:

  Wähle eine Basis <math|e<rsub|1>,\<ldots\>,e<rsub|n>> von
  <math|<with|math-font|Euler|g>>. Berechne die Strukturkonstanten
  <math|a<rsub|i j><rsup|k>>. Sei

  <\equation*>
    A<rsub|i>\<assign\><matrix|<tformat|<table|<row|<cell|a<rsub|i
    1><rsup|1>>|<cell|a<rsub|i 2><rsup|1>>|<cell|\<cdots\>>|<cell|a<rsub|i
    n><rsup|1>>>|<row|<cell|a<rsub|i 1><rsup|2>>|<cell|a<rsub|i2><rsup|2>>|<cell|\<cdots\>>|<cell|a<rsub|i
    n><rsup|2>>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|a<rsub|i
    1><rsup|n>>|<cell|a<rsub|i 2><rsup|n>>|<cell|\<cdots\>>|<cell|a<rsub|i
    n><rsup|n>>>>>>.
  </equation*>

  Sei <math|A\<in\>\<bbb-R\><rsup|<around*|(|n\<cdot\>n|)>\<times\>n>> die
  Matrix, die durch Untereinanderschreiben von
  <math|A<rsub|1>,\<ldots\>,A<rsub|n>> entsteht. Dann gilt

  <\eqnarray*>
    <tformat|<table|<row|<cell|Z<around*|(|<with|math-font|Euler|g>|)>>|<cell|=>|<cell|<around*|{|a\<in\><with|math-font|Euler|g>
    \| \<forall\>b\<in\><with|math-font|Euler|g>:
    <around*|[|a,b|]>=0|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|a\<in\><with|math-font|Euler|g>
    \| <around*|[|a,e<rsub|1>|]>=0,\<ldots\>,<around*|[|a,e<rsub|n>|]>=0|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|<big|sum>\<lambda\><rsub|i>e<rsub|i>
    \|v= <matrix|<tformat|<table|<row|<cell|\<lambda\><rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|\<lambda\><rsub|n>>>>>>\<in\>ker<around*|(|A<rsub|i>|)>\<cap\>\<ldots\>.\<cap\>ker<around*|(|A<rsub|n>|)>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|<big|sum>\<lambda\><rsub|i>e<rsub|i>
    \|v= <matrix|<tformat|<table|<row|<cell|\<lambda\><rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|\<lambda\><rsub|n>>>>>>\<in\>ker<around*|(|A|)>|}>.>>>>
  </eqnarray*>

  Also <math|dim<rsub|\<bbb-R\>><around*|(|Z<around*|(|<with|math-font|Euler|g>|)>|)>=dim<rsub|\<bbb-R\>><around*|(|ker<around*|(|A|)>|)>=n-rk<around*|(|A|)>>.
</body>