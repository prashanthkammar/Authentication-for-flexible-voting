clc;
close all;
conn = database('MySQL','root','');

%Input Voter ID
disp("Authentication for Flexible voting ");
voter_id = input("Enter You voter ID: ", 's');
  
loc = voter_id(1:3) ;
if length(voter_id) ~= 6 && length(loc) ~=3  
    disp("The voter id entered was invalid ");
    voter_id = input("Enter You voter ID: ", 's');
end

% diplay  voter panel  corresponding to the voter id
if loc == "ben"
    tablename = {'bengaluru'};
    %query the voter data from the corresponding table depending on voter
    %id
    sqlquery = ['select * from bengaluru where voterid = ''',voter_id,''''];

elseif loc == "mys"
    tablename = {'mysuru'};
    sqlquery = ['select * from mysuru where voterid = ''',voter_id,''''];

elseif loc == "dwd"
    tablename = {'dharwad'};
    sqlquery = ['select * from dharwad where voterid = ''',voter_id,''''];
else
    disp("Invalid");
    return;
end

result = fetch(conn,sqlquery);

greet = "Hello " + result.name;
disp(greet);

% assign the vote status of the voter from the queried data to a matlab variable 
status = result.status;

%if status is equal to 1 then already voted, panel is not displayed
% if status is equal to 0 (not voted) then display the panel depending up on the voterid
% entered
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
    return;

end

%update the status of the voter in the table to 1, so as to prevent fake
%vote

colnames = {'status'};
data = {1};

whereclause = ['WHERE voterid = ''',voter_id,''''];
update(conn,tablename,colnames,data,whereclause);

close(conn);

