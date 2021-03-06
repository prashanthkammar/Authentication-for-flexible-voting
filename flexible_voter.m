clc;
close all;
conn = database('MySQL','root','');

%Input Voter ID
disp("Authentication for Flexible voting ");
voter_id = input("Enter You voter ID: ", 's');

loc = voter_id(1:3) ;

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
    disp("Voter ID doesn't exits in data base");
    return;
end


result = fetch(conn,sqlquery);
status = result.status;
clc;
greet = "Hello " + result.name;
disp(greet);

no_data = isempty(result);

if no_data == 1
    disp("Voter ID doesn't exits in data base");
    return;
end

%if status == 1  
%    disp("You have voted already");
%    return;
%end

disp ('Authenctication Process ');
password = input('Enter Your password: ','s');
pass = result.password;

for i = 1:4 
    if password == string(pass)
           p = 1;
           break;
    else
        p = 0;
        clc;
        disp("Entered password was wrong");
        password = input("Enter the password again: ", 's');
    end
end

        
if p == 1
    % assign the vote status of the voter from the queried data to a matlab variable 
    status = result.status;

    %if status is equal to 1 then already voted, panel is not displayed
    % if status is equal to 0 (not voted) then display the panel depending up on the voterid
    % entered
    if status == 1  
        disp("You have voted already");
        return;
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
    
else
    clc;
    disp ("Authentication failed!");

end

close(conn);

