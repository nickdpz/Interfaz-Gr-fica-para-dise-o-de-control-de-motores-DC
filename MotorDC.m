function varargout = MotorDC(varargin)
% MOTORDC MATLAB code for MotorDC.fig
%      MOTORDC, by itself, creates a new MOTORDC or raises the existing
%      singleton*.
%
%      H = MOTORDC returns the handle to a new MOTORDC or the handle to
%      the existing singleton*.
%
%      MOTORDC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MOTORDC.M with the given input arguments.
%
%      MOTORDC('Property','Value',...) creates a new MOTORDC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MotorDC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MotorDC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MotorDC

% Last Modified by GUIDE v2.5 17-Sep-2017 11:31:01

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MotorDC_OpeningFcn, ...
                   'gui_OutputFcn',  @MotorDC_OutputFcn, ...
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


% --- Executes just before MotorDC is made visible.
function MotorDC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MotorDC (see VARARGIN)

% Choose default command line output for MotorDC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
 ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
%bg = imread('fondo.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');
% UIWAIT makes MotorDC wait for user response (see UIRESUME)
% uiwait(handles.figure1);

%datos= get(handles.tblcurva, 'Data');

datos=[{'0','0'};{'125','2'};{'180','3'};{'225','4'};{'250','5'};{'270','6'};{'275','7'};{'285','9'}];
set(handles.tblcurva,'Data',datos);
set(handles.txtn0, 'String','1200');
set(handles.txtvi, 'String','250');
set(handles.txtra, 'String','0.05');
set(handles.txtrf, 'String','50');
set(handles.txtrserie, 'String','0.1');
set(handles.txtvesc, 'String','0');
set(handles.txtperdidas, 'String','380');
ax1=handles.plttorque;
ax1.Title.String = 'Torque - Velocidad';
ax1.Title.FontWeight = 'bold';
ax1.Title.Color = 'yellow';
ax2=handles.plteficiencia;
ax2.Title.String = 'Eficiencia - Corriente de Armadura';
ax2.Title.FontWeight = 'bold';
ax2.Title.Color= 'yellow';
set(handles.btntn,'Enable','off'); 
set(handles.btnnia,'Enable','off');
% --- Outputs from this function are returned to the command line.
function varargout = MotorDC_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtn0_Callback(hObject, eventdata, handles)
% hObject    handle to txtn0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtn0 as text
%        str2double(get(hObject,'String')) returns contents of txtn0 as a double


% --- Executes during object creation, after setting all properties.
function txtn0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtn0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtra_Callback(hObject, eventdata, handles)
% hObject    handle to txtra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtra as text
%        str2double(get(hObject,'String')) returns contents of txtra as a double


% --- Executes during object creation, after setting all properties.
function txtra_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtrf_Callback(hObject, eventdata, handles)
% hObject    handle to txtrf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtrf as text
%        str2double(get(hObject,'String')) returns contents of txtrf as a double


% --- Executes during object creation, after setting all properties.
function txtrf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtrf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btngraficar.




% --- Executes on button press in btnsalir.
function btnsalir_Callback(hObject, eventdata, handles)
% hObject    handle to btnsalir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection = questdlg('¿Seguro que desea abandonar el programa?',...
    ' Confirmacion salir ',...
    'Si','No','Si');

switch selection 
    case 'Si'
        if exist('h0','var')
            delete(ho)
            clear h0
        end
     delete(gcbf) 
     clear
     clc
    case 'No'
        return
end


% --- Executes during object creation, after setting all properties.
function DataInicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DataInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function txtvi_Callback(hObject, eventdata, handles)
% hObject    handle to txtvi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtvi as text
%        str2double(get(hObject,'String')) returns contents of txtvi as a double


% --- Executes during object creation, after setting all properties.
function txtvi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtvi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtrserie_Callback(hObject, eventdata, handles)
% hObject    handle to txtrserie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtrserie as text
%        str2double(get(hObject,'String')) returns contents of txtrserie as a double


% --- Executes during object creation, after setting all properties.
function txtrserie_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtrserie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtvesc_Callback(hObject, eventdata, handles)
% hObject    handle to txtvesc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtvesc as text
%        str2double(get(hObject,'String')) returns contents of txtvesc as a double


