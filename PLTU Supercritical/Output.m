function varargout = Output(varargin)
% OUTPUT MATLAB code for Output.fig
%      OUTPUT, by itself, creates a new OUTPUT or raises the existing
%      singleton*.
%
%      H = OUTPUT returns the handle to a new OUTPUT or the handle to
%      the existing singleton*.
%
%      OUTPUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OUTPUT.M with the given input arguments.
%
%      OUTPUT('Property','Value',...) creates a new OUTPUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Output_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Output_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Output

% Last Modified by GUIDE v2.5 11-Aug-2020 15:09:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Output_OpeningFcn, ...
                   'gui_OutputFcn',  @Output_OutputFcn, ...
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


% --- Executes just before Output is made visible.
function Output_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Output (see VARARGIN)

% Choose default command line output for Output
handles.output = hObject;

hback = axes('unit','normalized','position',[0 0 1 1]);
uistack(hback, 'bottom');
[back map] = imread('Blank.png');
image(back)
colormap(map)
set(hback,'handlevisibility','off','visible','off');

% Update handles structure
guidata(hObject, handles);

global EfficiencyBoilerGA1
global EfficiencyBoilerGA2
global EfficiencyBoilerGA3
global EfficiencyBoilerGA4
global EfficiencyBoilerGA5
global EfficiencyBoilerNorm1
global EfficiencyBoilerNorm2
global EfficiencyBoilerNorm3
global EfficiencyBoilerNorm4
global EfficiencyBoilerNorm5
global EfficiencyThermalGA1
global EfficiencyThermalGA2
global EfficiencyThermalGA3
global EfficiencyThermalGA4
global EfficiencyThermalGA5
global EfficiencyThermalNorm1
global EfficiencyThermalNorm2
global EfficiencyThermalNorm3
global EfficiencyThermalNorm4
global EfficiencyThermalNorm5
global TurbinHeatRateGA1
global TurbinHeatRateGA2
global TurbinHeatRateGA3
global TurbinHeatRateGA4
global TurbinHeatRateGA5
global TurbinHeatRateNorm1
global TurbinHeatRateNorm2
global TurbinHeatRateNorm3
global TurbinHeatRateNorm4
global TurbinHeatRateNorm5
global GrossPlantHeatRateGA1
global GrossPlantHeatRateGA2
global GrossPlantHeatRateGA3
global GrossPlantHeatRateGA4
global GrossPlantHeatRateGA5
global GrossPlantHeatRateNorm1
global GrossPlantHeatRateNorm2
global GrossPlantHeatRateNorm3
global GrossPlantHeatRateNorm4
global GrossPlantHeatRateNorm5

set(handles.text0, 'string', EfficiencyBoilerGA1);
set(handles.text1, 'string', EfficiencyThermalGA1);
set(handles.text2, 'string', TurbinHeatRateGA1);
set(handles.text3, 'string', GrossPlantHeatRateGA1);
set(handles.text8, 'string', EfficiencyBoilerGA2);
set(handles.text9, 'string', EfficiencyThermalGA2);
set(handles.text10, 'string', TurbinHeatRateGA2);
set(handles.text11, 'string', GrossPlantHeatRateGA2);
set(handles.text16, 'string', EfficiencyBoilerGA3);
set(handles.text17, 'string', EfficiencyThermalGA3);
set(handles.text18, 'string', TurbinHeatRateGA3);
set(handles.text19, 'string', GrossPlantHeatRateGA3);
set(handles.text24, 'string', EfficiencyBoilerGA4);
set(handles.text25, 'string', EfficiencyThermalGA4);
set(handles.text26, 'string', TurbinHeatRateGA4);
set(handles.text27, 'string', GrossPlantHeatRateGA4);
set(handles.text32, 'string', EfficiencyBoilerGA5);
set(handles.text33, 'string', EfficiencyThermalGA5);
set(handles.text34, 'string', TurbinHeatRateGA5);
set(handles.text35, 'string', GrossPlantHeatRateGA5);

set(handles.text4, 'string', EfficiencyBoilerNorm1);
set(handles.text5, 'string', EfficiencyThermalNorm1);
set(handles.text6, 'string', TurbinHeatRateNorm1);
set(handles.text7, 'string', GrossPlantHeatRateNorm1);
set(handles.text12, 'string', EfficiencyBoilerNorm2);
set(handles.text13, 'string', EfficiencyThermalNorm2);
set(handles.text14, 'string', TurbinHeatRateNorm2);
set(handles.text15, 'string', GrossPlantHeatRateNorm2);
set(handles.text20, 'string', EfficiencyBoilerNorm3);
set(handles.text21, 'string', EfficiencyThermalNorm3);
set(handles.text22, 'string', TurbinHeatRateNorm3);
set(handles.text23, 'string', GrossPlantHeatRateNorm3);
set(handles.text28, 'string', EfficiencyBoilerNorm4);
set(handles.text29, 'string', EfficiencyThermalNorm4);
set(handles.text30, 'string', TurbinHeatRateNorm4);
set(handles.text31, 'string', GrossPlantHeatRateNorm4);
set(handles.text36, 'string', EfficiencyBoilerNorm5);
set(handles.text37, 'string', EfficiencyThermalNorm5);
set(handles.text38, 'string', TurbinHeatRateNorm5);
set(handles.text39, 'string', GrossPlantHeatRateNorm5);



% UIWAIT makes Output wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Output_OutputFcn(hObject, eventdata, handles) 
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
run('SettingParameter.m');
