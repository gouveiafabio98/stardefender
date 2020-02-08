import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;e
import ddf.minim.effects.*;

int dica=int(random(1, 4));
float angle;
PImage fundomenu, foguetaoinicio, foguetao, barra;
PFont texto, texto2;
int a=0, fundo1x=0, fundo2x=900, tamanholetra1=60, tamanholetra2=60, tamanholetra3=60, tamanholetra4=60, piscar, logo, imgfoguetao=0;
int ordemfoguetao=0, musica=0, xvoltar=750, tempopause=0;
int som;
int somx=210;
Minim music;
AudioPlayer player;
PImage poweruptiro, powerupnave, poweruptransparente;
PImage WSativo, WSdesativo, UPDOWNativo, UPDOWNdesativo;
PImage controlos;
PImage fundo1;
PImage fundo2;
PImage fundo3;
PImage fundo4;
PImage fundo5;
PImage fundo6;
PImage foguetao1;
PImage texturatiro;
PImage asteroidgrande1, asteroidgrande2, asteroidgrande3;
PImage asteroidmedio1, asteroidmedio2, asteroidmedio3;
PImage asteroidpequeno1, asteroidpequeno2, asteroidpequeno3;
PImage boss, tiroboss;
PImage imgexplosao;
PImage anelfogo;
PImage dica1;
PImage dica2;
int posi=1;
int fund=1;
int ytiro;
int xtiro=100;
int ytiro1;
int xtiro1=100;
int tiro1=0;
int fogx=20;
int fogy=300;
int xxx=0;
int xxx1=900;
int teclas=0;

int text1=750, text2=3100, text3=850, text4=1050, text5=1400, text6=1800, text7=2100, text8=2350, text9=2700, text10=900, text11=950, text12=1100, text13=1150, text14=1200, text15=1250, text16=1450, text17=1500, text18=1550, text19=1600, text20=1650, text21=1700, text22=1850, text23=1900, text24=1950, text25=2000, text26=2150, text27=2200, text28=2250, text29=2400, text30=2450, text31=2500, text32=2750, text33=2800, text34=1300, text35=2550, text36=2600;

AudioPlayer player1;
AudioPlayer player2;
AudioPlayer player3;
AudioPlayer player4;
AudioPlayer player5;
AudioPlayer player6;

int som1=0;
int som2=0;
int som3=0;
int som4=0;
int som5=0;
int som6=0;

int ag1x=int(random(900, 1500));
int ag2x=int(random(900, 1500));
int ag3x=int(random(900, 1500));
int am1x=int(random(900, 1500));
int am2x=int(random(900, 1500));
int am3x=int(random(900, 1500));
int ap1x=int(random(900, 1500));
int ap2x=int(random(900, 1500));
int ap3x=int(random(900, 1500));
int ag1y=int(random(1, 600));
int ag2y=int(random(1, 600));
int ag3y=int(random(1, 600));
int am1y=int(random(1, 650));
int am2y=int(random(1, 650));
int am3y=int(random(1, 650));
int ap1y=int(random(1, 675));
int ap2y=int(random(1, 675));
int ap3y=int(random(1, 675));

int ag1x1=int(random(900, 1500));
int ag2x1=int(random(900, 1500));
int ag3x1=int(random(900, 1500));
int am1x1=int(random(900, 1500));
int am2x1=int(random(900, 1500));
int am3x1=int(random(900, 1500));
int ap1x1=int(random(900, 1500));
int ap2x1=int(random(900, 1500));
int ap3x1=int(random(900, 1500));
int ag1y1=int(random(1, 600));
int ag2y1=int(random(1, 600));
int ag3y1=int(random(1, 600));
int am1y1=int(random(1, 650));
int am2y1=int(random(1, 650));
int am3y1=int(random(1, 650));
int ap1y1=int(random(1, 675));
int ap2y1=int(random(1, 675));
int ap3y1=int(random(1, 675));


//variaveis de "Morte aos meteoros"- Capitão da nave Star Defender, 2015
int ag1xk=0;
int ag2xk=0;
int ag3xk=0;
int am1xk=0;
int am2xk=0;
int am3xk=0;
int ap1xk=0;
int ap2xk=0;
int ap3xk=0;

int ag1x1k=0;
int ag2x1k=0;
int ag3x1k=0;
int am1x1k=0;
int am2x1k=0;
int am3x1k=0;
int ap1x1k=0;
int ap2x1k=0;
int ap3x1k=0;

float xvidaboss=300;
int vidaboss=300;
int tempotiroboss=0;
int comptiroboss=100;
int xtiroboss=600;
int ytiroboss=305;
int yboss=200;
int bossandar=0;
int piscar2=0;
int distancia=0;
int continuar=1;
int tempocontinuar;
int acarregar=1;
int explosao=0;
float fundo1y=0;
float fundo2y=700;
int explosaoboss=0;
int bossmusica=0;
int xpoweruptiro=int(random(1500, 4000));
int xpowerupnave=int(random(1500, 4000));
int xpoweruptransparente=int(random(1500, 4000));
int ypoweruptiro=int(random(0, 665));
int ypowerupnave=int(random(0, 665));
int ypoweruptransparente=int(random(0, 665));
int tempopowernave=0;
int tempopowertiro=0;
int tempopowertransparente=0;

int nivel=1;
void setup() {
  size(900, 700);
  fundo1=loadImage("fundo1.jpg");
  fundo2=loadImage("fundo2.jpg");
  fundo3=loadImage("fundo3.jpg");
  fundo4=loadImage("fundo4.jpg");
  fundo5=loadImage("fundo5.jpg");
  fundo6=loadImage("fundo6.jpg");
  foguetao1=loadImage("foguetao1.png");
  texturatiro=loadImage("texturatiro.jpg");
  fundomenu=loadImage("estrelas.jpg");
  foguetaoinicio=loadImage("foguetaoinicio.png");
  foguetao=loadImage("1foguetao.png");
  texto=loadFont("texto.vlw");
  texto2=loadFont("texto2.vlw");
  barra=loadImage("barrasom.jpg");
  asteroidgrande1=loadImage("asteroidgrande1.png");
  asteroidgrande2=loadImage("asteroidgrande2.png");
  asteroidgrande3=loadImage("asteroidgrande3.png");
  asteroidmedio1=loadImage("asteroidmedio1.png");
  asteroidmedio2=loadImage("asteroidmedio2.png");
  asteroidmedio3=loadImage("asteroidmedio3.png");
  asteroidpequeno1=loadImage("asteroidpequeno1.png");
  asteroidpequeno2=loadImage("asteroidpequeno2.png");
  asteroidpequeno3=loadImage("asteroidpequeno3.png");
  dica1=loadImage("dica.png");
  dica2=loadImage("dica2.png");
  boss=loadImage("boss.png");
  anelfogo=loadImage("anelfogo.png");
  controlos=loadImage("Controlos.png");
  tiroboss=loadImage("tiro_boss.png");
  imgexplosao=loadImage("explosao.png");
  WSativo=loadImage("WS_ativo.png");
  WSdesativo=loadImage("WS_desativo.png");
  UPDOWNativo=loadImage("UPDOWN_ativo.png");
  UPDOWNdesativo=loadImage("UPDOWN_desativo.png");
  powerupnave=loadImage("speednave.png");
  poweruptiro=loadImage("tirospeed.png");
  poweruptransparente=loadImage("transparentenave.png");
  textFont(texto);
  music=new Minim(this);
  player=music.loadFile("vangelis.mp3");
  player.rewind();
  player.play();
  player1=music.loadFile("Sabre.mp3");
  player4=music.loadFile("Tiro.mp3");
  player5=music.loadFile("Nave.mp3");
  player3=music.loadFile("Pedra.mp3");
  player2=music.loadFile("Boss_Tiro.mp3");
  player6=music.loadFile("BossExplosao.mp3");
}


