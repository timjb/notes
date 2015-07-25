<TeXmacs|1.99.2>

<style|<tuple|generic|german>>

<\body>
  <doc-data|<doc-title|Rezept zur Berechnung der QR-Zerlegung>>

  Gegeben sei eine Matrix <math|A \<in\>\<bbb-R\><rsup|m\<times\>n>> (bzw.
  <math|A\<in\>\<bbb-C\><rsup|m\<times\>n>>) mit <math|m\<geqslant\>n>.
  Gesucht ist die QR-Zerlegung von <math|A>, also eine orthogonale Matrix
  <math|Q\<in\>O<around*|(|m|)>> (bzw. eine unitäre Matrix
  <math|Q\<in\>U<around*|(|m|)>>) und eine obere Dreiecksmatrix
  <math|R\<in\>\<bbb-R\><rsup|m\<times\>n>> (bzw.
  <math|R\<in\>\<bbb-C\><rsup|m\<times\>n>>) mit A = Q\<cdot\>R. Diese kannst
  du wie folgt berechnen:

  <\enumerate-numeric>
    <item>Berechnung von <math|Q>: Seien <math|a<rsub|1>,\<ldots\>,a<rsub|n>\<in\>\<bbb-R\><rsup|n>>
    die Spaltenvektoren von <math|A>. Führe nun folgende Variante des
    Gram-Schmidtschen Orthogonalisierungsverfahren durch:

    <\enumerate-alpha>
      <item>Beginne mit <math|k<rsub|1>\<assign\>1>.

      <item>Wiederhole für <math|j =1,\<ldots\>,n>.

      <\itemize>
        <item>Berechne <math|<wide|a<rsub|j>|~>\<assign\>a<rsub|j>-<big|sum><rsub|i=1><rsup|k<rsub|j>-1>\<langle\>q<rsub|i>,a<rsub|j>\<rangle\>>

        <item>Falls <math|<wide|a<rsub|j>|~>=0>, so setze
        <math|k<rsub|j+1>\<assign\>k<rsub|j>>.

        <item>Falls <math|<wide|a<rsub|j>|~>\<neq\>0>, so setze
        <math|q<rsub|k<rsub|j>>\<assign\><frac*|<wide|a<rsub|j>|~>|<around*|\<\|\|\>|<wide|a<rsub|j>|~>|\<\|\|\>>>>
        und <math|k<rsub|j+1>\<assign\>k<rsub|j>+1>.
      </itemize>

      <item>Ergänze die orthonormalen Vektoren
      <math|q<rsub|1>,\<ldots\>,q<rsub|k<rsub|n+1>>\<in\>\<bbb-R\><rsup|n>>
      zu einer Orthonormalbasis <math|q<rsub|1>,\<ldots\>,q<rsub|m>> von
      <math|\<bbb-R\><rsup|n>>. Es sei <math|Q\<in\>\<bbb-R\><rsup|n\<times\>n>>
      die Matrix mit diesen Vektoren als Spalten.
    </enumerate-alpha>

    <item>Berechnung von <math|A>: Sei <math|A=<around*|(|a<rsub|ij>|)>\<in\>\<bbb-R\><rsup|n\<times\>n>>
    definiert durch

    <\equation*>
      a<rsub|ij>\<assign\>\<langle\>q<rsub|i>,a<rsub|j>\<rangle\>
    </equation*>

    Du musst dafür fast nichts rechnen: Die Werte <math|a<rsub|ij>> für
    <math|i\<less\>k<rsub|j>> hast du in Schritt 1 schon berechnet. Auÿerdem
    gilt <math|a<rsub|k<rsub|j>j>=<around*|\<\|\|\>|<wide|a<rsub|j>|~>|\<\|\|\>>>
    und <math|a<rsub|ij>=0> für <math|i \<gtr\> k<rsub|j>> (insbesondere also
    für <math|i \<gtr\>k<rsub|n+1>>).
  </enumerate-numeric>

  <\example*>
    Sei

    <\equation*>
      A=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>.
    </equation*>

    Dann berechnen wir

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|a<rsub|1>|~>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>>>|<row|<cell|q<rsub|1>>|<cell|=>|<cell|<frac*|<wide|a<rsub|1>|~>|<around*|\<\|\|\>|<wide|a<rsub|1>|~>|\<\|\|\>>>
      =<tfrac|1|<sqrt|2>>\<cdot\><wide|a<rsub|1>|~>>>|<row|<cell|<wide|a<rsub|2>|~>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>-<around*|\<langle\>|<tfrac|1|<sqrt|2>>\<cdot\><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|\<rangle\>>\<cdot\><tfrac|1|<sqrt|2>>\<cdot\><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>-<tfrac|1|2>\<cdot\><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>=<matrix|<tformat|<table|<row|<cell|<frac*|1|2>>>|<row|<cell|1>>|<row|<cell|-<frac*|1|2>>>|<row|<cell|0>>>>>>>|<row|<cell|q<rsub|2>>|<cell|=>|<cell|<frac*|<wide|a<rsub|2>|~>|<around*|\<\|\|\>|<wide|a<rsub|2>|~>|\<\|\|\>>>
      =<tfrac|1|<sqrt|3/2>>\<cdot\><wide|a<rsub|2>|~>>>|<row|<cell|<wide|a<rsub|3>|~>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>-<around*|\<langle\>|<tfrac|1|<sqrt|2>>\<cdot\><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>|\<rangle\>>\<cdot\><tfrac|1|<sqrt|2>>\<cdot\><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>>>|<row|<cell|>|<cell|>|<cell|-<around*|\<langle\>|<tfrac|1|<sqrt|3/2>>\<cdot\><matrix|<tformat|<table|<row|<cell|<frac*|1|2>>>|<row|<cell|1>>|<row|<cell|-<frac*|1|2>>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>|\<rangle\>>\<cdot\><tfrac|1|<sqrt|3/2>>\<cdot\><matrix|<tformat|<table|<row|<cell|<frac*|1|2>>>|<row|<cell|1>>|<row|<cell|-<frac*|1|2>>>|<row|<cell|0>>>>>=\<ldots\>=0>>>>
    </eqnarray*>

    Wir ergänzen <math|q<rsub|1>,q<rsub|2>> zu einer ONB von
    <math|\<bbb-R\><rsup|4>> mit

    <\equation*>
      q<rsub|3>\<assign\><tfrac|1|<sqrt|3>>\<cdot\><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>>>>,<space|2em>q<rsub|4>\<assign\><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>.
    </equation*>

    Als Ergebnis haben wir dann

    <\equation*>
      Q=<matrix|<tformat|<table|<row|<cell|<frac*|1|<sqrt|2>>>|<cell|<frac*|1|<sqrt|6>>>|<cell|<frac*|1|<sqrt|3>>>|<cell|0>>|<row|<cell|0>|<cell|<frac*|<sqrt|2>|<sqrt|3>>>|<cell|<frac*|1|<sqrt|3>>>|<cell|0>>|<row|<cell|<frac*|1|<sqrt|2>>>|<cell|<frac*|-1|<sqrt|6>>>|<cell|<frac*|1|<sqrt|3>>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>,<space|2em>R=<matrix|<tformat|<table|<row|<cell|<sqrt|2>>|<cell|<frac*|1|<sqrt|2>>>|<cell|<frac*|-1|<sqrt|2>>>>|<row|<cell|0>|<cell|<frac*|<sqrt|3>|<sqrt|2>>>|<cell|<frac*|<sqrt|3>|<sqrt|2>>>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>.
    </equation*>
  </example*>
</body>