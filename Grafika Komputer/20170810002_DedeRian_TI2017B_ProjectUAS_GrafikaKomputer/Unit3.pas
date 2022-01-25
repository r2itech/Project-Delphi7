unit Unit3;
interface
 uses forms,graphics;
const r = PI/180;
type titikType  = record
                     x,y,z : Double;
                  end;
     titikTyp2  = record
                     x,y :integer
                  end;
     garisType = record
                     a,b : titikType;
                     aa,bb : titikTyp2;
                  end;
var gamma,beta,alpha : integer;
    scal,dx,dy,dz    : double;
    sint,cost        : array [-1 .. 2] of double;
    figur1           : array [0 .. 300] of garisType;
    jarak          : double;
    procedure init(mana :tform; rusuk: integer);
    procedure scaling (var k: array of garisType; scal : Double);
    procedure translasi (var k : array of garisType; dx,dy,dz :integer);
    procedure rotasi (var k : array of garisType;alpha,beta,gamma:Integer);
    procedure gambar (var k: array of garisType);

implementation

uses Math, SysUtils, unit1;
 var i,kiri,atas:integer;
    dimana : tform;

procedure new_line(var k:array of garistype;x1,y1,z1,x2,y2,z2:Double);
begin
     k[i].a.x := x1; k[i].a.y := y1;
     k[i].a.z := z1;  k[i].b.x := x2;
     k[i].b.y := y2;  k[i].b.z := z2; inc(i);
end;

procedure scaling (var k: array of garistype; scal : Double);
var jumlah,i : integer;
begin
    jumlah := high(k);
    For i := 0 To jumlah - 1 do with k[i] do begin
        a.x := a.x * scal;  a.y := a.y * scal;
        a.z := a.z * scal;   b.x := b.x * scal;
        b.y := b.y * scal;  b.z := b.z * scal;  end;  end;

 procedure translasi (var k : array of garisType; dx,dy,dz :integer);
var jumlah,i:integer;
begin
    jumlah := high(k);
    For i := 0 To jumlah - 1 do with k[i] do begin
        a.x := a.x + dx;  a.y := a.y + dy;
        a.z := a.z + dz;  b.x := b.x + dx;
        b.y := b.y + dy;  b.z := b.z + dz;
    end; end;

 procedure rotasi (var k : array of garistype; alpha,beta,gamma :integer);
{ alpha-Rotasi pada Sumbu x
 beta -Rotasi pada Sumbu y
 gamma -Rotasi pada Sumbu z}
var jumlah,i :integer;
    ax,ay,az,bx,by,bz :double;
begin
     jumlah := high(k);
     for i := 0 to jumlah - 1 do with k[i] do begin
     if gamma <> 0 then begin
        ax := a.x;  ay := a.y;
        bx := b.x;  by := b.y;
        a.x := ax * Cost[gamma] - ay * Sint[gamma];
        a.y := ax * Sint[gamma] + ay * Cost[gamma];
        b.x := bx * Cost[gamma] - by * Sint[gamma];
        b.y := bx * Sint[gamma] + by * Cost[gamma];
     end;

     if alpha <> 0 then begin
        ay := a.y;  az := a.z;
        by := b.y;  bz := b.z;
        a.y := ay * Cost[alpha] - az * Sint[alpha];
        a.z := ay * Sint[alpha] + az * Cost[alpha];
        b.y := by * Cost[alpha] - bz * Sint[alpha];
        b.z := by * Sint[alpha] + bz * Cost[alpha];
     end;

     if beta <> 0 then begin
        az := a.z;  ax := a.x; bx := b.x;  bz := b.z;
        a.z := az * Cost[beta] - ax * Sint[beta];
        b.z := bz * Cost[beta] - bx * Sint[beta];
        a.x := az * Sint[beta] + ax * Cost[beta];
        b.x := bz * Sint[beta] + bx * Cost[beta];
     end; end; end;
 
procedure gambar (var k: array of garistype);
var jumlah,i : integer;
begin
    jumlah := high(k);
    dimana.canvas.pen.color:=clblack;
    for i := 0 to jumlah - 1 do with k[i] do begin
        dimana.canvas.moveto (aa.x,aa.y);
        dimana.canvas.lineto (bb.x,bb.y)
    end;
    dimana.canvas.pen.color:=clAqua;
    dimana.Canvas.Pen.Width:=5;
    for i := 0 to jumlah - 1 do with k[i] do begin
        aa.x := round(a.x * jarak / (jarak + a.z)) + kiri;
        aa.y := round(-a.y * jarak / (jarak + a.z)) + atas;
        bb.x := round(b.x * jarak / (jarak + b.z)) + kiri;
        bb.y := round(-b.y * jarak / (jarak + b.z)) + atas;
        dimana.canvas.moveto (aa.x,aa.y);
        dimana.canvas.lineto (bb.x,bb.y);
    end
end;

procedure init(mana :tform; rusuk: integer);
var i: integer;
begin
     unit3.i:=0;scal := 10;
     jarak := 10000;

     new_line(figur1, 0, 0, 0, rusuk, 0, 0);
     new_line( figur1, 0, 0, 0, 0, rusuk, 0);
     new_line( figur1, rusuk, 0, 0, rusuk, rusuk, 0);
     new_line( figur1, 0, rusuk, 0, rusuk, rusuk, 0);

     new_line(figur1, 0, rusuk, 0, 0, rusuk, rusuk);
     new_line(figur1, 0, rusuk, rusuk, rusuk, rusuk, rusuk);
     new_line(figur1, rusuk, rusuk, rusuk, 0, rusuk, rusuk);
     new_line(figur1, rusuk, rusuk, rusuk, rusuk, rusuk, 0);

     new_line(figur1, 0, rusuk, rusuk, 0, 0, rusuk);
     new_line(figur1, 0, 0, 0, 0, 0, rusuk);
     new_line(figur1, 0, 0, rusuk, rusuk, 0, rusuk);
     new_line(figur1, rusuk, rusuk, rusuk, rusuk, 0, rusuk);
     new_line(figur1, rusuk, 0, 0, rusuk, 0, rusuk);

 for i := -1 to 1 do begin
         sint[i]:=sin(i*r*2);
         cost[i]:=cos(i*r*2)
     end;
     scaling(figur1,scal);
     kiri := mana.clientwidth div 2;
     atas  := mana.clientheight div 2;
     dimana := mana;
     //dimana.canvas.pen.color:=cllime;
end;
end.



