function varargout = mysuru(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mysuru_OpeningFcn, ...
                   'gui_OutputFcn',  @mysuru_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end


function mysuru_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mysuru wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mysuru_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% --- Executes on button press in Mys1.
function Mys1_Callback(hObject, eventdata, handles)

set(handles.one,'String','Voted');
set(handles.Mys1,'Enable','off');
set(handles.Mys2,'Enable','off');
set(handles.Mys3,'Enable','off');
set(handles.Mys4,'Enable','off');
set(handles.Mys5,'Enable','off');

% --- Executes on button press in Mys2.
function Mys2_Callback(hObject, eventdata, handles)

set(handles.two,'String','Voted');
set(handles.Mys1,'Enable','off');
set(handles.Mys2,'Enable','off');
set(handles.Mys3,'Enable','off');
set(handles.Mys4,'Enable','off');
set(handles.Mys5,'Enable','off');


% --- Executes on button press in Mys3.
function Mys3_Callback(hObject, eventdata, handles)

set(handles.three,'String','Voted');
set(handles.Mys1,'Enable','off');
set(handles.Mys2,'Enable','off');
set(handles.Mys3,'Enable','off');
set(handles.Mys4,'Enable','off');
set(handles.Mys5,'Enable','off');

% --- Executes on button press in Mys4.
function Mys4_Callback(hObject, eventdata, handles)

set(handles.four,'String','Voted');
set(handles.Mys1,'Enable','off');
set(handles.Mys2,'Enable','off');
set(handles.Mys3,'Enable','off');
set(handles.Mys4,'Enable','off');
set(handles.Mys5,'Enable','off');


% --- Executes on button press in Mys5.
function Mys5_Callback(hObject, eventdata, handles)

set(handles.five,'String','Voted');
set(handles.Mys1,'Enable','off');
set(handles.Mys2,'Enable','off');
set(handles.Mys3,'Enable','off');
set(handles.Mys4,'Enable','off');
set(handles.Mys5,'Enable','off');

