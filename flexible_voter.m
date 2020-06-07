clc;
clear all;
conn = database('MySQL','root','');

disp("Authentication for Flexible voting ");
voter_id = input("Enter You voter ID: ", 's');

loc = voter_id(1:3);
if loc == "ben"
    evm = bengalurufig;
    sqlquery = ['select * from voter.bengaluru where voterid = ''',voter_id,''''];
elseif loc == "mys"
    evm = mysuru;
    sqlquery = ['select * from voter.mysuru where voterid = ''',voter_id,''''];
end

result = fetch(conn,sqlquery);

status = result.status;
if status == 1
    disp("You have voted already");
else
    evm;        
end

close(conn);

