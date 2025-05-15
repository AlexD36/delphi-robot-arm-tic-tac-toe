unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Math;

type
  TAnimationState = (asIdle, asBtnStart, asBtn11, asBtn12, asBtn13, asBtn21, asBtn22, asBtn23, asBtn31, asBtn32, asBtn33, asBtn211, asBtn212, asBtn213, asBtn221, asBtn222, asBtn223, asBtn231, asBtn232, asBtn233);

  TForm1 = class(TForm)
    btn11: TButton;
    btn12: TButton;
    btn13: TButton;
    btn21: TButton;
    btn22: TButton;
    btn23: TButton;
    btn31: TButton;
    btn32: TButton;
    btn33: TButton;
    paintBackground: TPaintBox;
    timerBrat: TTimer;
    btn213: TButton;
    btn212: TButton;
    btn211: TButton;
    btn221: TButton;
    btn222: TButton;
    btn223: TButton;
    btn231: TButton;
    btn232: TButton;
    btn233: TButton;
    btnStart: TButton;

    procedure FormCreate(Sender: TObject);
    procedure paintBackgroundPaint(Sender: TObject);
    procedure timerBratTimer(Sender: TObject);

    procedure btn11Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn21Click(Sender: TObject);
    procedure btn22Click(Sender: TObject);
    procedure btn23Click(Sender: TObject);
    procedure btn31Click(Sender: TObject);
    procedure btn32Click(Sender: TObject);
    procedure btn33Click(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btn211Click(Sender: TObject);
    procedure btn212Click(Sender: TObject);
    procedure btn213Click(Sender: TObject);
    procedure btn221Click(Sender: TObject);
    procedure btn222Click(Sender: TObject);
    procedure btn223Click(Sender: TObject);
    procedure btn231Click(Sender: TObject);
    procedure btn232Click(Sender: TObject);
    procedure btn233Click(Sender: TObject);
    private
    AnimState: TAnimationState;
    tickCount: Integer;
    leftArmAngle1: Double;
    leftArmAngle2: Double;
    leftArmAngle3: Double;
    leftArmAngle4: Double;
    targetAngle1: Double;
    targetAngle2: Double;
    targetAngle3: Double;
    targetAngle4: Double;
    angleOpenStanga: Double;

    procedure AnimateArms;
    procedure AnimateBrate;
    procedure DisableAllButtons;
    procedure EnableAllButtons;
    procedure DeseneazaBratStanga(Canvas: TCanvas);

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DisableAllButtons;
begin
  btnStart.Enabled := False;
  btn11.Enabled := False;
  btn12.Enabled := False;
  btn13.Enabled := False;
  btn21.Enabled := False;
  btn22.Enabled := False;
  btn23.Enabled := False;
  btn31.Enabled := False;
  btn32.Enabled := False;
  btn33.Enabled := False;
  btn211.Enabled := False;
  btn212.Enabled := False;
  btn213.Enabled := False;
  btn221.Enabled := False;
  btn222.Enabled := False;
  btn223.Enabled := False;
  btn231.Enabled := False;
  btn232.Enabled := False;
  btn233.Enabled := False;
end;

procedure TForm1.EnableAllButtons;
begin
  btnStart.Enabled := True;
  btn11.Enabled := True;
  btn12.Enabled := True;
  btn13.Enabled := True;
  btn21.Enabled := True;
  btn22.Enabled := True;
  btn23.Enabled := True;
  btn31.Enabled := True;
  btn32.Enabled := True;
  btn33.Enabled := True;
  btn211.Enabled := True;
  btn212.Enabled := True;
  btn213.Enabled := True;
  btn221.Enabled := True;
  btn222.Enabled := True;
  btn223.Enabled := True;
  btn231.Enabled := True;
  btn232.Enabled := True;
  btn233.Enabled := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DoubleBuffered := True;

  tickCount := 0;
  AnimState := asIdle;

  leftArmAngle1 := DegToRad(90);
  leftArmAngle2 := DegToRad(-30);
  leftArmAngle3 := DegToRad(15);
  leftArmAngle4 := DegToRad(10);

  targetAngle1 := leftArmAngle1;
  targetAngle2 := leftArmAngle2;
  targetAngle3 := leftArmAngle3;
  targetAngle4 := leftArmAngle4;


  angleOpenStanga := 0;

  btn11.OnClick := btn11Click;
  btn12.OnClick := btn12Click;
  btn13.OnClick := btn13Click;
  btn21.OnClick := btn21Click;
  btn22.OnClick := btn22Click;
  btn23.OnClick := btn23Click;
  btn31.OnClick := btn31Click;
  btn32.OnClick := btn32Click;
  btn33.OnClick := btn33Click;
  btnStart.OnClick := btn33Click;

  timerBrat.OnTimer := timerBratTimer;
  timerBrat.Interval := 50;
  timerBrat.Enabled := True;

  Application.ProcessMessages;
  paintBackground.Invalidate;
end;

procedure TForm1.paintBackgroundPaint(Sender: TObject);
begin
  with paintBackground.Canvas do
  begin
    Brush.Color := clWhite;
    FillRect(paintBackground.ClientRect);

    // tabla de X și O
    Pen.Color := clBlack;
    Pen.Width := 2;

    // Linii diagonale în loc de verticale
    MoveTo(270, 180); LineTo(230, 360);
    MoveTo(350, 180); LineTo(310, 360);

    // Linii orizontale
    MoveTo(170, 240); LineTo(430, 240);
    MoveTo(150, 300); LineTo(410, 300);

  end;

  DeseneazaBratStanga(paintBackground.Canvas);
end;

procedure TForm1.AnimateArms;
var
  Step: Double;
  b1,b2,b3,b4,d1, d2, d3, d4: Boolean;

  function Move(var ang: Double; target: Double): Boolean;
  begin
    if Abs(ang - target) < 0.01 then
    begin
      ang := target;
      Result := True;
    end
    else
    begin
      if ang < target then
        ang := ang + Step
      else
        ang := ang - Step;
      Result := False;
    end;
  end;

begin
  Step := DegToRad(1.5);

  case AnimState of
    asBtnStart:
      begin
        d1 := Move(leftArmAngle1, DegToRad(100));
        d2 := Move(leftArmAngle2, DegToRad(-30));
        d3 := Move(leftArmAngle3, DegToRad(-30));
        d4 := Move(leftArmAngle4, DegToRad(-30));
        if d1 and d2 and d3 and d4 then
        begin
          AnimState := asIdle;
          EnableAllButtons;
        end;
      end;
    asBtn11:
      begin
        d1 := Move(leftArmAngle1, DegToRad(100));
        d2 := Move(leftArmAngle2, DegToRad(-30));
        d3 := Move(leftArmAngle3, DegToRad(-30));
        d4 := Move(leftArmAngle4, DegToRad(-30));
        if d1 and d2 and d3 and d4 then
        begin
          AnimState := asIdle;
          EnableAllButtons;
        end;
      end;
        asBtn12:
      begin
        d1 := Move(leftArmAngle1, DegToRad(70));
        d2 := Move(leftArmAngle2, DegToRad(-20));
        d3 := Move(leftArmAngle3, DegToRad(-30));
        d4 := Move(leftArmAngle4, DegToRad(-20));
        if d1 and d2 and d3 and d4 then
        begin
          AnimState := asIdle;
          EnableAllButtons;
        end;
      end;
    asBtn13:
      begin
        d1 := Move(leftArmAngle1, DegToRad(30));
        d2 := Move(leftArmAngle2, DegToRad(0));
        d3 := Move(leftArmAngle3, DegToRad(0));
        d4 := Move(leftArmAngle4, DegToRad(0));
        if d1 and d2 and d3 and d4 then
        begin
          AnimState := asIdle;
          EnableAllButtons;
        end;
      end;
    asBtn21:
      begin
        d1 := Move(leftArmAngle1, DegToRad(110));
        d2 := Move(leftArmAngle2, DegToRad(-55));
        d3 := Move(leftArmAngle3, DegToRad(-50));
        d4 := Move(leftArmAngle4, DegToRad(-55));
        if d1 and d2 and d3 and d4 then
        begin
          AnimState := asIdle;
          EnableAllButtons;
        end;
      end;
    asBtn22:
      begin
        d1 := Move(leftArmAngle1, DegToRad(80));
        d2 := Move(leftArmAngle2, DegToRad(-50));
        d3 := Move(leftArmAngle3, DegToRad(-50));
        d4 := Move(leftArmAngle4, DegToRad(20));
        if d1 and d2 and d3 and d4 then
        begin
          AnimState := asIdle;
          EnableAllButtons;
        end;
      end;
    asBtn23:
      begin
        d1 := Move(leftArmAngle1, DegToRad(48));
        d2 := Move(leftArmAngle2, DegToRad(-25));
        d3 := Move(leftArmAngle3, DegToRad(-15));
        d4 := Move(leftArmAngle4, DegToRad(-10));
        if d1 and d2 and d3 and d4 then
        begin
          AnimState := asIdle;
          EnableAllButtons;
        end;
      end;
    asBtn31:
      begin
        d1 := Move(leftArmAngle1, DegToRad(110));
        d2 := Move(leftArmAngle2, DegToRad(-65));
        d3 := Move(leftArmAngle3, DegToRad(-65));
        d4 := Move(leftArmAngle4, DegToRad(-45));
        if d1 and d2 and d3 and d4 then
        begin
          AnimState := asIdle;
          EnableAllButtons;
        end;
      end;
    asBtn32:
      begin
        d1 := Move(leftArmAngle1, DegToRad(85));
        d2 := Move(leftArmAngle2, DegToRad(-65));
        d3 := Move(leftArmAngle3, DegToRad(-65));
        d4 := Move(leftArmAngle4, DegToRad(30));
        if d1 and d2 and d3 and d4 then
        begin
          AnimState := asIdle;
          EnableAllButtons;
        end;
      end;
    asBtn33:
      begin
        d1 := Move(leftArmAngle1, DegToRad(45));
        d2 := Move(leftArmAngle2, DegToRad(-38));
        d3 := Move(leftArmAngle3, DegToRad(-15));
        d4 := Move(leftArmAngle4, DegToRad(-10));
        if d1 and d2 and d3 and d4 then
        begin
          AnimState := asIdle;
          EnableAllButtons;
        end;
      end;
  end;
end;


procedure TForm1.timerBratTimer(Sender: TObject);
begin
  AnimateBrate;
  AnimateArms;

  // Verificăm dacă timer-ul a fost setat pentru reactivare
  if timerBrat.Interval = 1000 then
  begin
    timerBrat.Interval := 50; // Restabilim intervalul original
    btn11.Enabled := True;
    btn12.Enabled := True;
    btn13.Enabled := True;
    btn21.Enabled := True;
    btn22.Enabled := True;
    btn23.Enabled := True;
    btn31.Enabled := True;
    btn32.Enabled := True;
    btn33.Enabled := True;
  end;

  paintBackground.Invalidate;
end;

procedure TForm1.AnimateBrate;
const
  StepS = Pi/24;
begin
  angleOpenStanga := angleOpenStanga + StepS;
  if angleOpenStanga > 2*Pi then angleOpenStanga := angleOpenStanga - 2*Pi;
end;

  //BaseY = 360;
procedure TForm1.DeseneazaBratStanga(Canvas: TCanvas);
const
  BaseX = 70;
  BaseY = 380;
  Scale = 1;

  // Lungimi segmente
  L1 = 100;
  L2 = 70;
  L3 = 85;
  L4 = 60;

  // Grosimi vizuale
  W1 = 12;
  W2 = 10;
  W3 = 8;
  W4 = 8;
  BoltRadius = 6;

  // Dimensiuni bază
  BaseW = Round(60 * Scale);
  BaseH = Round(30 * Scale);
  CornerR = Round(10 * Scale);

  // Lungime și deschidere gheare
  FingerLength = 10;
  MaxFingerSpread = 15;
var
  j1, j2, j3, j4, j5: TPoint;
  a1, a2, a3, a4, totalAngle: Double;
  colMain, colDark, colLight: TColor;
  openOffset: Integer;

  function OffsetPoint(P: TPoint; angle: Double; dist: Integer): TPoint;
  begin
    Result := Point(
      P.X + Round(dist * Cos(angle)),
      P.Y - Round(dist * Sin(angle))
    );
  end;

  procedure DrawSegment(p1, p2: TPoint; angle: Double; thickness: Integer);
  begin
    Canvas.Polygon([
      p1,
      OffsetPoint(p1, angle + Pi/2, thickness),
      OffsetPoint(p2, angle + Pi/2, thickness),
      p2,
      OffsetPoint(p2, angle - Pi/2, thickness),
      OffsetPoint(p1, angle - Pi/2, thickness)
    ]);
  end;
begin
  // Unghiurile relative
  a1 := leftArmAngle1;
  a2 := leftArmAngle2;
  a3 := leftArmAngle3;
  a4 := leftArmAngle4;

  // Culori
  colMain  := RGB(200, 200, 200);
  colDark  := RGB(50, 50, 50);
  colLight := RGB(180, 180, 180);

  // Poziții articulatii
  j1 := Point(BaseX, BaseY);
  j2 := OffsetPoint(j1, a1, L1);
  j3 := OffsetPoint(j2, a1 + a2, L2);
  j4 := OffsetPoint(j3, a1 + a2 + a3, L3);
  j5 := OffsetPoint(j4, a1 + a2 + a3 + a4, L4);

  // Baza robotului
  Canvas.Brush.Color := colDark;
  Canvas.Pen.Color := colDark;
  Canvas.RoundRect(
    j1.X - BaseW div 2, j1.Y,
    j1.X + BaseW div 2, j1.Y + BaseH,
    CornerR, CornerR
  );
  Canvas.Pen.Color := colLight;
  Canvas.MoveTo(j1.X - BaseW div 2 + 2, j1.Y + 3);
  Canvas.LineTo(j1.X + BaseW div 2 - 2, j1.Y + 3);

  // Brațele
  Canvas.Brush.Color := colMain;
  Canvas.Pen.Color := colDark;
  DrawSegment(j1, j2, a1, W1);
  DrawSegment(j2, j3, a1 + a2, W2);
  DrawSegment(j3, j4, a1 + a2 + a3, W3);
  DrawSegment(j4, j5, a1 + a2 + a3 + a4, W4);

  // Nituri
  Canvas.Brush.Color := colMain;
  Canvas.Pen.Color := colDark;
  Canvas.Ellipse(j1.X - BoltRadius, j1.Y - BoltRadius, j1.X + BoltRadius, j1.Y + BoltRadius);
  Canvas.Ellipse(j2.X - BoltRadius, j2.Y - BoltRadius, j2.X + BoltRadius, j2.Y + BoltRadius);
  Canvas.Ellipse(j3.X - BoltRadius, j3.Y - BoltRadius, j3.X + BoltRadius, j3.Y + BoltRadius);
  Canvas.Ellipse(j4.X - BoltRadius, j4.Y - BoltRadius, j4.X + BoltRadius, j4.Y + BoltRadius);
  Canvas.Ellipse(j5.X - BoltRadius, j5.Y - BoltRadius, j5.X + BoltRadius, j5.Y + BoltRadius);

  // Gheare (gripper)
  totalAngle := a1 + a2 + a3 + a4;
  openOffset := Round(MaxFingerSpread * Scale * (Sin(angleOpenStanga) * 0.5 + 0.5));

  Canvas.Pen.Width := Round(2 * Scale);
  Canvas.Pen.Color := colDark;
  Canvas.Brush.Color := colMain;

  Canvas.Polygon([
    j5,
    OffsetPoint(j5, totalAngle + Pi/2, openOffset),
    OffsetPoint(OffsetPoint(j5, totalAngle + Pi/2, openOffset), totalAngle, FingerLength)
  ]);

  Canvas.Polygon([
    j5,
    OffsetPoint(j5, totalAngle - Pi/2, openOffset),
    OffsetPoint(OffsetPoint(j5, totalAngle - Pi/2, openOffset), totalAngle, FingerLength)
  ]);

  Canvas.Pen.Width := 2;
end;


//Proceduri pentru brat x
procedure TForm1.btn11Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn11;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn12Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn12;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn13Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn13;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn21Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn21;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn22Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn22;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn23Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn23;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn31Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn31;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn32Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn32;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn33Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn33;
    DisableAllButtons;
  end;
end;
            //btn start
procedure TForm1.btnStartClick(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtnStart;
    DisableAllButtons;
  end;
end;
           //proceduri pentru butoane brat 0
procedure TForm1.btn211Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn211;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn212Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn212;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn213Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn213;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn221Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn221;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn222Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn222;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn223Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn223;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn231Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn231;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn232Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn232;
    DisableAllButtons;
  end;
end;

procedure TForm1.btn233Click(Sender: TObject);
begin
  if AnimState = asIdle then
  begin
    AnimState := asBtn233;
    DisableAllButtons;
  end;
end;
end.

