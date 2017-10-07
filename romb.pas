program romb1;
var i,n,k :byte;

begin
   writeln ('print size (odd number)');
   readln (n);
   for i := 1 to n do
   begin
      writeln;
      if (i = 1) or (i = n) then 
      begin
         for k := 1 to (n div 2) do
         write (' ');
         write ('*');
      end;
      if (i > ((n div 2)+1)) and (i <> n) then 
         begin
            writeln;
            for k := 1 to ((n div 2) -n+i) do
            write(' ');
            write('*');
            for k := 1 to n-(2+2*(n div 2 -n+i)) do
            write(' ');
            write('*');
         end; 
      if (i <= (n div 2)) and (i <> 1) then 
      begin
         writeln;
         for k := 1 to ((n div 2) -i+1) do
         write(' ');
         write('*');
         for k := 1 to n-(2+2*(n div 2 -i+1)) do
         write(' ');
         write('*');
      end;
      if i = ((n div 2)+1) then 
      begin
         writeln;
         write('*');
         for k := 1 to n - 2 do
         write(' ');
         write('*');
      end;
   end;
   writeln;   		
end.
