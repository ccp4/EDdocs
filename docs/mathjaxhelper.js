MathJax.Hub.Config({
  config: ["MMLorHTML.js"],
  jax: ["input/TeX", "output/HTML-CSS", "output/NativeMML"],
  extensions: ["MathMenu.js", "MathZoom.js"],
  TeX: {
    Macros: {
        cc: ["{\\mathcal #1}",1],
        bb: ["{\\mathbf #1}",1],
        dP: "{\\partial}",
        grad: "{\\nabla}",
        vecTwo: ["{\\left[\\begin{array}{c} #1 \\\\ #2 \\end{array}\\right]}",2],
        matTwo: ["{\\left[\\begin{array}{cc} #1 & #2 \\\\ #3 & #4 \\end{array}\\right]}",4],
        matFour:["{\\left[\\begin{array}{cccc} #1\\\\ #2\\\\ #3\\\\ #4 \\end{array}\\right]}",4],
        expp:["{e^{-2j\\pi \\left(#1 \\right)}}",1],
        expj:["{e_{j}^{#1}}",1],
    }
  }
});
