function varargout = dharwad(varargin)
% DHARWAD MATLAB code for dharwad.fig
%      DHARWAD, by itself, creates a new DHARWAD or raises the existing
%      singleton*.
%
%      H = DHARWAD returns the handle to a new DHARWAD or the handle to
%      the existing singleton*.
%
%      DHARWAD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DHARWAD.M with the given input arguments.
%
%      DHARWAD('Property','Value',...) creates a new DHARWAD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dharwad_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dharwad_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dharwad

% Last Modified by GUIDE v2.5 08-Jun-2020 14:22:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dharwad_OpeningFcn, ...
                   'gui_OutputFcn',  @dharwad_OutputFcn, ...
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


% --- Executes just before dharwad is made visible.
function dharwad_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dharwad (see VARARGIN)

% Choose default command line output for dharwad
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dharwad wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dharwad_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

set(handles.one,'String','');
set(handles.two,'String','');
set(handles.three,'String','');
set(handles.four,'String','');
set(handles.five,'String','');


set(handles.d1,'Enable','on');
set(handles.d2,'Enable','on');
set(handles.d3,'Enable','on');
set(handles.d4,'Enable','on');
set(handles.d5,'Enable','on');

% --- Executes on button press in d1.
function d1_Callback(hObject, eventdata, handles)
% hObject    handle to d1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.one,'String','Voted');
set(handles.d1,'Enable','off');
set(handles.d2,'Enable','off');
set(handles.d3,'Enable','off');
set(handles.d4,'Enable','off');
set(handles.d5,'Enable','off');


% --- Executes on button press in d2.
function d2_Callback(hObject, eventdata, handles)
% hObject    handle to d2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.two,'String','Voted');
set(handles.d1,'Enable','off');
set(handles.d2,'Enable','off');
set(handles.d3,'Enable','off');
set(handles.d4,'Enable','off');
set(handles.d5,'Enable','off');


% --- Executes on button press in d3.
function d3_Callback(hObject, eventdata, handles)
% hObject    handle to d3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.three,'String','Voted');
set(handles.d1,'Enable','off');
set(handles.d2,'Enable','off');
set(handles.d3,'Enable','off');
set(handles.d4,'Enable','off');
set(handles.d5,'Enable','off');


% --- Executes on button press in d4.
function d4_Callback(hObject, eventdata, handles)
% hObject    handle to d4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.four,'String','Voted');
set(handles.d1,'Enable','off');
set(handles.d2,'Enable','off');
set(handles.d3,'Enable','off');
set(handles.d4,'Enable','off');
set(handles.d5,'Enable','off');


% --- Executes on button press in d5.
function d5_Callback(hObject, eventdata, handles)
% hObject    handle to d5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.five,'String','Voted');
set(handles.d1,'Enable','off');
set(handles.d2,'Enable','off');
set(handles.d3,'Enable','off');
set(handles.d4,'Enable','off');
set(handles.d5,'Enable','off');



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
