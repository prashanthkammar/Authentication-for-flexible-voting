function varargout = bengalurufig(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bengalurufig_OpeningFcn, ...
                   'gui_OutputFcn',  @bengalurufig_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before bengalurufig is made visible.
function bengalurufig_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bengalurufig (see VARARGIN)

% Choose default command line output for bengalurufig
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bengalurufig wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bengalurufig_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Ben1.
function Ben1_Callback(hObject, eventdata, handles)
% hObject    handle to Ben1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.one,'String','Voted');
set(handles.Ben1,'Enable','off');
set(handles.Ben2,'Enable','off');
set(handles.Ben3,'Enable','off');
set(handles.Ben4,'Enable','off');
set(handles.Ben5,'Enable','off');

% --- Executes on button press in Ben2.
function Ben2_Callback(hObject, eventdata, handles)
% hObject    handle to Ben2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.two,'String','Voted');
set(handles.Ben1,'Enable','off');
set(handles.Ben2,'Enable','off');
set(handles.Ben3,'Enable','off');
set(handles.Ben4,'Enable','off');
set(handles.Ben5,'Enable','off');

% --- Executes on button press in Ben3.
function Ben3_Callback(hObject, eventdata, handles)
% hObject    handle to Ben3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.three,'String','Voted');
set(handles.Ben1,'Enable','off');
set(handles.Ben2,'Enable','off');
set(handles.Ben3,'Enable','off');
set(handles.Ben4,'Enable','off');
set(handles.Ben5,'Enable','off');

% --- Executes on button press in Ben4.
function Ben4_Callback(hObject, eventdata, handles)
% hObject    handle to Ben4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.four,'String','Voted');
set(handles.Ben1,'Enable','off');
set(handles.Ben2,'Enable','off');
set(handles.Ben3,'Enable','off');
set(handles.Ben4,'Enable','off');
set(handles.Ben5,'Enable','off');

% --- Executes on button press in Ben5.
function Ben5_Callback(hObject, eventdata, handles)
% hObject    handle to Ben5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.five,'String','Voted');
set(handles.Ben1,'Enable','off');
set(handles.Ben2,'Enable','off');
set(handles.Ben3,'Enable','off');
set(handles.Ben4,'Enable','off');
set(handles.Ben5,'Enable','off');

function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of one as text
%        str2double(get(hObject,'String')) returns contents of one as a double


% --- Executes during object creation, after setting all properties.
function one_CreateFcn(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of two as text
%        str2double(get(hObject,'String')) returns contents of two as a double


% --- Executes during object creation, after setting all properties.
function two_CreateFcn(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of three as text
%        str2double(get(hObject,'String')) returns contents of three as a double


% --- Executes during object creation, after setting all properties.
function three_CreateFcn(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of four as text
%        str2double(get(hObject,'String')) returns contents of four as a double


% --- Executes during object creation, after setting all properties.
function four_CreateFcn(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of five as text
%        str2double(get(hObject,'String')) returns contents of five as a double


% --- Executes during object creation, after setting all properties.
function five_CreateFcn(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
