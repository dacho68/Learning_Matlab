function varargout = Easy(varargin)
% EASY MATLAB code for Easy.fig
%      EASY, by itself, creates a new EASY or raises the existing
%      singleton*.
%
%      H = EASY returns the handle to a new EASY or the handle to
%      the existing singleton*.
%
%      EASY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EASY.M with the given input arguments.
%
%      EASY('Property','Value',...) creates a new EASY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Easy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Easy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Easy

% Last Modified by GUIDE v2.5 10-Jun-2016 16:49:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Easy_OpeningFcn, ...
                   'gui_OutputFcn',  @Easy_OutputFcn, ...
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


% --- Executes just before Easy is made visible.
function Easy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Easy (see VARARGIN)

% Choose default command line output for Easy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Show Logo
h = imread('Easy.jpg');
axes(handles.axes1);
imshow(h);

% Global Variable Initialize
global isFirst;
isFirst = 1;

global puzzleAns;
puzzleAns = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

use = [0, 0, 0, 0, 0, 0, 0, 0];
for i=1:4
    for j=1:4
        x = fix(rand()*8)+1;
        while use(x) >= 2
            x = fix(rand()*8)+1;
        end
        use(x) = use(x)+1;
        puzzleAns((i-1)*4+j) = x;
    end
end
puzzleAns

global useCard;
useCard = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

global prevBtn;
global prevhObject;

% UIWAIT makes Easy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Easy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(1, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(2, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(3, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(4, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(5, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(6, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(7, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(8, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(9, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(10, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(11, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(12, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(13, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(14, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(15, hObject);
pressAdd(handles);

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pressBtn(16, hObject);
pressAdd(handles);

% Press Addup
function pressAdd(handles)
v = str2num(get(handles.text3, 'String'));
set(handles.text3, 'String', v+1);

% Press Button
function pressBtn(btn, hObject)
global isFirst;
global useCard;
global prevBtn;
global prevhObject;

if useCard(btn)==0
    toggleCard(btn, hObject);
    useCard(btn) = 1;
    
    if isFirst==1
        prevBtn = btn;
        prevhObject = hObject;
    else
        
    end
    
    if isFirst==1
        isFirst = 0;
    else
        isFirst = 1;
    end
end

function toggleCard(btn, hObject)
global useCard;
global puzzleAns;
if useCard(btn)==0
    tmp = puzzleAns(btn);
else 
    tmp = '?';
end
set(hObject, 'String', tmp);
