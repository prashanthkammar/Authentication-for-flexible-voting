clc;
close all;
conn = database('MySQL','root','');

disp("Authentication for Flexible voting ");
voter_id = input("Enter You voter ID: ", 's');
        
loc = voter_id(1:3);

if loc == "ben"
    tablename = {'bengaluru'};
    sqlquery = ['select * from bengaluru where voterid = ''',voter_id,''''];

elseif loc == "mys"
    tablename = {'mysuru'};
    sqlquery = ['select * from mysuru where voterid = ''',voter_id,''''];

elseif loc == "dwd"
    tablename = {'dharwad'};
    sqlquery = ['select * from dharwad where voterid = ''',voter_id,''''];
end

result = fetch(conn,sqlquery);
status = result.status;

greet = "Hello " + result.name;
disp(greet);

if status == 1
    disp("You have voted already");

elseif status == 0 && loc == "ben"
    bengalurufig;

elseif status == 0 && loc == "mys"
    mysuru;

elseif status == 0 && loc == "dwd"
    dharwad;

else 
    disp("Invalid");

end

colnames = {'status'};
data = {1};
whereclause = ['WHERE voterid = ''',voter_id,''''];
update(conn,tablename,colnames,data,whereclause);

close(conn);

