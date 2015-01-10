input metauml;
beginfig(1);
    %define classes
    Class.Shape("Shape")("+Position: Vector", "+Hit Point: Vector", "+Material: Material", "+distance: int ")("+intersect(): Vector", "+rtnColor(): Color", "+calcNormal(): Vector");
%    Class.Circle("Circle")("-center: Point", "-radius:  int")("+get_circumference(): int");

     %layout classes
%     topToBottom(50)(Point, Circle);
%     leftToRight(50)(Circle, Shape);
 
     %draw classes
     drawObjects(Shape);
 
%     %link classes
%     link(inheritance)(Circle.e -- Shape.w);
%     link(composition)(Point.s -- Circle.n);
 endfig;
 beginfig(2);
    %define classes
    Class.Material("Material")("+Color: Color")("+returnColor(): Color");
%    Class.Shape("Shape")()("+get_circumference(): int");
%    Class.Circle("Circle")("-center: Point", "-radius:  int")("+get_circumference(): int");

     %layout classes
%     topToBottom(50)(Point, Circle);
%     leftToRight(50)(Circle, Shape);
 
     %draw classes
     drawObjects(Material);
 
%     %link classes
%     link(inheritance)(Circle.e -- Shape.w);
%     link(composition)(Point.s -- Circle.n);
 endfig;
 beginfig(3);
    %define classes
    Class.Color("Color")("+RGB: Vector")("+returnColor(): Vector");
%    Class.Shape("Shape")()("+get_circumference(): int");
%    Class.Circle("Circle")("-center: Point", "-radius:  int")("+get_circumference(): int");

     %layout classes
%     topToBottom(50)(Point, Circle);
%     leftToRight(50)(Circle, Shape);
 
     %draw classes
     drawObjects(Color);
 
%     %link classes
%     link(inheritance)(Circle.e -- Shape.w);
%     link(composition)(Point.s -- Circle.n);
 endfig;
beginfig(4);
    %define classes
    Class.Light("Light")("+Color: Color", "+Position: Vector")("+rtnColor(): Vector");
%    Class.Shape("Shape")()("+get_circumference(): int");
%    Class.Circle("Circle")("-center: Point", "-radius:  int")("+get_circumference(): int");

     %layout classes
%     topToBottom(50)(Point, Circle);
%     leftToRight(50)(Circle, Shape);
 
     %draw classes
     drawObjects(Light);
 
%     %link classes
%     link(inheritance)(Circle.e -- Shape.w);
%     link(composition)(Point.s -- Circle.n);
 endfig;
 end
 