void draw() {
  if (player.isPlaying()==false) {
    player.rewind(); 
    player.play();
  }
  if (a==0 || a==1 || a==2) {
    menu();
  }
  if (a==3) {
    fundo();
    if (nivel!=6) {
      image(powerupnave, xpowerupnave, ypowerupnave, 35, 35);
      image(poweruptiro, xpoweruptiro, ypoweruptiro, 35, 35);
      image(poweruptransparente, xpoweruptransparente, ypoweruptransparente, 35, 35);
    }
    nave();
    tiro();
    if (som4==0) {
      player4.play();
      player4.rewind();
      som4=1;
    }
    nivel();
    colisaonave();
    colisaotiros();
    asteroids();
    distancia();
    pausa();
    if (tempopause>=5) {
      tempopause=0;
    }
    if (explosao>=1) {
      if (som3==0) {
        player5.play();
        player5.rewind();
        som3=1;
      }
      explosao+=2;
      image(imgexplosao, 20, fogy+20, 70, 70);
    }
    if (explosao>=50) {
      explosao=0;
      a=5;
      som3=0;
    }
    if (tempopowertiro!=0) { //tiro
      image(poweruptiro, 845, 5, 50, 50);
    }
    if (tempopowernave!=0) { //nave
      if (tempopowertiro!=0) {
        image(powerupnave, 790, 5, 50, 50);
      } else {
        image(powerupnave, 845, 5, 50, 50);
      }
    }
    if (tempopowertransparente!=0) { //transparente
      if (tempopowertiro!=0 && tempopowernave!=0) {//os dois ativos
        image(poweruptransparente, 735, 5, 50, 50);
      }
      if (tempopowertiro==0 && tempopowernave==0) {//os dois desativos
        image(poweruptransparente, 845, 5, 50, 50);
      }
      if ((tempopowernave!=0 && tempopowertiro==0) || (tempopowertiro!=0 && tempopowernave==0)) {//um deles ativo
        image(poweruptransparente, 790, 5, 50, 50);
      }
    }
  }
  if (a==4) {
    if (tempopause<5) {
      tempopause++;
    }
    fundo();
    nave();
    tiro();
    boss();
    stroke(255);
    fill(#FFD603);
    if (nivel==1) {
      image(asteroidmedio1, am1x, am1y, 50, 50);
      image(asteroidmedio2, am2x, am2y, 50, 50);
      image(asteroidmedio3, am3x, am3y, 50, 50);
      image(asteroidpequeno1, ap1x, ap1y, 25, 25);
      image(asteroidpequeno2, ap2x, ap2y, 25, 25);
      image(asteroidpequeno3, ap3x, ap3y, 25, 25);
      image(asteroidmedio1, am1x1, am1y1, 50, 50);
      image(asteroidmedio2, am2x1, am2y1, 50, 50);
      image(asteroidmedio3, am3x1, am3y1, 50, 50);
      image(asteroidpequeno1, ap1x1, ap1y1, 25, 25);
      image(asteroidpequeno2, ap2x1, ap2y1, 25, 25);
      image(asteroidpequeno3, ap3x1, ap3y1, 25, 25);
    }
    if (nivel==2) {
      image(asteroidpequeno1, ap1x, ap1y, 25, 25);
      image(asteroidpequeno2, ap2x, ap2y, 25, 25);
      image(asteroidpequeno3, ap3x, ap3y, 25, 25);
      image(asteroidpequeno1, ap1x1, ap1y1, 25, 25);
      image(asteroidmedio1, am1x, am1y, 50, 50);
      image(asteroidmedio2, am2x, am2y, 50, 50);
      image(asteroidgrande1, ag1x, ag1y, 100, 100); 
      image(asteroidgrande2, ag2x, ag2y, 100, 100);
      image(asteroidgrande3, ag3x, ag3y, 100, 100);
    }
    if (nivel==3) {
      image(asteroidpequeno1, ap1x, ap1y, 25, 25);
      image(asteroidpequeno2, ap2x, ap2y, 25, 25);
      image(asteroidpequeno3, ap3x, ap3y, 25, 25); 
      image(asteroidmedio1, am1x, am1y, 50, 50); 
      image(asteroidmedio2, am2x, am2y, 50, 50); 
      image(asteroidmedio3, am3x, am3y, 50, 50);
      image(asteroidmedio1, am1x1, am1y1, 50, 50); 
      image(asteroidgrande1, ag1x, ag1y, 100, 100);
      image(asteroidgrande2, ag2x, ag2y, 100, 100);
      image(asteroidgrande3, ag3x, ag3y, 100, 100);
      image(asteroidgrande1, ag1x1, ag1y1, 100, 100);
    }
    if (nivel==4) {
      image(asteroidpequeno1, ap1x, ap1y, 25, 25);
      image(asteroidpequeno2, ap2x, ap2y, 25, 25);
      image(asteroidpequeno3, ap3x, ap3y, 25, 25);
      image(asteroidmedio1, am1x, am1y, 50, 50);
      image(asteroidmedio2, am2x, am2y, 50, 50);
      image(asteroidmedio3, am3x, am3y, 50, 50);
      image(asteroidmedio1, am1x1, am1y1, 50, 50);
      image(asteroidgrande1, ag1x, ag1y, 100, 100);
      image(asteroidgrande2, ag2x, ag2y, 100, 100);
      image(asteroidgrande3, ag3x, ag3y, 100, 100);
      image(asteroidgrande1, ag1x1, ag1y1, 100, 100);
      image(asteroidgrande2, ag2x1, ag2y1, 100, 100);
    }
    if (nivel==5) {
      image(asteroidpequeno1, ap1x, ap1y, 25, 25);
      image(asteroidpequeno2, ap2x, ap2y, 25, 25);
      image(asteroidpequeno3, ap3x, ap3y, 25, 25);
      image(asteroidmedio1, am1x, am1y, 50, 50); 
      image(asteroidmedio2, am2x, am2y, 50, 50);
      image(asteroidmedio3, am3x, am3y, 50, 50);
      image(asteroidgrande1, ag1x, ag1y, 100, 100);
      image(asteroidgrande2, ag2x, ag2y, 100, 100);
      image(asteroidgrande3, ag3x, ag3y, 100, 100);
      image(asteroidpequeno1, ap1x1, ap1y1, 25, 25);
      image(asteroidpequeno2, ap2x1, ap2y1, 25, 25);
      image(asteroidpequeno3, ap3x1, ap3y1, 25, 25);
      image(asteroidmedio1, am1x1, am1y1, 50, 50);
      image(asteroidmedio2, am2x1, am2y1, 50, 50);
      image(asteroidmedio3, am3x1, am3y1, 50, 50);
      image(asteroidgrande1, ag1x1, ag1y1, 100, 100);
      image(asteroidgrande2, ag2x1, ag2y1, 100, 100);
      image(asteroidgrande3, ag3x1, ag3y1, 100, 100);
    }
    image(powerupnave, xpowerupnave, ypowerupnave, 35, 35);
    image(poweruptiro, xpoweruptiro, ypoweruptiro, 35, 35);
    if (explosao>=1) {
      image(imgexplosao, 20, fogy+20, 70, 70);
    }
    rect(250, 250, 400, 60, 20, 20, 20, 20);
    pausa();
    noStroke();
    textFont(texto);
    textSize(30);
    fill(#FFD603);
    text("nivel "+nivel, 10, 40);
    if (tempopowertiro!=0) {
      image(poweruptiro, 845, 5, 50, 50);
    }
    if (tempopowernave!=0) {
      if (tempopowernave!=0) {
        image(powerupnave, 790, 5, 50, 50);
      }
    } else {
      if (tempopowernave!=0) {
        image(powerupnave, 845, 5, 50, 50);
      }
    }
  }
  if (a==5) {
    fundo();
    stroke(255);
    fill(#FFD603);
    rect(150, 250, 600, 60, 20, 20, 20, 20);
    perder();
    noStroke();
  }
  if (a==6) {
    //reset posição meteoros
    ag1x=int(random(900, 1500));
    ag2x=int(random(900, 1500));
    ag3x=int(random(900, 1500));
    am1x=int(random(900, 1500));
    am2x=int(random(900, 1500));
    am3x=int(random(900, 1500));
    ap1x=int(random(900, 1500));
    ap2x=int(random(900, 1500));
    ap3x=int(random(900, 1500));
    ag1x1=int(random(900, 1500));
    ag2x1=int(random(900, 1500));
    ag3x1=int(random(900, 1500));
    am1x1=int(random(900, 1500));
    am2x1=int(random(900, 1500));
    am3x1=int(random(900, 1500));
    ap1x1=int(random(900, 1500));
    ap2x1=int(random(900, 1500));
    ap3x1=int(random(900, 1500));
    ag1y=int(random(1, 600));
    ag2y=int(random(1, 600));
    ag3y=int(random(1, 600));
    am1y=int(random(1, 650));
    am2y=int(random(1, 650));
    am3y=int(random(1, 650));
    ap1y=int(random(1, 675));
    ap2y=int(random(1, 675));
    ap3y=int(random(1, 675));
    ag1y1=int(random(1, 600));
    ag2y1=int(random(1, 600));
    ag3y1=int(random(1, 600));
    am1y1=int(random(1, 650));
    am2y1=int(random(1, 650));
    am3y1=int(random(1, 650));
    ap1y1=int(random(1, 675));
    ap2y1=int(random(1, 675));
    ap3y1=int(random(1, 675));
    //reset da morte dos meteoros
    ag1xk=0;
    ag2xk=0;
    ag3xk=0;
    am1xk=0;
    am2xk=0;
    am3xk=0;
    ap1xk=0;
    ap2xk=0;
    ap3xk=0;
    ag1x1k=0;
    ag2x1k=0;
    ag3x1k=0;
    am1x1k=0;
    am2x1k=0;
    am3x1k=0;
    ap1x1k=0;
    ap2x1k=0;
    ap3x1k=0;
    fundo();
    fill(#FFD603);
    stroke(255);
    rect(170, 250, 540, 130, 20, 20, 20, 20);
    textFont(texto);
    textSize(30);
    text("continuar", 700, 690);
    if (nivel!=6) {
      text("sair", 10, 690);
    }
    fill(0);
    textFont(texto2);
    textSize(60);
    text("Nivel "+continuar, 280, 305);
    text("completo", 185, 365);
  }
  if (a==7) {
    fundo();
    fill(0);
    rect(20, 600, 900-40, 30, 20, 20, 20, 20);
    fill(#FFD603);
    rect(20, 600, acarregar, 30, 20, 20, 20, 20);
    textSize(40);
    text("Dicas:", 100, 60);
    if (dica==1) {
      textSize(15);
      image(powerupnave, 100, 145, 75, 75);
      image(poweruptiro, 100, 275, 75, 75);
      image(poweruptransparente, 100, 410, 75, 75);
      text("Com este bónus o movimento da nave", 225, 175);
      text("fica mais rápido.", 225, 200);
      text("Com este bónus os tiros da nave", 225, 305);
      text("ficam mais rápidos.", 225, 330);
      text("Com este bónus a nave fica invisivel", 225, 440);
      text("e não é destruida pelos embates.", 225, 465);
    }
    if (dica==2) {
      textSize(25);
      image(dica1, 277, 235, 346, 300);
      text("Os bónus ajudam muito, mas", 100, 145);
      text("devem ser usados com cuidado,", 100, 180);
      text("eles gastam-se antes que se", 100, 215);
      text("dê conta.", 100, 250);
    }
    if (dica==3) {
      textSize(25);
      image(dica2, 277, 235, 346, 300);
      text("Podes mudar a música, a nave,", 100, 145);
      text("o volume, os controlos e ver", 100, 180);
      text("os créditos no menu das opções.", 100, 215);
    }
    if (dica==4) {
      textSize(25);
      image(foguetao1, 300, 235, 300, 300);
      text("Quando se clica em outra tecla", 100, 145);
      text("sem serem os controlos da nave", 100, 180);
      text("a nave para de se mover.", 100, 215);
    }
    textSize(20);
    if (acarregar<900-40) {
      acarregar+=5;
      text("A Carregar nivel "+nivel+"...", 275, 580);
    } else {
      if (piscar2>10) {
        text("Clique Enter para continuar...", 180, 580);
      }
      if (piscar2>20) {
        piscar2=0;
      }
      piscar2++;
    }
  }
  if (a==8) {
    creditos();
  }
  if (a==9) {
    image(controlos, 230, 220, 440, 260);
    fill(0);
    textFont(texto);
    textSize(60);
    text("Controlos", 250, 290);
    textFont(texto2);
    textSize(60);
    text("<", 615, 470);
    if (teclas==0) {
      image(WSdesativo, 245, 340, 147, 100);
      image(UPDOWNativo, 417, 340, 147, 100);
    }
    if (teclas==1) {
      image(WSativo, 245, 340, 147, 100);
      image(UPDOWNdesativo, 417, 340, 147, 100);
    }
  }
  if (a==10) {
    image(fundomenu, fundo1x, 0, 900, 700);
    image(fundomenu, fundo2x, 0, 900, 700);
    fundo1x--;
    fundo2x--;
    if (fundo1x<-900) {
      fundo1x=900;
    }
    if (fundo2x<-900) {
      fundo2x=900;
    }
    textFont(texto);
    textSize(70);
    text("regras", 20, 90);
    textFont(texto2);
    textSize(20);
    text("    o objectivo do jogo é chegar o mais longe", 20, 160);
    text("possivel.", 20, 190);
    text("    no total existem 6 niveis no qual o ultimo é o", 20, 260);
    text("nivel do boss.", 20, 290);
    text("    se a nave bater contra um asteroide perdes", 20, 350);
    text("e tens de recomeçar tudo do inicio.", 20, 390);
    text("    no jogo existem 3 bónus, a imortalidade, tiros", 20, 460);
    text("mais rápidos e o movimento da nave mais rápido.", 20, 490);
    text("    podes controlar o movimento da nave com as", 20, 560);
    text("teclas cima baixo ou 'w' 's' conforme tenhas", 20, 590);
    text("selecionado no menu das opções.", 20, 620);
    textFont(texto);
    if (mouseX>730 && mouseX<900 && mouseY>650 && mouseY<700) {
      textSize(35);
      xvoltar=730;
    } else {
      textSize(30);
      xvoltar=750;
    }
    text("voltar", xvoltar, 680);
  }
}

void creditos() {
  image(fundomenu, 0, fundo1y, 900, 700);
  image(fundomenu, 0, fundo2y, 900, 700);
  fundo1y-=0.5;
  fundo2y-=0.5;
  if (fundo1y<-700) {
    fundo1y=700;
  }
  if (fundo2y<-700) {
    fundo2y=700;
  }
  fill(#FFD603);
  textSize(40);
  textFont(texto);
  textAlign(CENTER);
  text("Créditos", 450, text1);
  text("Fim", 450, text2);
  textSize(30);
  text("Programadores", 450, text3);
  text("Músicas", 450, text4);
  text("Fundos", 450, text5);
  text("Sons", 450, text6);
  text("Naves", 450, text7);
  text("imagens", 450, text8);
  text("Tipo de Letra", 450, text9);
  textFont(texto2);
  textSize(15);
  text("Fábio Gouveia Silva N 9 TIG14", 450, text10);
  text("Marcelo Fernandes Coelho N 19 TIG14", 450, text11);
  text("Vangelis - Conquest of Paradise", 450, text12);
  text("Master of Puppets - Metallica", 450, text13);
  text("John Williams - Star Wars", 450, text14);
  text("Hans Zimmer - He's a Pirate", 450, text15);
  text("Portal 2 Soundtrack - vs Wheatley", 450, text34);
  text("Nível 1 - goo.gl/F8uzbC", 450, text16);
  text("Nível 2 - goo.gl/ut41v2", 450, text17);
  text("Nível 3 - goo.gl/IFh8FA", 450, text18);
  text("Nível 4 - goo.gl/U7SLgO", 450, text19);
  text("Nível 5 - goo.gl/tS2jLK", 450, text20);
  text("Nível 6 - goo.gl/gQ3suO", 450, text21); 
  text("soundbible.com/1087-Laser.html", 450, text22);
  text("soundbible.com/562-Lightsaber-Turn-On.html", 450, text23);
  text("soundbible.com/538-Blast.html", 450, text24);
  text("soundbible.com/472-Laser-Blasts.html", 450, text25);
  text("goo.gl/dXI9sx", 450, text26);
  text("goo.gl/egX3YS", 450, text27);
  text("goo.gl/eAgdqs", 450, text28);
  text("goo.gl/qTqHfq", 450, text29);
  text("goo.gl/SAake7", 450, text30);
  text("goo.gl/Lbd5y1", 450, text31);
  text("goo.gl/xUe4Dy", 450, text35);
  text("goo.gl/aAwPvv", 450, text36);
  text("Xirod", 450, text32);
  text("StarJediOutline", 450, text33);
  textAlign(CORNER);
  if (text2>350) {
    text2--;
  }
  text1--; 
  text3--; 
  text4--; 
  text5--; 
  text6--; 
  text7--; 
  text8--; 
  text9--; 
  text10--; 
  text11--; 
  text12--; 
  text13--; 
  text14--; 
  text15--; 
  text16--; 
  text17--; 
  text18--; 
  text19--; 
  text20--; 
  text21--; 
  text22--; 
  text23--; 
  text24--; 
  text25--; 
  text26--; 
  text27--; 
  text28--; 
  text29--; 
  text30--; 
  text31--; 
  text32--; 
  text33--;
  text34--;
  text35--;
  text36--;
  if (text33<-450) {
    a=0;
    text1=750; 
    text2=3100; 
    text3=850; 
    text4=1050; 
    text5=1350; 
    text6=1750; 
    text7=2050; 
    text8=2300; 
    text9=2550; 
    text10=900; 
    text11=950; 
    text12=1100; 
    text13=1150; 
    text14=1200; 
    text15=1250; 
    text16=1400; 
    text17=1450; 
    text18=1500; 
    text19=1550; 
    text20=1600; 
    text21=1650; 
    text22=1800; 
    text23=1850; 
    text24=1900; 
    text25=1950; 
    text26=2100; 
    text27=2150; 
    text28=2200; 
    text29=2350; 
    text30=2400; 
    text31=2450; 
    text32=2600; 
    text33=2650;
    text34=1300;
    text35=2550;
    text36=2600;
  }
}

void boss() {
  if (nivel==6) {
    stroke(0);
    fill(#AF0909);
    rect(xvidaboss, 670, vidaboss, 20, 20, 20, 20, 20);
    image(boss, 600, yboss, 300, 300);
    noStroke();
    if (tempotiroboss>10) {
      if (xtiroboss==600) {
        image(tiroboss, xtiroboss, ytiroboss, comptiroboss, 94);
      } else {
        image(tiroboss, xtiroboss, ytiroboss, comptiroboss, 94);
      }
    }
  }
}
void distancia() {
  if (nivel!=6) {
    if (xpowerupnave>=0 && xpowerupnave<=100 && ypowerupnave>=fogy && ypowerupnave<=fogy+100) {
      tempopowernave=300;
      xpowerupnave=int(random(1500, 4000));
      ypowerupnave=int(random(0, 665));
    }
    if (xpoweruptiro>=0 && xpoweruptiro<=100 && ypoweruptiro>=fogy && ypoweruptiro<=fogy+100) {
      tempopowertiro=300;
      xpoweruptiro=int(random(1500, 4000));
      ypoweruptiro=int(random(0, 665));
    }
    if (xpoweruptransparente>=0 && xpoweruptransparente<=100 && ypoweruptransparente>=fogy && ypoweruptransparente<=fogy+100) {
      tempopowertransparente=300;
      xpoweruptransparente=int(random(1500, 4000));
      ypoweruptransparente=int(random(0, 665));
    }
    if (tempopowertransparente==300) {
      if (imgfoguetao==0) {
        foguetao1=loadImage("foguetao1 transparente .png");
      }
      if (imgfoguetao==11) {
        foguetao1=loadImage("foguetao11 transparente .png");
      }
      if (imgfoguetao==21) {
        foguetao1=loadImage("foguetao21 transparente .png");
      }
    }
    xpoweruptiro-=2;
    xpowerupnave-=2;
    xpoweruptransparente-=2;
    if (tempopowernave!=0) {
      tempopowernave--;
    }
    if (tempopowertiro!=0) {
      tempopowertiro--;
    }
    if (tempopowertransparente!=0) {
      tempopowertransparente--;
    }
    if (tempopowertransparente==1) {
      if (imgfoguetao==0) {
        foguetao1=loadImage("foguetao1.png");
      }
      if (imgfoguetao==11) {
        foguetao1=loadImage("foguetao11.png");
      }
      if (imgfoguetao==21) {
        foguetao1=loadImage("foguetao21.png");
      }
    }
    distancia++;
    if (xpoweruptiro<-50) {
      xpoweruptiro=int(random(1500, 4000));
      ypoweruptiro=int(random(0, 665));
    }
    if (xpowerupnave<-50) {
      xpowerupnave=int(random(1400, 4000));
      ypowerupnave=int(random(0, 665));
    }
    if (xpoweruptransparente<-50) {
      xpoweruptransparente=int(random(1400, 4000));
      ypoweruptransparente=int(random(0, 665));
    }
  }
  if (distancia==1000) {
    a=6;
  }
  if (distancia==2000) {
    a=6;
  }
  if (distancia==3000) {
    a=6;
  }
  if (distancia==4000) {
    a=6;
  }
  if (distancia==5000) {
    a=6;
  }
}

void perder() {
  ag1x=int(random(900, 1500));
  ag2x=int(random(900, 1500));
  ag3x=int(random(900, 1500));
  am1x=int(random(900, 1500));
  am2x=int(random(900, 1500));
  am3x=int(random(900, 1500));
  ap1x=int(random(900, 1500));
  ap2x=int(random(900, 1500));
  ap3x=int(random(900, 1500));
  ag1x1=int(random(900, 1500));
  ag2x1=int(random(900, 1500));
  ag3x1=int(random(900, 1500));
  am1x1=int(random(900, 1500));
  am2x1=int(random(900, 1500));
  am3x1=int(random(900, 1500));
  ap1x1=int(random(900, 1500));
  ap2x1=int(random(900, 1500));
  ap3x1=int(random(900, 1500));
  ag1y=int(random(1, 600));
  ag2y=int(random(1, 600));
  ag3y=int(random(1, 600));
  am1y=int(random(1, 650));
  am2y=int(random(1, 650));
  am3y=int(random(1, 650));
  ap1y=int(random(1, 675));
  ap2y=int(random(1, 675));
  ap3y=int(random(1, 675));
  ag1y1=int(random(1, 600));
  ag2y1=int(random(1, 600));
  ag3y1=int(random(1, 600));
  am1y1=int(random(1, 650));
  am2y1=int(random(1, 650));
  am3y1=int(random(1, 650));
  ap1y1=int(random(1, 675));
  ap2y1=int(random(1, 675));
  ap3y1=int(random(1, 675));
  textFont(texto);
  textSize(30);
  text("voltar a tentar", 590, 690);
  text("sair", 10, 690);
  fill(0);
  textFont(texto2);
  textSize(60);
  text("Perdeste!", 185, 305);
}

void pausa() {
  if (a==3) {
    fill(#FFD603);
    textFont(texto);
    textSize(30);
    text("pausa", 780, 690);
    text("nivel "+nivel, 10, 40);
  }
  if (a==4) {
    textFont(texto);
    textSize(30);
    text("continuar", 700, 690);
    text("sair", 10, 690);
    fill(0);
    textFont(texto2);
    textSize(60);
    text("Pausa", 285, 305);
  }
}


void menu() {
  //reset posiçao meteoros
  ag1x=int(random(900, 1500));
  ag2x=int(random(900, 1500));
  ag3x=int(random(900, 1500));
  am1x=int(random(900, 1500));
  am2x=int(random(900, 1500));
  am3x=int(random(900, 1500));
  ap1x=int(random(900, 1500));
  ap2x=int(random(900, 1500));
  ap3x=int(random(900, 1500));
  ag1x1=int(random(900, 1500));
  ag2x1=int(random(900, 1500));
  ag3x1=int(random(900, 1500));
  am1x1=int(random(900, 1500));
  am2x1=int(random(900, 1500));
  am3x1=int(random(900, 1500));
  ap1x1=int(random(900, 1500));
  ap2x1=int(random(900, 1500));
  ap3x1=int(random(900, 1500));
  ag1y=int(random(1, 600));
  ag2y=int(random(1, 600));
  ag3y=int(random(1, 600));
  am1y=int(random(1, 650));
  am2y=int(random(1, 650));
  am3y=int(random(1, 650));
  ap1y=int(random(1, 675));
  ap2y=int(random(1, 675));
  ap3y=int(random(1, 675));
  ag1y1=int(random(1, 600));
  ag2y1=int(random(1, 600));
  ag3y1=int(random(1, 600));
  am1y1=int(random(1, 650));
  am2y1=int(random(1, 650));
  am3y1=int(random(1, 650));
  ap1y1=int(random(1, 675));
  ap2y1=int(random(1, 675));
  ap3y1=int(random(1, 675));
  //imagem de fundo daqui
  image(fundomenu, fundo1x, 0, 900, 700);
  image(fundomenu, fundo2x, 0, 900, 700);
  fundo1x--;
  fundo2x--;
  if (fundo1x<-900) {
    fundo1x=900;
  }
  if (fundo2x<-900) {
    fundo2x=900;
  }
  //ate aqui
  if (a==0) {
    fill(#FFD603);
    textFont(texto);
    textSize(80);
    textAlign(CENTER);
    text("star defender", 450, 400);
    textSize(40);
    image(foguetaoinicio, 300, 20, 300, 300);
    if (piscar<7) {
      text("enter para começar...", 450, 600);
    }
    if (piscar>14) {
      piscar=0;
    }
    textAlign(CORNER);
    piscar++;
    logo=0;
  }
  if (a==1) {
    fill(#FFD603);
    textFont(texto);
    textSize(tamanholetra1);
    textAlign(CENTER);
    text("jogar", 450, 200);
    if (mouseX>370 && mouseX<570 && mouseY>140 && mouseY<200) {
      tamanholetra1=90;
    } else {
      tamanholetra1=60;
    }
    textSize(tamanholetra2);
    text("opções", 450, 300);
    if (mouseX>370 && mouseX<570 && mouseY>240 && mouseY<300) {
      tamanholetra2=90;
    } else {
      tamanholetra2=60;
    }
    textSize(tamanholetra3);
    text("regras", 450, 400);
    if (mouseX>370 && mouseX<570 && mouseY>340 && mouseY<400) {
      tamanholetra3=90;
    } else {
      tamanholetra3=60;
    }
    textSize(tamanholetra4);
    text("sair", 450, 500);
    if (mouseX>370 && mouseX<570 && mouseY>440 && mouseY<500) {
      tamanholetra4=90;
    } else {
      tamanholetra4=60;
    }
    textAlign(CORNER);
    logo++;
    if (logo>500) {
      a=0;
    }
    if (mouseX>370 && mouseX<570 && mouseY>140 && mouseY<200 || mouseX>370 && mouseX<570 && mouseY>240 && mouseY<300 || mouseX>370 && mouseX<570 && mouseY>340 && mouseY<400 ||mouseX>370 && mouseX<570 && mouseY>440 && mouseY<500) {
      if (som1==0) {
        player1.play();
        player1.rewind();
        som1=1;
      }
    } else {
      som1=0;
    }
  }
  if (a==2) {
    fill(#FFD603);
    rect(840, 20, 40, 40, 20, 20, 20, 20);
    rect(780, 20, 40, 40, 20, 20, 20, 20);
    fill(0);
    textFont(texto2);
    textSize(30);
    text("C", 845, 52);
    text("T", 785, 52);
    fill(#FFD603);
    textFont(texto);
    textSize(70);
    text("opções", 20, 90);
    textSize(40);
    text("música", 500, 200);
    text("nave", 20, 200);
    text("volume", 20, 550);
    image(barra, 20, 580, 400, 36);
    stroke(255);
    fill(0);
    rect(somx, 580, 20, 36);
    noStroke();
    fill(#FFD603);
    player.setGain(som);
    som=(somx-210)/3;
    if (mouseX>730 && mouseX<900 && mouseY>650 && mouseY<700) {
      textSize(35);
      xvoltar=730;
    } else {
      textSize(30);
      xvoltar=750;
    }
    text("voltar", xvoltar, 680);
    textFont(texto2);
    textSize(80);
    text("<", 20, 350);
    text(">", 280, 350);
    text("-", 20, 680);
    text("+", 380, 680);
    fill(#FFD603);
    textSize(15);
    if (musica==0) {
      fill(#FFD603);
      textSize(20);
    } else {
      fill(#A7A4A1);
    }
    text("> Vangelis - Conquest", 500, 250);
    text("of Paradise", 500, 300);
    fill(#FFD603);
    textSize(15);
    if (musica==1) {
      fill(#FFD603);
      textSize(20);
    } else {
      fill(#A7A4A1);
    }
    text("> Master of Puppets -", 500, 350);
    text("Metallica", 500, 400);
    fill(#FFD603);
    textSize(15);
    if (musica==2) {
      fill(#FFD603);
      textSize(20);
    } else {
      fill(#A7A4A1);
    }
    text("> John Williams - Star", 500, 450);
    text("Wars", 500, 500);
    fill(#FFD603);
    textSize(15);
    if (musica==3) {
      fill(#FFD603);
      textSize(20);
    } else {
      fill(#A7A4A1);
    }
    text("> Hans Zimmer - He's a", 500, 550);
    text("Pirate", 500, 600);
    image(foguetao, 80, 250, 200, 200);
  }
}



void keyPressed() {
  switch(keyCode) {
  case ENTER:
    if (a==0) {
      a=1;
    }
    if (a==7) {
      if (acarregar>900-40) {
        a=3;
        acarregar=1;
        piscar2=0;
      }
      if (xpowerupnave<900 && xpowerupnave>0) {
        xpowerupnave=int(random(900, 1500));
      }
      if (xpoweruptiro<900 && xpoweruptiro>0) {
        xpoweruptiro=int(random(900, 1500));
      }
      if (xpoweruptransparente<900 && xpoweruptransparente>0) {
        xpoweruptransparente=int(random(900, 1500));
      }
    }
    if (a==8) {
      a=0;
      text1=750;
      text2=3100;
      text3=850;
      text4=1050;
      text5=1350;
      text6=1750;
      text7=2050;
      text8=2300;
      text9=2550;
      text10=900;
      text11=950;
      text12=1100;
      text13=1150;
      text14=1200;
      text15=1250;
      text16=1400;
      text17=1450;
      text18=1500;
      text19=1550;
      text20=1600;
      text21=1650;
      text22=1800;
      text23=1850;
      text24=1900;
      text25=1950;
      text26=2100;
      text27=2150;
      text28=2200;
      text29=2350;
      text30=2400;
      text31=2450;
      text32=2600;
      text33=2650;
    }
    break;
  case 'P':
    if (a==3) {
      a=4;
    }
    break;
  }
}


void fundo() {
  if (a==3) {
    xxx-=10;
    xxx1-=10;
  }
  if (xxx<=-900) {
    xxx=900;
  }
  if (xxx1<=-900) {
    xxx1=900;
  }
  if (fund==1) {
    image(fundo1, xxx, 0, 900, 700);
    image(fundo1, xxx1, 0, 900, 700);
  }
  if (fund==2) {
    image(fundo2, xxx, 0, 900, 700);
    image(fundo2, xxx1, 0, 900, 700);
  }
  if (fund==3) {
    image(fundo3, xxx, 0, 900, 700);
    image(fundo3, xxx1, 0, 900, 700);
  }
  if (fund==4) {
    image(fundo4, xxx, 0, 900, 700);
    image(fundo4, xxx1, 0, 900, 700);
  }
  if (fund==5) {
    image(fundo5, xxx, 0, 900, 700);
    image(fundo5, xxx1, 0, 900, 700);
  }
  if (fund==6) {
    imageMode(CORNER);
    pushMatrix();
    imageMode(CENTER);

    angle = angle + 0.005;
    float c = angle;
    translate(width/2, height/2);
    rotate(c);
    image(fundo6, 0, 0, 1300, 1100);
    popMatrix();
    imageMode(CORNER);
  }
}


void nave() {
  image(foguetao1, fogx, fogy, 100, 100);
  switch(keyCode) {
  case UP:
    if (teclas==0) {
      if (a==3) {
        if (tempopowernave==0) {
          if (fogy>=20) {
            fogy-=5;
          }
        } else {
          if (fogy>=20) {
            fogy-=10;
          }
        }
      }
    }
    break;
  case DOWN:
    if (teclas==0) {
      if (a==3) {
        if (tempopowernave==0) {
          if (fogy<=580) {
            fogy+=5;
          }
        } else {
          if (fogy<=580) {
            fogy+=10;
          }
        }
      }
    }
    break;
  case 'W':
    if (teclas==1) {
      if (a==3) {
        if (tempopowernave==0) {
          if (fogy>=20) {
            fogy-=5;
          }
        } else {
          if (fogy>=20) {
            fogy-=10;
          }
        }
      }
    }
    break;
  case 'S':
    if (teclas==1) {
      if (a==3) {
        if (tempopowernave==0) {
          if (fogy<=580) {
            fogy+=5;
          }
        } else {
          if (fogy>=580) {
            fogy+=10;
          }
        }
      }
    }
  }
}


void tiro() {
  if (xtiro==100) {
    ytiro=fogy+45;
  }
  image(texturatiro, xtiro, ytiro, 20, 10);
  if (a==3) {
    if (tempopowertiro==0) {
      xtiro+=20;
    } else {
      xtiro+=40;
    }
  }
  if (xtiro>=900) {
    xtiro=100;
  }
  if (xtiro>=100 && xtiro<=102) {
    player4.play();
    player4.rewind();
  }
}
//*************************************************NIVEIS*********************
void nivel() {
  fund=1;
}
void colisaonave() {
  if (tempopowertransparente==0) {
    //********************asteroides1
    //asteroide grande 1
    if (fogy>=ag1y && fogy<ag1y+100 && ag1x<=30 && ag1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ag1y && fogy+100<ag1y+100 && ag1x<=30 && ag1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ag1y && fogy+45<ag1y+100 && ag1x<=90 && ag1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ag1y && fogy+55<ag1y+100 && ag1x<=90 && ag1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide medio 1
    if (fogy>=am1y && fogy<am1y+50 && am1x<=30 && am1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=am1y && fogy+100<am1y+50 && am1x<=30 && am1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=am1y && fogy+45<am1y+50 && am1x<=95 && am1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=am1y && fogy+55<am1y+50 && am1x<=95 && am1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide pequeno 1
    if (fogy>=ap1y && fogy<ap1y+25 && ap1x<=40 && ap1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ap1y && fogy+100<ap1y+25 && ap1x<=40 && ap1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+25>=ap1y && fogy+25<ap1y+25 && ap1x<=40 && ap1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+75>=ap1y && fogy+75<ap1y+25 && ap1x<=40 && ap1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ap1y && fogy+45<ap1y+25 && ap1x<=100 && ap1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ap1y && fogy+55<ap1y+25 && ap1x<=100 && ap1x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //********************asteroides2
    //asteroide grande 2
    if (fogy>=ag2y && fogy<ag2y+100 && ag2x<=30 && ag2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ag2y && fogy+100<ag2y+100 && ag2x<=30 && ag2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ag2y && fogy+45<ag2y+100 && ag2x<=90 && ag2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ag2y && fogy+55<ag2y+100 && ag2x<=90 && ag2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide medio 2
    if (fogy>=am2y && fogy<am2y+50 && am2x<=30 && am2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=am2y && fogy+100<am2y+50 && am2x<=30 && am2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=am2y && fogy+45<am2y+50 && am2x<=95 && am2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=am2y && fogy+55<am2y+50 && am2x<=95 && am2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide pequeno 2
    if (fogy>=ap2y && fogy<ap2y+25 && ap2x<=40 && ap2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ap2y && fogy+100<ap2y+25 && ap2x<=40 && ap2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+25>=ap2y && fogy+25<ap2y+25 && ap2x<=40 && ap2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+75>=ap2y && fogy+75<ap2y+25 && ap2x<=40 && ap2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ap2y && fogy+45<ap2y+25 && ap2x<=100 && ap2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ap2y && fogy+55<ap2y+25 && ap2x<=100 && ap2x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //********************asteroides3
    //asteroide grande 3
    if (fogy>=ag3y && fogy<ag3y+100 && ag3x<=30 && ag3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ag3y && fogy+100<ag3y+100 && ag3x<=30 && ag3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ag3y && fogy+45<ag3y+100 && ag3x<=90 && ag3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ag3y && fogy+55<ag3y+100 && ag3x<=90 && ag3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide medio 3
    if (fogy>=am3y && fogy<am3y+50 && am3x<=30 && am3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=am3y && fogy+100<am3y+50 && am3x<=30) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=am3y && fogy+45<am3y+50 && am3x<=95 && am3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=am3y && fogy+55<am3y+50 && am3x<=95 && am3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide pequeno 3
    if (fogy>=ap3y && fogy<ap3y+25 && ap3x<=40 && ap3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ap3y && fogy+100<ap3y+25 && ap3x<=40 && ap3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+35>=ap3y && fogy+35<ap3y+25 && ap3x<=40 && ap3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+75>=ap3y && fogy+75<ap3y+25 && ap3x<=40 && ap3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ap3y && fogy+45<ap3y+25 && ap3x<=100 && ap3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ap3y && fogy+55<ap3y+25 && ap3x<=100 && ap3x>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //******************************************************************************2a camada de asteroids***************************************
    //******************************************************************************2a camada de asteroids***************************************
    //********************asteroides1.1
    //asteroide grande 1.1
    if (fogy>=ag1y1 && fogy<ag1y1+100 && ag1x1<=30 && ag1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ag1y1 && fogy+100<ag1y1+100 && ag1x1<=30 && ag1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ag1y1 && fogy+45<ag1y1+100 && ag1x1<=90 && ag1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ag1y1 && fogy+55<ag1y1+100 && ag1x1<=90 && ag1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide medio 1.1
    if (fogy>=am1y1 && fogy<am1y1+50 && am1x1<=30 && am1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=am1y1 && fogy+100<am1y1+50 && am1x1<=30 && am1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=am1y1 && fogy+45<am1y1+50 && am1x1<=95 && am1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=am1y1 && fogy+55<am1y1+50 && am1x1<=95 && am1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide pequeno 1.1
    if (fogy>=ap1y1 && fogy<ap1y1+25 && ap1x1<=40 && ap1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ap1y1 && fogy+100<ap1y1+25 && ap1x1<=40 && ap1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+25>=ap1y1 && fogy+25<ap1y1+25 && ap1x1<=40 && ap1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+75>=ap1y1 && fogy+75<ap1y1+25 && ap1x1<=40 && ap1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ap1y1 && fogy+45<ap1y1+25 && ap1x1<=100 && ap1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ap1y1 && fogy+55<ap1y1+25 && ap1x1<=100 && ap1x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //********************asteroides2.1
    //asteroide grande 2.1
    if (fogy>=ag2y1 && fogy<ag2y1+100 && ag2x1<=30 && ag2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ag2y1 && fogy+100<ag2y1+100 && ag2x1<=30 && ag2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ag2y1 && fogy+45<ag2y1+100 && ag2x1<=90 && ag2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ag2y1 && fogy+55<ag2y1+100 && ag2x1<=90 && ag2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide medio 2.1
    if (fogy>=am2y1 && fogy<am2y1+50 && am2x1<=30 && am2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=am2y1 && fogy+100<am2y1+50 && am2x1<=30 && am2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=am2y1 && fogy+45<am2y1+50 && am2x1<=95 && am2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=am2y1 && fogy+55<am2y1+50 && am2x1<=95 && am2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide pequeno 2.1
    if (fogy>=ap2y1 && fogy<ap2y1+25 && ap2x1<=40 && ap2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ap2y1 && fogy+100<ap2y1+25 && ap2x1<=40 && ap2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+25>=ap2y1 && fogy+25<ap2y1+25 && ap2x1<=40 && ap2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+75>=ap2y1 && fogy+75<ap2y1+25 && ap2x1<=40 && ap2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ap2y1 && fogy+45<ap2y1+25 && ap2x1<=100 && ap2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ap2y1 && fogy+55<ap2y1+25 && ap2x1<=100 && ap2x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //********************asteroides3.1
    //asteroide grande 3.1
    if (fogy>=ag3y1 && fogy<ag3y1+100 && ag3x1<=30 && ag3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ag3y1 && fogy+100<ag3y1+100 && ag3x1<=30 && ag3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ag3y1 && fogy+45<ag3y1+100 && ag3x1<=90 && ag3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ag3y1 && fogy+55<ag3y1+100 && ag3x1<=90 && ag3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide medio 3.1
    if (fogy>=am3y1 && fogy<am3y1+50 && am3x1<=30 && am3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=am3y1 && fogy+100<am3y1+50 && am3x1<=30) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=am3y1 && fogy+45<am3y1+50 && am3x1<=95 && am3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=am3y1 && fogy+55<am3y1+50 && am3x1<=95 && am3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //asteroide pequeno 3.1
    if (fogy>=ap3y1 && fogy<ap3y1+25 && ap3x1<=40 && ap3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+100>=ap3y1 && fogy+100<ap3y1+25 && ap3x1<=40 && ap3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+35>=ap3y1 && fogy+35<ap3y1+25 && ap3x1<=40 && ap3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+75>=ap3y1 && fogy+75<ap3y1+25 && ap3x1<=40 && ap3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+45>=ap3y1 && fogy+45<ap3y1+25 && ap3x1<=100 && ap3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    if (fogy+55>=ap3y1 && fogy+55<ap3y1+25 && ap3x1<=100 && ap3x1>=20) {
      if (explosao==0) {
        explosao=1;
      }
    }
    //******************************************************************************2a camada de asteroids***************************************
    //******************************************************************************2a camada de asteroids***************************************
  }
}

void colisaotiros() {
  //*****Asteroide 1*****
  if (ytiro+5>ag1y && ytiro+5<ag1y+100 && xtiro>=ag1x &&(nivel==2 || nivel==3 || nivel==4 || nivel==5  )) {
    image(anelfogo, ag1x, ag1y, 100, 100);
    ag1xk=1;
    ytiro=9999;
    ag1x=int(random(900, 1500)); 
    ag1y=int(random(900, 1500));
    ag1xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ag1y && ytiro1+5<ag1y+100 && xtiro1>=ag1x &&(nivel==2 || nivel==3 || nivel==4 || nivel==5 )) {
    ag1xk=1;
    ytiro=9999;
    ag1x=int(random(900, 1500));
    ag1y=int(random(900, 1500));
    ag1xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>am1y && ytiro+5<am1y+50 && xtiro>=am1x &&(nivel==1 || nivel==2 || nivel==3 || nivel==4 || nivel==5 ) ) {
    image( anelfogo, am1x, am1y, 50, 50);
    am1xk=1;
    ytiro=9999;
    am1x=int(random(900, 1500)); 
    am1y=int(random(900, 1500)); 
    am1xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>am1y && ytiro1+5<am1y+50 && xtiro1>=am1x &&(nivel==1 || nivel==2 || nivel==3 || nivel==4  || nivel==5 ) ) {
    am1xk=1;
    ytiro=9999;
    am1x=int(random(900, 1500));  
    am1y=int(random(900, 1500));  
    am1xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>ap1y && ytiro+5<ap1y+25 && xtiro>=ap1x &&(nivel==1 || nivel==2 || nivel==3 || nivel==4 || nivel==5) ) {
    image( anelfogo, ap1x, ap1y, 25, 25);
    ap1xk=1;
    ytiro=9999;
    ap1x=int(random(900, 1500)); 
    ap1y=int(random(900, 1500));
    ap1xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ap1y && ytiro1+5<ap1y+25 && xtiro1>=ap1x &&(nivel==1 || nivel==2 || nivel==3 || nivel==4 || nivel==5) ) {
    ap1xk=1;
    ytiro=9999;
    ap1x=int(random(900, 1500));
    ap1y=int(random(900, 1500));  
    ap1xk=0;
    player3.play();
    player3.rewind();
  }
  //*****Asteroide 2*****
  if (ytiro+5>ag2y && ytiro+5<ag2y+100 && xtiro>=ag2x &&(nivel==2 || nivel==3  || nivel==4 || nivel==5 )) {
    image( anelfogo, ag2x, ag2y, 100, 100);
    ag2xk=1;
    ytiro=9999;
    ag2x=int(random(900, 1500));
    ag2y=int(random(900, 1500));
    ag2xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ag2y && ytiro1+5<ag2y+100 && xtiro1>=ag2x &&(nivel==2 || nivel==3 || nivel==4  || nivel==5 )) {
    ag2xk=1;
    ytiro=9999;
    ag2x=int(random(900, 1500));
    ag2y=int(random(900, 1500));
    ag2xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>am2y && ytiro+5<am2y+50 && xtiro>=am2x &&(nivel==1 || nivel==2 || nivel==3 || nivel==4  || nivel==5 ) ) {
    image( anelfogo, am2x, am2y, 50, 50);
    am2xk=1;
    ytiro=9999;
    am2x=int(random(900, 1500));
    am2y=int(random(900, 1500));
    am2xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>am2y && ytiro1+5<am2y+50 && xtiro1>=am2x &&(nivel==1 || nivel==2 || nivel==3 || nivel==4  || nivel==5 ) ) {
    am2xk=1;
    ytiro=9999;
    am2x=int(random(900, 1500));
    am2y=int(random(900, 1500));
    am2xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>ap2y && ytiro+5<ap2y+25 && xtiro>=ap2x &&(nivel==1 || nivel==2 || nivel==3 || nivel==4 || nivel==5) ) {
    image( anelfogo, ap2x, ap2y, 25, 25);
    ap2xk=1;
    ytiro=9999;
    ap2x=int(random(900, 1500)); 
    ap2y=int(random(900, 1500)); 
    ap2xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ap2y && ytiro1+5<ap2y+25 && xtiro1>=ap2x &&(nivel==1 || nivel==2 || nivel==3 || nivel==4 || nivel==5) ) {
    ap2xk=1;
    ytiro=9999;
    ap2x=int(random(900, 1500)); 
    ap2y=int(random(900, 1500)); 
    ap2xk=0;
    player3.play();
    player3.rewind();
  }
  //*****Asteroide 3*****
  if (ytiro+5>ag3y && ytiro+5<ag3y+100 && xtiro>=ag3x &&(nivel==2 || nivel==3  || nivel==4  || nivel==5)) {
    image( anelfogo, ag3x, ag3y, 100, 100);
    ag3xk=1;
    ytiro=9999;
    ag3x=int(random(900, 1500));
    ag3y=int(random(900, 1500));
    ag3xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ag3y && ytiro1+5<ag3y+100 && xtiro1>=ag3x &&(nivel==2 || nivel==3  || nivel==4 || nivel==5 )) {
    ag3xk=1;
    ytiro=9999;
    ag3x=int(random(900, 1500));
    ag3y=int(random(900, 1500));
    ag3xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>am3y && ytiro+5<am3y+50 && xtiro>=am3x &&(nivel==1 || nivel==3 || nivel==4  || nivel==5 )) {
    image( anelfogo, am3x, am3y, 50, 50);
    am3xk=1;
    ytiro=9999;
    am3x=int(random(900, 1500)); 
    am3y=int(random(900, 1500)); 
    am3xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>am3y && ytiro1+5<am3y+50 && xtiro1>=am3x &&(nivel==1  || nivel==3 || nivel==4  || nivel==5 )) {
    am3xk=1;
    ytiro=9999;
    am3x=int(random(900, 1500));
    am3y=int(random(900, 1500));
    am3xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>ap3y && ytiro+5<ap3y+25 && xtiro>=ap3x &&(nivel==1 || nivel==2 || nivel==3 || nivel==4 || nivel==5) ) {
    image( anelfogo, ap3x, ap3y, 25, 25);
    ap3xk=1;
    ytiro=9999;
    ap3x=int(random(900, 1500)); 
    ap3y=int(random(900, 1500)); 
    ap3xk=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ap3y && ytiro1+5<ap3y+25 && xtiro1>=ap3x &&(nivel==1 || nivel==2 || nivel==3 || nivel==4 || nivel==5) ) {
    ap3xk=1;
    ytiro=9999;
    ap3x=int(random(900, 1500));
    ap3y=int(random(900, 1500)); 
    ap3xk=0;
    player3.play();
    player3.rewind();
  }
  //*******************2a camada**************************************************
  //*******************2a camada**************************************************
  //*******************2a camada**************************************************
  //*****Asteroide 1.1*****
  if (ytiro+5>ag1y1 && ytiro+5<ag1y1+100 && xtiro>=ag1x1 && (nivel==3  || nivel==4 || nivel==5  ) ) {
    image( anelfogo, ag1x1, ag1y1, 100, 100);
    ag1x1k=1;
    ytiro=9999;
    ag1x1=int(random(900, 1500)); 
    ag1y1=int(random(900, 1500)); 
    ag1x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ag1y1 && ytiro1+5<ag1y1+100 && xtiro1>=ag1x1 && (nivel==3  || nivel==4  || nivel==5 )) {
    ag1x1k=1;
    ytiro=9999;
    ag1x1=int(random(900, 1500)); 
    ag1y1=int(random(900, 1500)); 
    ag1x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>am1y1 && ytiro+5<am1y1+50 && xtiro>=am1x1 &&(nivel==1  || nivel==3 || nivel==4  || nivel==5 )) {
    image( anelfogo, am1x1, am1y1, 50, 50);
    am1x1k=1;
    ytiro=9999;
    am1x1=int(random(900, 1500)); 
    am1y1=int(random(900, 1500)); 
    am1x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>am1y1 && ytiro1+5<am1y1+50 && xtiro1>=am1x1 &&(nivel==1  || nivel==3 || nivel==4  || nivel==5 )) {
    am1x1k=1;
    ytiro=9999;
    am1x1=int(random(900, 1500));
    am1y1=int(random(900, 1500));
    am1x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>ap1y1 && ytiro+5<ap1y1+25 && xtiro>=ap1x1 &&(nivel==1 || nivel==2  || nivel==5) ) {
    image( anelfogo, ap1x1, ap1y1, 25, 25);
    ap1x1k=1;
    ytiro=9999;
    ap1x1=int(random(900, 1500)); 
    ap1y1=int(random(900, 1500)); 
    ap1x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ap1y1 && ytiro1+5<ap1y1+25 && xtiro1>=ap1x1 &&(nivel==1 || nivel==2  || nivel==5) ) {
    ap1x1k=1;
    ytiro=9999;
    ap1x1=int(random(900, 1500)); 
    ap1y1=int(random(900, 1500)); 
    ap1x1k=0;
    player3.play();
    player3.rewind();
  }
  //*****Asteroide 2.1*****
  if (ytiro+5>ag2y1 && ytiro+5<ag2y1+100 && xtiro>=ag2x1 &&( nivel==4  || nivel==5  )) {
    image( anelfogo, ag2x1, ag2y1, 100, 100);
    ag2x1k=1;
    ytiro=9999;
    ag2x1=int(random(900, 1500));
    ag2y1=int(random(900, 1500));
    ag2x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ag2y1 && ytiro1+5<ag2y1+100 && xtiro1>=ag2x1 &&( nivel==4  || nivel==5  )) {
    ag2x1k=1;
    ytiro=9999;
    ag2x1=int(random(900, 1500)); 
    ag2y1=int(random(900, 1500)); 
    ag2x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>am2y1 && ytiro+5<am2y1+50 && xtiro>=am2x1 &&(nivel==1  || nivel==5) ) {
    image( anelfogo, am2x1, am2y1, 50, 50);
    am2x1k=1;
    ytiro=9999;
    am2x1=int(random(900, 1500));
    am2y1=int(random(900, 1500));
    am2x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>am2y1 && ytiro1+5<am2y1+50 && xtiro1>=am2x1 &&(nivel==1  || nivel==5 )) {
    am2x1k=1;
    ytiro=9999;
    am2x1=int(random(900, 1500)); 
    am2y1=int(random(900, 1500)); 
    am2x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>ap2y1 && ytiro+5<ap2y1+25 && xtiro>=ap2x1 &&(nivel==1  || nivel==5 )) {
    image( anelfogo, ap2x1, ap2y1, 25, 25);
    ap2x1k=1;
    ytiro=9999;
    ap2x1=int(random(900, 1500));
    ap2y1=int(random(900, 1500));
    ap2x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ap2y1 && ytiro1+5<ap2y1+25 && xtiro1>=ap2x1 &&(nivel==1  || nivel==5 )) {
    ap2x1k=1;
    ytiro=9999;
    ap2x1=int(random(900, 1500));
    ap2y1=int(random(900, 1500));
    ap2x1k=0;
    player3.play();
    player3.rewind();
  }
  //*****Asteroide 3.1*****
  if (ytiro+5>ag3y1 && ytiro+5<ag3y1+100 && xtiro>=ag3x1 &&( nivel==5)) {
    image( anelfogo, ag3x1, ag3y1, 100, 100);
    ag3x1k=1;
    ytiro=9999;
    ag3x1=int(random(900, 1500));
    ag3y1=int(random(900, 1500)); 
    ag3x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ag3y1 && ytiro1+5<ag3y1+100 && xtiro1>=ag3x1 &&( nivel==5)) {
    ag3x1k=1;
    ytiro=9999;
    ag3x1=int(random(900, 1500));
    ag3y1=int(random(900, 1500));
    ag3x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>am3y1 && ytiro+5<am3y1+50 && xtiro>=am3x1 &&(nivel==1 || nivel==5 ) ) {
    image( anelfogo, am3x1, am3y1, 50, 50);
    am3x1k=1;
    ytiro=9999;
    am3x1=int(random(900, 1500)); 
    am3y1=int(random(900, 1500)); 
    am3x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>am3y1 && ytiro1+5<am3y1+50 && xtiro1>=am3x1 &&(nivel==1 || nivel==5 ) ) {
    am3x1k=1;
    ytiro=9999;
    am3x1=int(random(900, 1500));
    am3y1=int(random(900, 1500));
    am3x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro+5>ap3y1 && ytiro+5<ap3y1+25 && xtiro>=ap3x1 &&(nivel==1 || nivel==5 ) ) {
    image( anelfogo, ap3x1, ap3y1, 25, 25);
    ap3x1k=1;
    ytiro=9999;
    ap3x1=int(random(900, 1500));
    ap3y1=int(random(900, 1500));
    ap3x1k=0;
    player3.play();
    player3.rewind();
  }
  if (ytiro1+5>ap3y1 && ytiro1+5<ap3y1+25 && xtiro1>=ap3x1 &&(nivel==1 || nivel==5 ) ) {
    ap3x1k=1;
    ytiro=9999;
    ap3x1=int(random(900, 1500));
    ap3y1=int(random(900, 1500));
    ap3x1k=0;
    player3.play();
    player3.rewind();
  }
}

void asteroids() {
  if (nivel==1) {



    /*6 pequenos - velocidade 9
     6 médios - velocidade 5
     0 grandes - velocidade 0*/
    if (am1xk==0) {
      image(asteroidmedio1, am1x, am1y, 50, 50);
      am1x-=5;
    }
    if (am2xk==0) {
      image(asteroidmedio2, am2x, am2y, 50, 50);
      am2x-=5;
    }
    if (am3xk==0) {
      image(asteroidmedio3, am3x, am3y, 50, 50);
      am3x-=5;
    }
    if (ap1xk==0) {
      image(asteroidpequeno1, ap1x, ap1y, 25, 25);
      ap1x-=9;
    }
    if (ap2xk==0) {
      image(asteroidpequeno2, ap2x, ap2y, 25, 25);
      ap2x-=9;
    }
    if (ap3xk==0) {
      image(asteroidpequeno3, ap3x, ap3y, 25, 25);
      ap3x-=9;
    }

    if (am1x1k==0) {
      image(asteroidmedio1, am1x1, am1y1, 50, 50);
      am1x1-=5;
    }
    if (am2x1k==0) {
      image(asteroidmedio2, am2x1, am2y1, 50, 50);
      am2x1-=5;
    }
    if (am3x1k==0) {
      image(asteroidmedio3, am3x1, am3y1, 50, 50);
      am3x1-=5;
    }
    if (ap1x1k==0) {
      image(asteroidpequeno1, ap1x1, ap1y1, 25, 25);
      ap1x1-=9;
    }
    if (ap2x1k==0) {
      image(asteroidpequeno2, ap2x1, ap2y1, 25, 25);
      ap2x1-=9;
    }
    if (ap3x1k==0) {
      image(asteroidpequeno3, ap3x1, ap3y1, 25, 25);
      ap3x1-=9;
    }
  }

  if (nivel==2) {  
    fund=2;



    /*4 pequnos - velocidade 9
     2 médios - velocidade 6
     3 grandes - velocidade 3*/
    if (ap1xk==0) {
      image(asteroidpequeno1, ap1x, ap1y, 25, 25);
      ap1x-=9;
    }
    if (ap2xk==0) {
      image(asteroidpequeno2, ap2x, ap2y, 25, 25); 
      ap2x-=9;
    }
    if (ap3xk==0) {
      image(asteroidpequeno3, ap3x, ap3y, 25, 25);
      ap3x-=9;
    }
    if (ap1x1k==0) {
      image(asteroidpequeno1, ap1x1, ap1y1, 25, 25);
      ap1x1-=9;
    }
    if (am1xk==0) {
      image(asteroidmedio1, am1x, am1y, 50, 50);
      am1x-=5;
    }
    if (am2xk==0) {
      image(asteroidmedio2, am2x, am2y, 50, 50);
      am2x-=5;
    }
    if (ag1xk==0) {
      image(asteroidgrande1, ag1x, ag1y, 100, 100); 
      ag1x-=3;
    }
    if (ag2xk==0) {
      image(asteroidgrande2, ag2x, ag2y, 100, 100);
      ag2x-=3;
    }
    if (ag3xk==0) {
      image(asteroidgrande3, ag3x, ag3y, 100, 100);
      ag3x-=3;
    }
  }
  if (nivel==3) {
    fund=3;



    if (ap1xk==0) {
      image(asteroidpequeno1, ap1x, ap1y, 25, 25);
      ap1x-=9;
    }
    if (ap2xk==0) {
      image(asteroidpequeno2, ap2x, ap2y, 25, 25);
      ap2x-=9;
    }
    if (ap3xk==0) {
      image(asteroidpequeno3, ap3x, ap3y, 25, 25); 
      ap3x-=9;
    }
    if (am1xk==0) {
      image(asteroidmedio1, am1x, am1y, 50, 50); 
      am1x-=5;
    }
    if (am2xk==0) {
      image(asteroidmedio2, am2x, am2y, 50, 50); 
      am2x-=5;
    }
    if (am3xk==0) {
      image(asteroidmedio3, am3x, am3y, 50, 50);
      am3x-=5;
    }
    if (am1x1k==0) {
      image(asteroidmedio1, am1x1, am1y1, 50, 50); 
      am3x1-=5;
    }
    if (ag1xk==0) {
      image(asteroidgrande1, ag1x, ag1y, 100, 100);
      ag1x-=3;
    }
    if (ag2xk==0) {
      image(asteroidgrande2, ag2x, ag2y, 100, 100);
      ag2x-=3;
    }
    if (ag3xk==0) {
      image(asteroidgrande3, ag3x, ag3y, 100, 100);
      ag3x-=3;
    }
    if (ag1x1k==0) {
      image(asteroidgrande1, ag1x1, ag1y1, 100, 100); 
      ag1x1-=3;
    }
  }
  if (nivel==4) {
    fund=4;



    if (ap1xk==0) {
      image(asteroidpequeno1, ap1x, ap1y, 25, 25);
      ap1x-=9;
    }
    if (ap2xk==0) {
      image(asteroidpequeno2, ap2x, ap2y, 25, 25);
      ap2x-=9;
    }
    if (ap3xk==0) {
      image(asteroidpequeno3, ap3x, ap3y, 25, 25);
      ap3x-=9;
    }
    if (am1xk==0) {
      image(asteroidmedio1, am1x, am1y, 50, 50);
      am1x-=5;
    }
    if (am2xk==0) {
      image(asteroidmedio2, am2x, am2y, 50, 50);
      am2x-=5;
    }
    if (am3xk==0) {
      image(asteroidmedio3, am3x, am3y, 50, 50);
      am3x-=5;
    }
    if (am1x1k==0) {
      image(asteroidmedio1, am1x1, am1y1, 50, 50);
      am1x1-=5;
    }
    if (ag1xk==0) {
      image(asteroidgrande1, ag1x, ag1y, 100, 100);
      ag1x-=3;
    }
    if (ag2xk==0) {
      image(asteroidgrande2, ag2x, ag2y, 100, 100);
      ag2x-=3;
    }
    if (ag3xk==0) {
      image(asteroidgrande3, ag3x, ag3y, 100, 100);
      ag3x-=3;
    }
    if (ag1x1k==0) {
      image(asteroidgrande1, ag1x1, ag1y1, 100, 100);
      ag1x1-=3;
    }
    if (ag2x1k==0) {
      image(asteroidgrande2, ag2x1, ag2y1, 100, 100);
      ag2x1-=3;
    }
  }

  if (nivel==5) {
    fund=5;



    if (ap1xk==0) {
      image(asteroidpequeno1, ap1x, ap1y, 25, 25);
      ap1x-=9;
    }
    if (ap2xk==0) {
      image(asteroidpequeno2, ap2x, ap2y, 25, 25);
      ap2x-=9;
    }
    if (ap3xk==0) {
      image(asteroidpequeno3, ap3x, ap3y, 25, 25);
      ap3x-=9;
    }
    if (am1xk==0) {
      image(asteroidmedio1, am1x, am1y, 50, 50); 
      am1x-=5;
    }
    if (am2xk==0) {
      image(asteroidmedio2, am2x, am2y, 50, 50);
      am2x-=5;
    }
    if (am3xk==0) {
      image(asteroidmedio3, am3x, am3y, 50, 50);
      am3x-=5;
    }
    if (ag1xk==0) {
      image(asteroidgrande1, ag1x, ag1y, 100, 100);
      ag1x-=3;
    }
    if (ag2xk==0) {
      image(asteroidgrande2, ag2x, ag2y, 100, 100);
      ag2x-=3;
    }
    if (ag3xk==0) {
      image(asteroidgrande3, ag3x, ag3y, 100, 100);
      ag3x-=3;
    }

    if (ap1x1k==0) {
      image(asteroidpequeno1, ap1x1, ap1y1, 25, 25);
      ap1x1-=9;
    }
    if (ap2x1k==0) {
      image(asteroidpequeno2, ap2x1, ap2y1, 25, 25);
      ap2x1-=9;
    }
    if (ap3x1k==0) {
      image(asteroidpequeno3, ap3x1, ap3y1, 25, 25);
      ap3x1-=9;
    }
    if (am1x1k==0) {
      image(asteroidmedio1, am1x1, am1y1, 50, 50);
      am1x1-=5;
    }
    if (am2x1k==0) {
      image(asteroidmedio2, am2x1, am2y1, 50, 50);
      am2x1-=5;
    }
    if (am3x1k==0) {
      image(asteroidmedio3, am3x1, am3y1, 50, 50);
      am3x1-=5;
    }
    if (ag1x1k==0) {
      image(asteroidgrande1, ag1x1, ag1y1, 100, 100);
      ag1x1-=3;
    }
    if (ag2x1k==0) {
      image(asteroidgrande2, ag2x1, ag2y1, 100, 100);
      ag2x1-=3;
    }
    if (ag3x1k==0) {
      image(asteroidgrande3, ag3x1, ag3y1, 100, 100);
      ag3x1-=3;
    }
  }

  if (nivel==6) {
    fund=6;
    if (tempopowernave!=0) {
      tempopowernave=0;
    }
    if (tempopowertiro!=0) {
      tempopowertiro=0;
    }
    if (tempopowertransparente!=0) {
      tempopowertransparente=0;
      if (imgfoguetao==0) {
        foguetao1=loadImage("foguetao1.png");
      }
      if (imgfoguetao==11) {
        foguetao1=loadImage("foguetao11.png");
      }
      if (imgfoguetao==21) {
        foguetao1=loadImage("foguetao21.png");
      }
    }
    if (bossmusica==0) {
      player.pause();
      player=music.loadFile("Portal 2 Soundtrack - vs Wheatley.mp3");
      player.play();
      player.rewind();
      bossmusica=2;
    }
    boss();
    if (tempotiroboss>35) {
      if (som2==0) {
        player2.play();
        player2.rewind();
        som2=1;
      }
      xtiroboss-=30;
      if (comptiroboss<300) {
        comptiroboss+=3;
      }
    }
    if (xtiroboss<=-450) {
      som2=0;
      ytiroboss=yboss+105;
      xtiroboss=600;
      comptiroboss=100;
      tempotiroboss=0;
    }
    if (ytiroboss<=0) {
      bossandar=0;
    }
    if (ytiroboss>=600) {
      bossandar=1;
    }
    if (bossandar==0 && vidaboss>0) {
      yboss+=2;
      if (xtiroboss==600) {
        ytiroboss+=2;
      }
    }
    if (bossandar==1 && vidaboss>0) {
      yboss-=2;
      if (xtiroboss==600) {
        ytiroboss-=2;
      }
    }
    tempotiroboss++;
    if (vidaboss==0) {
      if (som5==0) {
        player6.play();
        player6.rewind();
        som5=1;
      }
      image(imgexplosao, 650, yboss+50, 200, 200);
      explosaoboss++;
    }
    if (explosaoboss>50) {
      a=6;
      som5=0;
    }
    if (ytiro>yboss && ytiro<yboss+300 && xtiro==600) {
      if (vidaboss>0) {
        vidaboss-=4;
        xvidaboss+=2;
        if (ytiro>yboss && ytiro<yboss+150) {
          image(imgexplosao, 750, ytiro, 100, 100);
        }
        if (ytiro>yboss+150 && ytiro<yboss+300) {
          image(imgexplosao, 750, ytiro-50, 100, 100);
        }
        ytiro=-200;
      }
    }
    if (ytiroboss>fogy-100 && ytiroboss<fogy+100 && xtiroboss<=-50 && xtiroboss>=-30-comptiroboss) {
      a=5;
    }
  }
  if (ag1x<-50) {
    ag1x=int(random(900, 1500));
    ag1y=int(random(0, 600));
  }
  if (am1x<-50) {
    am1x=int(random(900, 1500));
    am1y=int(random(0, 600));
  }
  if (ap1x<-50) {
    ap1x=int(random(900, 1500));
    ap1y=int(random(0, 600));
  }
  if (ag2x<-50) {
    ag2x=int(random(900, 1500));
    ag2y=int(random(0, 650));
  }
  if (am2x<-50) {
    am2x=int(random(900, 1500));
    am2y=int(random(0, 650));
  }
  if (ap2x<-50) {
    ap2x=int(random(900, 1500));
    ap2y=int(random(0, 650));
  }
  if (ag3x<-50) {
    ag3x=int(random(900, 1500));
    ag3y=int(random(0, 675));
  }
  if (am3x<-50) {
    am3x=int(random(900, 1500));
    am3y=int(random(0, 675));
  }
  if (ap3x<-50) {
    ap3x=int(random(900, 1500));
    ap3y=int(random(0, 675));
  }

  //*********************

  if (ag1x1<-50) {
    ag1x1=int(random(900, 1500));
    ag1y1=int(random(0, 600));
  }
  if (am1x1<-50) {
    am1x1=int(random(900, 1500));
    am1y1=int(random(0, 600));
  }
  if (ap1x1<-50) {
    ap1x1=int(random(900, 1500));
    ap1y1=int(random(0, 600));
  }
  if (ag2x1<-50) {
    ag2x1=int(random(900, 1500));
    ag2y1=int(random(0, 650));
  }
  if (am2x1<-50) {
    am2x1=int(random(900, 1500));
    am2y1=int(random(0, 650));
  }
  if (ap2x1<-50) {
    ap2x1=int(random(900, 1500));
    ap2y1=int(random(0, 650));
  }
  if (ag3x1<-50) {
    ag3x1=int(random(900, 1500));
    ag3y1=int(random(0, 675));
  }
  if (am3x1<-50) {
    am3x1=int(random(900, 1500));
    am3y1=int(random(0, 675));
  }
  if (ap3x1<-50) {
    ap3x1=int(random(900, 1500));
    ap3y1=int(random(0, 675));
  }

  /*
int am1xs;
   int am2xs;
   int am3xs;
   int ap1xs;
   int ap2xs;
   int ap3xs;
   
   int am1x1s;
   int am2x1s;
   int am3x1s;
   int ap1x1s;
   int ap2x1s;
   int ap3x1s;*/
}




void mousePressed() {
  if (nivel!=0) {
    if (a==1) {
      if (mouseX>370 && mouseX<570 && mouseY>440 && mouseY<500) {
        exit();
      }
      if (mouseX>370 && mouseX<570 && mouseY>240 && mouseY<300) {
        a=2;
      }
      if (mouseX>370 && mouseX<570 && mouseY>140 && mouseY<200) {
        a=3;
      }
      if (mouseX>370 && mouseX<570 && mouseY>340 && mouseY<400) {
        a=10;
      }
    }
    if (a==2) {
      if (mouseX>750 && mouseX<900 && mouseY>650 && mouseY<700) {
        tempopause=0;
        a=1;
      }
      if (mouseX>20 && mouseX<100 && mouseY>270 && mouseY<350) {
        if (imgfoguetao==0 && ordemfoguetao==0) {
          foguetao=loadImage("11foguetao.png");
          imgfoguetao=11;
          foguetao1=loadImage("foguetao11.png");
        }
        if (imgfoguetao==11 && ordemfoguetao==1) {
          foguetao=loadImage("21foguetao.png");
          imgfoguetao=21;
          foguetao1=loadImage("foguetao21.png");
        }
        if (imgfoguetao==21 && ordemfoguetao==2) {
          foguetao=loadImage("1foguetao.png");
          imgfoguetao=0;
          foguetao1=loadImage("foguetao1.png");
        }
        ordemfoguetao++;
        if (ordemfoguetao>2) {
          ordemfoguetao=0;
        }
      }
      if (mouseX>280 && mouseX<360 && mouseY>270 && mouseY<350) {
        if (imgfoguetao==0 && ordemfoguetao==0) {
          foguetao=loadImage("21foguetao.png");
          imgfoguetao=21;
          foguetao1=loadImage("foguetao21.png");
        }
        if (imgfoguetao==21 && ordemfoguetao==1) {
          foguetao=loadImage("11foguetao.png");
          imgfoguetao=11;
          foguetao1=loadImage("foguetao11.png");
        }
        if (imgfoguetao==11 && ordemfoguetao==2) {
          foguetao=loadImage("1foguetao.png");
          imgfoguetao=0;
          foguetao1=loadImage("foguetao1.png");
        }
        ordemfoguetao++;
        if (ordemfoguetao>2) {
          ordemfoguetao=0;
        }
      }
      if (mouseX>500 && mouseX<800 && mouseY>530 && mouseY<600 && musica!=3) {
        player.pause();
        player=music.loadFile("Pirates Of Caribbean - He's a Pirate.mp3");
        player.play();
        player.rewind();
        musica=3;
      }
      if (mouseX>500 && mouseX<800 && mouseY>430 && mouseY<500 && musica!=2) {
        player.pause();
        player=music.loadFile("John Williams - Star Wars.mp3");
        player.play();
        player.rewind();
        musica=2;
      }
      if (mouseX>500 && mouseX<800 && mouseY>330 && mouseY<400 && musica!=1) {
        player.pause();
        player=music.loadFile("Metallica - Master Of Puppets.mp3");
        player.play();
        player.rewind();
        musica=1;
      }
      if (mouseX>500 && mouseX<800 && mouseY>230 && mouseY<300 && musica!=0) {
        player.pause();
        player=music.loadFile("vangelis.mp3");
        player.play();
        player.rewind();
        musica=0;
      }
      if (mouseX>780 && mouseX<820 && mouseY>20 && mouseY<60) {
        a=9;
      }
      if (mouseX>840 && mouseX<880 && mouseY>20 && mouseY<60) {
        a=8;
      }
      if (mouseX>780 && mouseX<820 && mouseY>20 && mouseY<60) {
        a=9;
      }
    }
  }
  if (a==3) {
    if (mouseX>780 && mouseX<900 && mouseY>660 && mouseY<700) {
      a=4;
    }
  }
  if (a==4) {
    if (mouseX>700 && mouseX<900 && mouseY>660 && mouseY<700 && tempopause==5) {
      a=3;
    }
    if (mouseX>0 && mouseX<90 && mouseY>660 && mouseY<700) {
      fogy=300;
      xtiro=100;
      xtiro1=100;
      tempopause=0;
      a=1;
      ag1x=int(random(900, 1500));
      ag2x=int(random(900, 1500));
      ag3x=int(random(900, 1500));
      am1x=int(random(900, 1500));
      am2x=int(random(900, 1500));
      am3x=int(random(900, 1500));
      ap1x=int(random(900, 1500));
      ap2x=int(random(900, 1500));
      ap3x=int(random(900, 1500));
      ag1x1=int(random(900, 1500));
      ag2x1=int(random(900, 1500));
      ag3x1=int(random(900, 1500));
      am1x1=int(random(900, 1500));
      am2x1=int(random(900, 1500));
      am3x1=int(random(900, 1500));
      ap1x1=int(random(900, 1500));
      ap2x1=int(random(900, 1500));
      ap3x1=int(random(900, 1500));
      ag1y=int(random(1, 600));
      ag2y=int(random(1, 600));
      ag3y=int(random(1, 600));
      am1y=int(random(1, 650));
      am2y=int(random(1, 650));
      am3y=int(random(1, 650));
      ap1y=int(random(1, 675));
      ap2y=int(random(1, 675));
      ap3y=int(random(1, 675));
      ag1y1=int(random(1, 600));
      ag2y1=int(random(1, 600));
      ag3y1=int(random(1, 600));
      am1y1=int(random(1, 650));
      am2y1=int(random(1, 650));
      am3y1=int(random(1, 650));
      ap1y1=int(random(1, 675));
      ap2y1=int(random(1, 675));
      ap3y1=int(random(1, 675));
      bossmusica=0;
      xpoweruptiro=int(random(1500, 4000));
      xpowerupnave=int(random(1500, 4000));
      xpoweruptransparente=int(random(1500, 4000));
      ypoweruptiro=int(random(0, 665));
      ypowerupnave=int(random(0, 665));
      ypoweruptransparente=int(random(0, 665));
      if (tempopowertransparente!=0) {
        if (imgfoguetao==0) {
          foguetao1=loadImage("foguetao1.png");
        }
        if (imgfoguetao==11) {
          foguetao1=loadImage("foguetao11.png");
        }
        if (imgfoguetao==21) {
          foguetao1=loadImage("foguetao21.png");
        }
      }
      tempopowernave=0;
      tempopowertiro=0;
      tempopowertransparente=0;
    }
  }
  if (a==5) {
    if (mouseX>590 && mouseX<900 && mouseY>660 && mouseY<700) {
      if (nivel==6) {
        if  (musica==0) {
          player.pause();
          player=music.loadFile("vangelis.mp3");
          player.play();
          player.rewind();
        }
        if  (musica==1) {
          player.pause();
          player=music.loadFile("Metallica - Master Of Puppets.mp3");
          player.play();
          player.rewind();
        }
        if  (musica==2) {
          player.pause();
          player=music.loadFile("John Williams - Star Wars.mp3");
          player.play();
          player.rewind();
        }
        if  (musica==3) {
          player.pause();
          player=music.loadFile("Pirates Of Caribbean - He's a Pirate.mp3");
          player.play();
          player.rewind();
        }
      }
      fogy=300;
      xtiro=100;
      xtiro1=100;
      a=3;
      ag1x=int(random(900, 1500));
      ag2x=int(random(900, 1500));
      ag3x=int(random(900, 1500));
      am1x=int(random(900, 1500));
      am2x=int(random(900, 1500));
      am3x=int(random(900, 1500));
      ap1x=int(random(900, 1500));
      ap2x=int(random(900, 1500));
      ap3x=int(random(900, 1500));
      ag1x1=int(random(900, 1500));
      ag2x1=int(random(900, 1500));
      ag3x1=int(random(900, 1500));
      am1x1=int(random(900, 1500));
      am2x1=int(random(900, 1500));
      am3x1=int(random(900, 1500));
      ap1x1=int(random(900, 1500));
      ap2x1=int(random(900, 1500));
      ap3x1=int(random(900, 1500));
      ag1y=int(random(1, 600));
      ag2y=int(random(1, 600));
      ag3y=int(random(1, 600));
      am1y=int(random(1, 650));
      am2y=int(random(1, 650));
      am3y=int(random(1, 650));
      ap1y=int(random(1, 675));
      ap2y=int(random(1, 675));
      ap3y=int(random(1, 675));
      ag1y1=int(random(1, 600));
      ag2y1=int(random(1, 600));
      ag3y1=int(random(1, 600));
      am1y1=int(random(1, 650));
      am2y1=int(random(1, 650));
      am3y1=int(random(1, 650));
      ap1y1=int(random(1, 675));
      ap2y1=int(random(1, 675));
      ap3y1=int(random(1, 675));
      distancia=0;
      nivel=1;
      bossmusica=0;
      continuar=1;
      xvidaboss=300;
      bossmusica=0;
      vidaboss=300;
      tempotiroboss=0;
      comptiroboss=100;
      xtiroboss=600;
      ytiroboss=305;
      yboss=200;
      xpoweruptiro=int(random(1500, 4000));
      xpowerupnave=int(random(1500, 4000));
      xpoweruptransparente=int(random(1500, 4000));
      ypoweruptiro=int(random(0, 665));
      ypowerupnave=int(random(0, 665));
      ypoweruptransparente=int(random(0, 665));
      if (tempopowertransparente!=0) {
        if (imgfoguetao==0) {
          foguetao1=loadImage("foguetao1.png");
        }
        if (imgfoguetao==11) {
          foguetao1=loadImage("foguetao11.png");
        }
        if (imgfoguetao==21) {
          foguetao1=loadImage("foguetao21.png");
        }
      }
      tempopowernave=0;
      tempopowertiro=0;
      tempopowertransparente=0;
    }
    if (mouseX>0 && mouseX<90 && mouseY>660 && mouseY<700) {
      if (nivel==6) {
        if (musica==0) {
          player.pause();
          player=music.loadFile("vangelis.mp3");
          player.play();
          player.rewind();
        }
        if  (musica==1) {
          player.pause();
          player=music.loadFile("Metallica - Master Of Puppets.mp3");
          player.play();
          player.rewind();
        }
        if  (musica==2) {
          player.pause();
          player=music.loadFile("John Williams - Star Wars.mp3");
          player.play();
          player.rewind();
        }
        if  (musica==3) {
          player.pause();
          player=music.loadFile("Pirates Of Caribbean - He's a Pirate.mp3");
          player.play();
          player.rewind();
        }
      }
      fogy=300;
      xtiro=100;
      xtiro1=100;
      bossmusica=0;
      tempopause=0;
      a=1;
      ag1x=int(random(900, 1500));
      ag2x=int(random(900, 1500));
      ag3x=int(random(900, 1500));
      am1x=int(random(900, 1500));
      am2x=int(random(900, 1500));
      am3x=int(random(900, 1500));
      ap1x=int(random(900, 1500));
      ap2x=int(random(900, 1500));
      ap3x=int(random(900, 1500));
      ag1x1=int(random(900, 1500));
      ag2x1=int(random(900, 1500));
      ag3x1=int(random(900, 1500));
      am1x1=int(random(900, 1500));
      am2x1=int(random(900, 1500));
      am3x1=int(random(900, 1500));
      ap1x1=int(random(900, 1500));
      ap2x1=int(random(900, 1500));
      ap3x1=int(random(900, 1500));
      ag1y=int(random(1, 600));
      ag2y=int(random(1, 600));
      ag3y=int(random(1, 600));
      am1y=int(random(1, 650));
      am2y=int(random(1, 650));
      am3y=int(random(1, 650));
      ap1y=int(random(1, 675));
      ap2y=int(random(1, 675));
      ap3y=int(random(1, 675));
      ag1y1=int(random(1, 600));
      ag2y1=int(random(1, 600));
      ag3y1=int(random(1, 600));
      am1y1=int(random(1, 650));
      am2y1=int(random(1, 650));
      am3y1=int(random(1, 650));
      ap1y1=int(random(1, 675));
      ap2y1=int(random(1, 675));
      ap3y1=int(random(1, 675));
      distancia=0;
      nivel=1;
      continuar=1;
      xvidaboss=300;
      vidaboss=300;
      tempotiroboss=0;
      comptiroboss=100;
      xtiroboss=600;
      ytiroboss=305;
      yboss=200;
      xpoweruptiro=int(random(1500, 4000));
      xpowerupnave=int(random(1500, 4000));
      xpoweruptransparente=int(random(1500, 4000));
      ypoweruptiro=int(random(0, 665));
      ypowerupnave=int(random(0, 665));
      ypoweruptransparente=int(random(0, 665));
      if (tempopowertransparente!=0) {
        if (imgfoguetao==0) {
          foguetao1=loadImage("foguetao1.png");
        }
        if (imgfoguetao==11) {
          foguetao1=loadImage("foguetao11.png");
        }
        if (imgfoguetao==21) {
          foguetao1=loadImage("foguetao21.png");
        }
      }
      tempopowernave=0;
      tempopowertiro=0;
      tempopowertransparente=0;
    }
  }
  if (a==6) {
    if (mouseX>700 && mouseX<900 && mouseY>660 && mouseY<700 && tempocontinuar==0) {
      if (nivel==6) {
        if  (musica==0) {
          player.pause();
          player=music.loadFile("vangelis.mp3");
          player.play();
          player.rewind();
        }
        if  (musica==1) {
          player.pause();
          player=music.loadFile("Metallica - Master Of Puppets.mp3");
          player.play();
          player.rewind();
        }
        if  (musica==2) {
          player.pause();
          player=music.loadFile("John Williams - Star Wars.mp3");
          player.play();
          player.rewind();
        }
        if  (musica==3) {
          player.pause();
          player=music.loadFile("Pirates Of Caribbean - He's a Pirate.mp3");
          player.play();
          player.rewind();
        }
        a=8;
        dica=int(random(1, 4));
        fogy=300;
        xtiro=100;
        xtiro1=100;
        tempopause=0;
        ag1x=int(random(900, 1500));
        ag2x=int(random(900, 1500));
        ag3x=int(random(900, 1500));
        am1x=int(random(900, 1500));
        am2x=int(random(900, 1500));
        am3x=int(random(900, 1500));
        ap1x=int(random(900, 1500));
        ap2x=int(random(900, 1500));
        ap3x=int(random(900, 1500));
        ag1x1=int(random(900, 1500));
        ag2x1=int(random(900, 1500));
        ag3x1=int(random(900, 1500));
        am1x1=int(random(900, 1500));
        am2x1=int(random(900, 1500));
        am3x1=int(random(900, 1500));
        ap1x1=int(random(900, 1500));
        ap2x1=int(random(900, 1500));
        ap3x1=int(random(900, 1500));
        ag1y=int(random(1, 600));
        ag2y=int(random(1, 600));
        ag3y=int(random(1, 600));
        am1y=int(random(1, 650));
        am2y=int(random(1, 650));
        am3y=int(random(1, 650));
        ap1y=int(random(1, 675));
        ap2y=int(random(1, 675));
        ap3y=int(random(1, 675));
        ag1y1=int(random(1, 600));
        ag2y1=int(random(1, 600));
        ag3y1=int(random(1, 600));
        am1y1=int(random(1, 650));
        am2y1=int(random(1, 650));
        am3y1=int(random(1, 650));
        ap1y1=int(random(1, 675));
        ap2y1=int(random(1, 675));
        ap3y1=int(random(1, 675));
        distancia=0;
        xvidaboss=300;
        vidaboss=300;
        tempotiroboss=0;
        comptiroboss=100;
        xtiroboss=600;
        ytiroboss=305;
        yboss=200;
        xpoweruptiro=int(random(1500, 4000));
        xpowerupnave=int(random(1500, 4000));
        xpoweruptransparente=int(random(1500, 4000));
        ypoweruptiro=int(random(0, 665));
        ypowerupnave=int(random(0, 665));
        ypoweruptransparente=int(random(0, 665));
        if (tempopowertransparente!=0) {
          if (imgfoguetao==0) {
            foguetao1=loadImage("foguetao1.png");
          }
          if (imgfoguetao==11) {
            foguetao1=loadImage("foguetao11.png");
          }
          if (imgfoguetao==21) {
            foguetao1=loadImage("foguetao21.png");
          }
        }
        tempopowernave=0;
        tempopowertiro=0;
        tempopowertransparente=0;
      }
      if (nivel!=6) {
        if (continuar==1 && tempocontinuar==0) {
          nivel=2;
          continuar++;
          tempocontinuar=5;
        }
        if (continuar==2 && tempocontinuar==0) {
          nivel=3;
          continuar++;
          tempocontinuar=5;
        }
        if (continuar==3 && tempocontinuar==0) {
          nivel=4;
          continuar++;
          tempocontinuar=5;
        }
        if (continuar==4 && tempocontinuar==0) {
          nivel=5;
          continuar++;
          tempocontinuar=5;
        }
        if (continuar==5 && tempocontinuar==0) {
          nivel=6;
          continuar++;
          tempocontinuar=5;
          distancia=4001;
        }
        ag1x=int(random(900, 1500));
        ag2x=int(random(900, 1500));
        ag3x=int(random(900, 1500));
        am1x=int(random(900, 1500));
        am2x=int(random(900, 1500));
        am3x=int(random(900, 1500));
        ap1x=int(random(900, 1500));
        ap2x=int(random(900, 1500));
        ap3x=int(random(900, 1500));
        ag1x1=int(random(900, 1500));
        ag2x1=int(random(900, 1500));
        ag3x1=int(random(900, 1500));
        am1x1=int(random(900, 1500));
        am2x1=int(random(900, 1500));
        am3x1=int(random(900, 1500));
        ap1x1=int(random(900, 1500));
        ap2x1=int(random(900, 1500));
        ap3x1=int(random(900, 1500));
        ag1y=int(random(1, 600));
        ag2y=int(random(1, 600));
        ag3y=int(random(1, 600));
        am1y=int(random(1, 650));
        am2y=int(random(1, 650));
        am3y=int(random(1, 650));
        ap1y=int(random(1, 675));
        ap2y=int(random(1, 675));
        ap3y=int(random(1, 675));
        ag1y1=int(random(1, 600));
        ag2y1=int(random(1, 600));
        ag3y1=int(random(1, 600));
        am1y1=int(random(1, 650));
        am2y1=int(random(1, 650));
        am3y1=int(random(1, 650));
        ap1y1=int(random(1, 675));
        ap2y1=int(random(1, 675));
        ap3y1=int(random(1, 675));
        a=7;
        dica=int(random(1, 4));
      }
      if (mouseX>0 && mouseX<90 && mouseY>660 && mouseY<700) {
        a=1;
        dica=int(random(1, 4));
        fogy=300;
        xtiro=100;
        xtiro1=100;
        tempopause=0;
        ag1x=int(random(900, 1500));
        ag2x=int(random(900, 1500));
        ag3x=int(random(900, 1500));
        am1x=int(random(900, 1500));
        am2x=int(random(900, 1500));
        am3x=int(random(900, 1500));
        ap1x=int(random(900, 1500));
        ap2x=int(random(900, 1500));
        ap3x=int(random(900, 1500));
        ag1x1=int(random(900, 1500));
        ag2x1=int(random(900, 1500));
        ag3x1=int(random(900, 1500));
        am1x1=int(random(900, 1500));
        am2x1=int(random(900, 1500));
        am3x1=int(random(900, 1500));
        ap1x1=int(random(900, 1500));
        ap2x1=int(random(900, 1500));
        ap3x1=int(random(900, 1500));
        ag1y=int(random(1, 600));
        ag2y=int(random(1, 600));
        ag3y=int(random(1, 600));
        am1y=int(random(1, 650));
        am2y=int(random(1, 650));
        am3y=int(random(1, 650));
        ap1y=int(random(1, 675));
        ap2y=int(random(1, 675));
        ap3y=int(random(1, 675));
        ag1y1=int(random(1, 600));
        ag2y1=int(random(1, 600));
        ag3y1=int(random(1, 600));
        am1y1=int(random(1, 650));
        am2y1=int(random(1, 650));
        am3y1=int(random(1, 650));
        ap1y1=int(random(1, 675));
        ap2y1=int(random(1, 675));
        ap3y1=int(random(1, 675));
        distancia=0;
        nivel=1;
        continuar=1;
        xvidaboss=300;
        vidaboss=300;
        tempotiroboss=0;
        comptiroboss=100;
        xtiroboss=600;
        ytiroboss=305;
        yboss=200;
        xpoweruptiro=int(random(1500, 4000));
        xpowerupnave=int(random(1500, 4000));
        xpoweruptransparente=int(random(1500, 4000));
        ypoweruptiro=int(random(0, 665));
        ypowerupnave=int(random(0, 665));
        ypoweruptransparente=int(random(0, 665));
        if (tempopowertransparente!=0) {
          if (imgfoguetao==0) {
            foguetao1=loadImage("foguetao1.png");
          }
          if (imgfoguetao==11) {
            foguetao1=loadImage("foguetao11.png");
          }
          if (imgfoguetao==21) {
            foguetao1=loadImage("foguetao21.png");
          }
        }
        tempopowernave=0;
        tempopowertiro=0;
        tempopowertransparente=0;
      }
      tempocontinuar=0;
    }
  }
  if (a==9) {
    if (mouseX>245 && mouseX<392 && mouseY>340 && mouseY<440 && teclas==0) {
      teclas=1;
    }
    if (mouseX>417 && mouseX<564 && mouseY>340 && mouseY<440 && teclas==1) {
      teclas=0;
    }
    if (mouseX>620 && mouseX<670 && mouseY>430 && mouseY<480) {
      a=2;
    }
  }
  if (a==10) {
    if (mouseX>750 && mouseX<900 && mouseY>650 && mouseY<700) {
      a=1;
    }
  }
}


void mouseDragged() {
  if (a==2) {
    if (mouseX>somx && mouseX<somx+20 && mouseY>580 && mouseY<580+36) {
      if (mouseX>62 && mouseX<378) {
        somx=mouseX-10;
      }
    }
  }
}
