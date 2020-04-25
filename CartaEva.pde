/**
 ***Carta a mi amiga y artista Eva ***
 */


import processing.pdf.*;

size(600, 1600);

beginRecord(PDF, "CartaParaEva.pdf"); 

background(255);
stroke(0, 20);
strokeWeight(20.0);
line(200, 0, 400, height);

int m = 54; 

for (int y=0; y<height; y+=m) {
  for (int x=0; x<width; x+=m) {
    int j=int(random(9));
    if (j==1) {
      ellipse(x+0.5*m, y+0.5*m, m, m);
    } else if (j==2) {
      line(x, y+0.5*m, x+0.5*m, y+0.5*m); 
      line( x+0.5*m, y+0.5*m, x+0.5*m, y);
    } else if (j==3) {
      line(x+m, y+0.5*m, x+0.5*m, y+0.5*m);
      line(x+0.5*m, y+0.5*m, x+0.5*m, y+m);
    } else if (j==4) {
      line(x, y+0.5*m, x+0.5*m, y+m);
      line(x+0.5*m, y+m, x+m, y+0.5*m);
    } else if (j==5) {
      line(x+0.5*m, y, x+m, y+0.5*m);
      line(x+0.5*m, y, x, y+0.5*m);
    } else if (j==6) {
      line(x+0.5*m, y+0.5*m, x+m, y+0.5*m);
      line(x+0.5*m, y+0.5*m, x+0.5*m, y);
    } else if (j==7) {
      line(x+0.5*m, y+0.5*m, x, y+0.5*m);
      line(x+0.5*m, y+0.5*m, x+0.5*m, y+m);
    }
  }
}
String[] a = {"Querida Eva,", 
"Ante todo quisiera agradecerte por permitirme participar de tu juego,", 
"por referirte hacia mí como artista y también como “un niño grande”.", 
"Bueno vamos al juego:", "¿ Qué es el arte (para mi) ? ", 
"Bueno, según mis conocimientos teóricos es una forma de trabajar la realidad o un sentimiento,", 
"y eso se puede realizar de una o varias maneras: utilizando imágenes, materiales, personas, el sonido, etc.", 
"Ahora en la práctica es otra cosa:  a veces (como artistas) solo tenemos ideas",
"y esas ideas no pretenden generar o adoptar ningún sentimiento,",
"ni se valen de ninguna realidad,",
"solo son ideas y cuando las ponemos en un papel, un instrumento o una computadora,",
"esas ideas comienzan a tomar forma y comienzan a materializarse.",
"Este procedimiento no las convierte en obras de arte inmediatamente,",
"pero sí puede llegar a convertirlas el escribir, hablar o darle una intención.", 
"Al final el proceso de “creación” o “materialización” de ideas es un trabajo", 
"y cuando trabajamos naturalmente es porque deseamos ver un resultado.",
"Luego viene la parte más difícil (para algunas personas) que es:", 
"mostrar esta idea convertida en un trabajo u obra gracias a este procedimiento que realizamos para materializarla.",
"Y a partir de esta “muestra” aparecen los “ojos y oídos” que evalúan y le “dan” valor con sus aplausos,", 
"palabras o escritos a nuestra querida idea ya convertida en obra de arte.",
"Me tomé también el trabajo de escribir esta carta como una pequeña obra de arte personal para tí.",
"Lo realicé en processing, puedes ver el código fuente en el siguiente enlace:",
"https://github.com/jpdibacco/CartaParaEva",
"Espero haber sido claro.",
"Besos y abrazos,",
"Tu amigo y colega,",
"Juan Patricio DI BACCO"
};
textSize(16);
fill(20);
for (int i = 0; i< a.length; i++){
    text(a[i], 10, 10 + i*50, 500, 590);
  }

//text(a[0], 10, 10, 500, 500);  // Text wraps within text box
endRecord();
