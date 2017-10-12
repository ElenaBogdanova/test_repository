program ALotOfDimonds;

procedure smb (n :integer; c:char);
begin
   if n <> 0 then
   write(c);
   if n > 1 then
   smb(n-1,c);
end;

procedure line(p,n,k :integer);
var
   i : integer;
begin
   for i := 1 to k do
   begin
     write(' ');
      smb (abs(n div 2+1-p),' ');
      if p <= n div 2+1  then
         smb (2*p-1,'*')
      else
         smb (2*(n-p+1)-1,'*');
      smb(abs(n div 2 +1-p),' ');
      write(' ');
   end;
   writeln;
   if p < n-1 then
   line(p+1,n,k);
end;

var
    n,k,i :integer;
begin
   writeln('print size of diamond ');
   writeln('print diamonds number ');
   readln(n,k);
   n := 2*(n div 2)+1;
   for i := 1 to k do
   begin
      smb(n div 2 +1,' ');
      write('*');
      smb(n div 2 +1,' ');
   end;
   writeln;
   if n <> 1 then  line(2,n,k);
   if n <> 1 then
   begin
      for i := 1 to k do
      begin
         smb(n div 2 +1,' ');
         write('*');
         smb(n div 2 +1,' ');
      end;
   end;
   writeln;
end.


