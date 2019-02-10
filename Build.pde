void setup() {
	size(600, 600);
	background(255);
}


float circleDeg = 0.0;
float sinCol = 300;
float cosCol = 0.0;

float posX = 300;
float posY = 300;
float posRate = 0;

void draw() {
	float rand = random(0, 1);

	float circleRad = circleDeg * PI / 180;

	sinCol = 100 * sin(circleRad); 
	float sinRad = 50 * sin(posRate); 
	cosCol = 100 * cos(circleRad-PI);
	float radius = map(sinRad, -50, 50, 0, 200);

	float col1 = map(sinCol, -100, 100, 40, 255);
	float col2 = map(cosCol, -100, 100, 40, 255);

	fill(col1, 40, col2);
	noStroke();

	posX = sin(posRate*0.1) * cos(posRate*1.6) * 300/0.8 + 300;
	posY = cos(posRate*0.1)*sin(posRate*0.9) * 300/0.8 + 300;

	println(posX, posY);

	float ellipseX = posX + radius *cos(circleRad);
	float ellipseY = posY + radius *sin(circleRad);

	float ellipseXtwo = posX + radius *cos(circleRad+2*PI/3);
	float ellipseYtwo = posY + radius *sin(circleRad+2*PI/3);

	float ellipseXthree = posX + radius *cos(circleRad+4*PI/3);
	float ellipseYthree = posY + radius *sin(circleRad+4*PI/3);


	ellipse(ellipseX, ellipseY, 90, 90);
	ellipse(ellipseXtwo, ellipseYtwo, 90, 90);
	ellipse(ellipseXthree, ellipseYthree, 90, 90);

	circleDeg+=4;
	posRate+=0.02;

	saveFrame("output/frame-####.jpeg");
}