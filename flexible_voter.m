clc;
clear all;
conn = database('MySQL','root','');

disp("Authentication for Flexible voting ");
voter_id = input("Enter You voter ID: ", 's');
        
loc = voter_id(1:3);
if loc == "ben"
    sqlquery = ['select * from bengaluru where voterid = ''',voter_id,''''];
elseif loc == "mys"
    sqlquery = ['select * from mysuru where voterid = ''',voter_id,''''];
end

result = fetch(conn,sqlquery);
clc;
greet = "Hello " + result.name;
disp(greet);
status = result.status;
if status == 1
    disp("You have voted already");
elseif loc == "ben"
    bengalurufig;
elseif loc == "mys"
    mysuru;
end

close(conn);