% --- Executes during object creation, after setting all properties.
function txtvesc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtvesc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtperdidas_Callback(hObject, eventdata, handles)
% hObject    handle to txtperdidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtperdidas as text
%        str2double(get(hObject,'String')) returns contents of txtperdidas as a double


% --- Executes during object creation, after setting all properties.
function txtperdidas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtperdidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when entered data in editable cell(s) in tblcurva.
function tblcurva_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to tblcurva (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btngraficar.
function btngraficar_Callback(hObject, eventdata, handles)
% hObject    handle to btngraficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

vi=str2double(get(handles.txtvi,'string'));
ra=str2double(get(handles.txtra,'string'));
rf=str2double(get(handles.txtrf,'string'));
rserie=str2double(get(handles.txtrserie,'string'));
n0=str2double(get(handles.txtn0,'string'));
vesc=str2double(get(handles.txtvesc,'string'));
pf=str2double(get(handles.txtperdidas,'string'));
curva=str2double(get(handles.tblcurva, 'Data'));
if isnan(vi) || isnan(ra) || isnan(rf) || isnan(rserie) || isnan(n0) || isnan(vesc) || isnan(pf) || isnan(curva(1))|| isnan(curva(2))|| isnan(curva(3))|| isnan(curva(4))|| isnan(curva(5))|| isnan(curva(6))|| isnan(curva(7))|| isnan(curva(8))|| isnan(curva(9))|| isnan(curva(10))|| isnan(curva(11))|| isnan(curva(12))|| isnan(curva(13)) || isnan(curva(14))|| isnan(curva(15))|| isnan(curva(16))

errordlg('Error algún dato inválido  o vacío','Error')

else
cla('plttorque','reset')    
cla('plteficiencia','reset')
e0=[curva(1),curva(2),curva(3),curva(4),curva(5),curva(6),curva(7),curva(8)];
if0=[curva(9),curva(10),curva(11),curva(12),curva(13),curva(14),curva(15),curva(16)];
ea0=interp1(if0,e0,vi/rf,'spline');  %Toma el valor ea0 de la curva de magnetizacion segun la corriente if
%Configuracion Shut
i_f=vi/rf;
is0=i_f*20; %se asume is inicial veinte veces mayor a if
is=(is0:is0/8:5*is0);   % se crea el vector para is, empezando a variar segun el valor de if hasta 5 veces el valor is inicial
ia=(is-i_f);
ea=vi-ia*ra-vesc;
nsh=ea*n0/ea0;
tsh=ea.*(ia./(nsh*(pi/30)));
pin=vi*is;
poutshunt=pin-(i_f*vi+ia*vesc+(ia.^2)*ra+pf);
efishunt=poutshunt*100./pin;

%Configuracion Serie
is0s=(vi-vesc)/(27.5*(rserie+ra));
ias2=(is0:is0s/8:5*is0s);
ias=is;
eas=vi-ias2*(ra+rserie)-vesc;
ea0s=interp1(30*if0,1*e0,ias2,'spline');
ns=(eas*n0)./ea0s;
ts=(30*eas.*ias2)./(ns*pi);
%t2=plot(handles.plttorque,ts,ns,'red','LineWidth',2);   grid on; hold on;
pins=vi*ias;
poutserie=pins-((ias.^2)*(rserie+ra)+ias*vesc+pf);
efiserie=100*poutserie./pins;
%e2=plot(handles.plteficiencia,ias,efiserie,'red','LineWidth',2); grid on; hold on;

%compuentos paralelo
i_f=vi/rf;
is0=i_f*20; %se asume is inicial veinte veces mayor a if
is=(is0:is0/8:5*is0);   % se crea el vector para is, empezando a variar segun el valor de if hasta 5 veces el valor is inicial
iac=is-i_f;
eac=vi-iac*(rserie+ra)-vesc;
ea0=interp1(if0,e0,i_f,'spline');
nc=eac*n0/ea0;
tc=eac.*(iac./(nc*(pi/30)));
t=plot(handles.plttorque,tsh,nsh,'blue',ts,ns,'red',tc,nc,'green','LineWidth',2);   grid on; hold on;
legend(t,'Shunt','Serie','Compuesto');

pinc=vi*is;
pout=pinc-((i_f.^2)*rf+(iac.^2)*(rserie+ra));
eficom=(pout*100)./pinc;
e=plot(handles.plteficiencia,ia,efishunt,'blue',ias,efiserie,'red',iac,eficom,'green','LineWidth',2); grid on; hold on;
legend(e,'Shunt','Serie','Compuesto');
ax1=handles.plttorque;
ax1.XColor='yellow';
ax1.YColor='yellow';
ax1.Title.String = 'Torque - Velocidad';
ax1.Title.FontWeight = 'bold';
ax1.Title.Color= 'yellow';
ax1.YLabel.String = 'rpm';
ax1.XLabel.String = 'Newton';


ax2=handles.plteficiencia;
ax2.XColor='yellow';
ax2.YColor='yellow';
ax2.Title.String = 'Eficiencia - Corriente de Armadura';
ax2.Title.FontWeight = 'bold';
ax2.Title.Color= 'yellow';
ax2.YLabel.String = 'adimensional';
ax2.XLabel.String = 'Amperios';
set(handles.btntn,'Enable','on'); 
set(handles.btnnia,'Enable','on'); 
end



% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over btngraficar.
function btngraficar_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to btngraficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function btnnia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btnnia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function btnnia_Callback(hObject, eventdata, handles)
% hObject    handle to btnnia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
vi=str2double(get(handles.txtvi,'string'));
ra=str2double(get(handles.txtra,'string'));
rf=str2double(get(handles.txtrf,'string'));
rserie=str2double(get(handles.txtrserie,'string'));
n0=str2double(get(handles.txtn0,'string'));
vesc=str2double(get(handles.txtvesc,'string'));
pf=str2double(get(handles.txtperdidas,'string'));
curva=str2double(get(handles.tblcurva, 'Data'));
if isnan(vi) || isnan(ra) || isnan(rf) || isnan(rserie) || isnan(n0) || isnan(vesc) || isnan(pf) || isnan(curva(1))|| isnan(curva(2))|| isnan(curva(3))|| isnan(curva(4))|| isnan(curva(5))|| isnan(curva(6))|| isnan(curva(7))|| isnan(curva(8))|| isnan(curva(9))|| isnan(curva(10))|| isnan(curva(11))|| isnan(curva(12))|| isnan(curva(13)) || isnan(curva(14))|| isnan(curva(15))|| isnan(curva(16))

errordlg('Error algún dato inválido  o vacío','Error')

else
figure('Name','Eficiencia  - Corriente de Armadura','NumberTitle','off','Color',[0.16 0.17 0.22]);    
cla('reset')
e0=[curva(1),curva(2),curva(3),curva(4),curva(5),curva(6),curva(7),curva(8)];
if0=[curva(9),curva(10),curva(11),curva(12),curva(13),curva(14),curva(15),curva(16)];
ea0=interp1(if0,e0,vi/rf,'spline');
%Configuracion Shut
i_f=vi/rf;
is0=i_f*20; %se asume is inicial veinte veces mayor a if
is=(is0:is0/8:5*is0);   % se crea el vector para is, empezando a variar segun el valor de if hasta 5 veces el valor is inicial
ia=(is-i_f);
pin=vi*is;
poutshunt=pin-(i_f*vi+ia*vesc+(ia.^2)*ra+pf);
efishunt=poutshunt*100./pin;

%Configuracion Serie
is0s=(vi-vesc)/(27.5*(rserie+ra));
ias2=(is0:is0s/8:5*is0s);
ias=is;
%t2=plot(handles.plttorque,ts,ns,'red','LineWidth',2);   grid on; hold on;
pins=vi*ias;
poutserie=pins-((ias.^2)*(rserie+ra)+ias*vesc+pf);
efiserie=100*poutserie./pins;
%e2=plot(handles.plteficiencia,ias,efiserie,'red','LineWidth',2); grid on; hold on;

%compuentos paralelo
i_f=vi/rf;
is0=i_f*20; %se asume is inicial veinte veces mayor a if
is=(is0:is0/8:5*is0);   % se crea el vector para is, empezando a variar segun el valor de if hasta 5 veces el valor is inicial
iac=is-i_f;
pinc=vi*is;
pout=pinc-((i_f.^2)*rf+(iac.^2)*(rserie+ra));
eficom=(pout*100)./pinc;
ejes=axes('XColor','yellow','YColor','yellow');
hold(ejes,'all');
e1=plot(ia,efishunt,'blue',ias,efiserie,'red',iac,eficom,'green','LineWidth',2);   grid on;hold on;
legend('Shunt','Serie','Compuesto');
%legend([t1 t2 t3],'Shunt','Serie','Compuesto');
title('Eficiencia-Corriente de Armadura','FontName','Arial','FontSize', 14,'FontWeight','bold','Color','yellow');
xlabel('Amperios','FontName','Arial','FontSize', 14,'Color','yellow');
ylabel('Adimencional','FontName','Arial','FontSize', 14,'Color','yellow'); 

end


% --- Executes on button press in btntn.
function btntn_Callback(hObject, eventdata, handles)
% hObject    handle to btntn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
vi=str2double(get(handles.txtvi,'string'));
ra=str2double(get(handles.txtra,'string'));
rf=str2double(get(handles.txtrf,'string'));
rserie=str2double(get(handles.txtrserie,'string'));
n0=str2double(get(handles.txtn0,'string'));
vesc=str2double(get(handles.txtvesc,'string'));
pf=str2double(get(handles.txtperdidas,'string'));
curva=str2double(get(handles.tblcurva, 'Data'));
if isnan(vi) || isnan(ra) || isnan(rf) || isnan(rserie) || isnan(n0) || isnan(vesc) || isnan(pf) || isnan(curva(1))|| isnan(curva(2))|| isnan(curva(3))|| isnan(curva(4))|| isnan(curva(5))|| isnan(curva(6))|| isnan(curva(7))|| isnan(curva(8))|| isnan(curva(9))|| isnan(curva(10))|| isnan(curva(11))|| isnan(curva(12))|| isnan(curva(13)) || isnan(curva(14))|| isnan(curva(15))|| isnan(curva(16))

errordlg('Error algún dato inválido  o vacío','Error')

else
figure('Name','Velocidad - Torque','NumberTitle','off','Color',[0.16 0.17 0.22]);    
cla('reset')
e0=[curva(1),curva(2),curva(3),curva(4),curva(5),curva(6),curva(7),curva(8)];
if0=[curva(9),curva(10),curva(11),curva(12),curva(13),curva(14),curva(15),curva(16)];
ea0=interp1(if0,e0,vi/rf,'spline');
%Configuracion Shut
i_f=vi/rf;
is0=i_f*20; %se asume is inicial veinte veces mayor a if
is=(is0:is0/8:5*is0);   % se crea el vector para is, empezando a variar segun el valor de if hasta 5 veces el valor is inicial
ia=(is-i_f);
ea=vi-ia*ra-vesc;
nsh=ea*n0/ea0;
tsh=ea.*(ia./(nsh*(pi/30)));
%Configuracion Serie
is0s=(vi-vesc)/(27.5*(rserie+ra));
ias2=(is0:is0s/8:5*is0s);
ias=is;
eas=vi-ias2*(ra+rserie)-vesc;
ea0s=interp1(30*if0,1*e0,ias2,'spline');
ns=(eas*n0)./ea0s;
ts=(30*eas.*ias2)./(ns*pi);
%t2=plot(handles.plttorque,ts,ns,'red','LineWidth',2);   grid on; hold on;
%e2=plot(handles.plteficiencia,ias,efiserie,'red','LineWidth',2); grid on; hold on;

%compuentos paralelo
i_f=vi/rf;
is0=i_f*20; %se asume is inicial veinte veces mayor a if
is=(is0:is0/8:5*is0);   % se crea el vector para is, empezando a variar segun el valor de if hasta 5 veces el valor is inicial
iac=is-i_f;
eac=vi-iac*(rserie+ra)-vesc;
ea0=interp1(if0,e0,i_f,'spline');
nc=eac*n0/ea0;
tc=eac.*(iac./(nc*(pi/30)));
ejes=axes('XColor','yellow','YColor','yellow');
hold(ejes,'all');
plot(tsh,nsh,'blue',ts,ns,'red',tc,nc,'green','LineWidth',2);   grid on; hold on;
legend('Shunt','Serie','Compuesto');

title('Velocidad-Torque','FontName','Arial','FontSize', 14,'FontWeight','bold','Color','yellow');
xlabel('m','FontName','Arial','FontSize', 14,'Color','yellow');
ylabel('Newtons','FontName','Arial','FontSize', 14,'Color','yellow'); 

end
