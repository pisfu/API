unit GradientCE;

interface

uses

 math;


 function gradient(m,z,x,alfa,ro,ha,e,r,epsilon:extended; var t,t1:Extended):boolean;

implementation
uses GearsProcCE ;

function gradient(m,z,x,alfa,ro,ha,e,r,epsilon:extended; var t,t1:Extended):boolean;
var tlim,north,south,west,east,FirstPoint,SecondPoint:extended;
    dt:extended;
    i:integer;
function FindTlim(epsilon:Extended):extended;
  var dt,FirstPoint,SecondPoint:extended;

    function evolventa(t:extended):extended;
    var p,xe,ye:extended;
    begin
    P:=(-(r+e)*sin(t)+(r*t-pi*m/4)*cos(t)+r*sin(t))*sin(alfa+t)-((r+e)*cos(t)+(r*t-pi*m/4)*sin(t)-r*cos(t))*cos(alfa+t);

    xe:= (r+e)*sin(t)-(r*t-pi*m/4)*cos(t)+P*sin(Alfa+t);

    ye:= (r+e)*cos(t)+(r*t-pi*m/4)*sin(t)+P*cos(Alfa+t);

    evolventa:=(sqrt(sqr(xe)+sqr(ye))-r*cos(alfa));
    end;

begin
    t:=0;  dt:=-0.1;
   repeat

    firstPoint:=evolventa(t);
    SecondPoint:=evolventa(t+dt);
    if secondPoint>firstPoint then begin
                                   t:=t-dt;
                                   dt:=dt/2;
                                   end
                                   else
                                   t:=t+dt
   until firstPoint<epsilon ;

   result:=t;

end;

 function ff(t,t1:extended):extended;
 var
   //Выкружка
  a, b, xo1,yo1,xv1,yv1,x2,y2,dx2,dy2,hao, Koren,xv,yv: extended;

   // Эвольвента
  p,xe,ye:extended;


 begin
    a:= ro-Ha+e;
    hao:=ha-ro;

    b:=(pi*m/4)-(hao*tan(alfa))-(ro/cos(alfa));

    xo1:=r*sin(t1)-r*t1*cos(t1);
    yo1:=r*cos(t1)+r*t1*sin(t1);

    xv1:=xo1+a*sin(t1);
    yv1:=yo1+a*cos(t1);

    x2:=xv1+b*cos(t1);
    y2:=yv1-b*sin(t1);

    dx2:=a*cos(t1)+(r*t1-b)*sin(t1);
    dy2:=-a*sin(t1)+(r*t1-b)*cos(t1);

    koren:=sqrt(sqr(dx2)+sqr(dy2));
    if e<ha then
             begin
             xv:=x2-ro*dy2/koren;
             yv:=y2+ro*dx2/Koren;
             end
            else
             begin
             xv:=x2-ro*dy2/koren;
             yv:=y2+ro*dx2/Koren;
             end;

   // Эвольвента
    P:=(-(r+e)*sin(t)+(r*t-pi*m/4)*cos(t)+r*sin(t))*sin(alfa+t)-((r+e)*cos(t)+(r*t-pi*m/4)*sin(t)-r*cos(t))*cos(alfa+t);

    xe:= (r+e)*sin(t)-(r*t-pi*m/4)*cos(t)+P*sin(Alfa+t);

    ye:= (r+e)*cos(t)+(r*t-pi*m/4)*sin(t)+P*cos(Alfa+t);

    ff:=sqr(xe-xv)+sqr(ye-yv);

 end ;

begin
   i:=0;
    tlim:=FindTlim(0.000001);
   //Выкружка
    t:=0.01; t1:=0.01; dt:=0.01;
   result:=true ;
   repeat
    firstPoint:=ff(t,t1);
    north:=ff(t+dt,t1);
    south:=ff(t-dt,t1);

    east:=ff(t,t1+dt);
    west:=ff(t,t1-dt);
    if ((north>=south) and (t>=tlim)) then t:=t-dt
                    else t:=t+dt;
    if east<=west   then t1:=t1+dt
                    else t1:=t1-dt;

    SecondPoint:=ff(t,t1);
   if (secondPoint-firstPoint)>0 then
                                  dt:=dt/2;
   if i>100000 then
                               begin
                               result:=false;
                               break;

                               end;
   inc(i);
   until  abs(firstPoint)<epsilon ;
end;

end.
