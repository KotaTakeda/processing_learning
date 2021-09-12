// ref: 
// - https://qiita.com/ryo_dg/items/e0b8c763ba213c86aae5
// - https://processing.org/tutorials/objects

// gifAnimationライブラリを読み込む
import gifAnimation.*;

// GifMakerクラスを呼ぶ
GifMaker gifExport;

// carの設定
color c = color(0);
float x = 0;
float y = 100;
float speed = 1;

void setup(){
  // いつも書いてるもろもろのコード
  size(512, 512);
  frameRate(50); // 50fpsでアニメーションする

  // GIFアニメ出力の設定
  gifExport = new GifMaker(this, "output.gif"); // GifMakerオブジェクトを作る、第2引数にファイル名
  gifExport.setRepeat(0); // エンドレス再生
  gifExport.setQuality(10); // クオリティ(デフォルト10)
  gifExport.setDelay(20); // アニメーションの間隔を20ms(50fps)に
}

void draw(){
  // いつも書いてるもろもろのコード
  background(255);
  move();
  display();

  // GIFアニメ出力用のコード
  // 50fps * 3、つまり丸3秒録画する
  if(frameCount <= 50*3){
    gifExport.addFrame(); // フレームを追加
  } else {
    gifExport.finish(); // 終了してファイル保存
  }
}

void move() {
  x = x + speed;
  if (x > width) {
    x = 0;
  }
}

void display() {
  fill(c);
  rect(x,y,30,10);
}