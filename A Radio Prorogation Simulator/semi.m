
function varargout = semi(varargin)
% SEMI MATLAB code for semi.fig
%      SEMI, by itself, creates a new SEMI or raises the existing
%      singleton*.
%
%      H = SEMI returns the handle to a new SEMI or the handle to
%      the existing singleton*.
%
%      SEMI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEMI.M with the given input arguments.
%
%      SEMI('Property','Value',...) creates a new SEMI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before semi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to semi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help semi

% Last Modified by GUIDE v2.5 09-Apr-2023 22:36:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @semi_OpeningFcn, ...
                   'gui_OutputFcn',  @semi_OutputFcn, ...
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


% --- Executes just before semi is made visible.
function semi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to semi (see VARARGIN)

% Choose default command line output for semi
handles.output = hObject;
set(handles.Output_1,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_2,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_3,'BackgroundColor',[0.65 0.65 0.65])
set(handles.About,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Home,'BackgroundColor',[0.9 0.9 0.9])
set(handles.Parameters,'visible','on')
set(handles.Mesurements,'visible','on')
set(handles.part2_panel,'visible','off')
set(handles.Output1Panel,'visible','off')
set(handles.Output2Panel,'visible','off')
set(handles.Output3Panel,'visible','off')
%set(handles.uipanel16,'visible','off') 
 %set(handles.uipanel17,'visible','off')
 % set(handles.popupmenu9,'visible','off') 
  set(handles.uipanel18,'visible','off')
  set(handles.Read_Distance,'visible','on')
set(handles.pushbutton11,'visible','on')
set(handles.edit8,'visible','on')
%set(handles.edit8,'visible','off')



set(handles.text30,'visible','off')
set(handles.pushbutton17,'visible','off')
set(handles.edit20,'visible','off')

   set(handles.uitable7,'visible','off')       
set(handles.uitable5,'visible','on')

   set(handles.edit51,'visible','off')  
   
   set(handles.text61,'visible','off')  
%set(handles.text92,'visible','on')
%set(handles.text93,'visible','off')
%set(handles.text94,'visible','off')


set(handles.checkbox3,'visible','off')  
%set(handles.edit74,'visible','off') 
%set(handles.text97,'visible','off') 
%set(handles.popupmenu6,'visible','off')
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes semi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = semi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Home.
function Home_Callback(hObject, eventdata, handles)
% hObject    handle to Home (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Output_1,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_2,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_3,'BackgroundColor',[0.65 0.65 0.65])
set(handles.About,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Home,'BackgroundColor',[0.9 0.9 0.9])
set(handles.Parameters,'visible','on')
set(handles.Mesurements,'visible','on')
set(handles.Output1Panel,'visible','off')
set(handles.Output2Panel,'visible','off')
set(handles.Output3Panel,'visible','off')
set(handles.uipanel18,'visible','off')




%-------------------------------------------------------------------------%

% --- Executes on button press in Output_1.
function Output_1_Callback(hObject, eventdata, handles)
% hObject    handle to Output_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Home,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_2,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_3,'BackgroundColor',[0.65 0.65 0.65])
set(handles.About,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_1,'BackgroundColor',[0.9 0.9 0.9])
set(handles.Parameters,'visible','off')
set(handles.Mesurements,'visible','off')
set(handles.Output1Panel,'visible','on')
set(handles.Output2Panel,'visible','off')
set(handles.Output3Panel,'visible','off')
set(handles.uipanel18,'visible','off')

% --- Executes on button press in Output_2.
function Output_2_Callback(hObject, eventdata, handles)
% hObject    handle to Output_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Output_1,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_2,'BackgroundColor',[0.9 0.9 0.9])
set(handles.Output_3,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Home,'BackgroundColor',[0.65 0.65 0.65])
set(handles.About,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Parameters,'visible','off')
set(handles.Mesurements,'visible','off')
set(handles.Output1Panel,'visible','off')
set(handles.Output2Panel,'visible','on')
set(handles.Output3Panel,'visible','off')
set(handles.uipanel18,'visible','off')
           %set(handles.es_n4,'string',num2str(slope4));
           %set(handles.ac_n4,'string',num2str((1-(n4-slope4)./n4).*100));
d0=get(handles.d0,'string');
d0=str2num(d0);

op_freq=get(handles.f,'string');
op_freq=str2num(op_freq);
lambda=(3*10^8)/op_freq ;
standard_devision=get(handles.standard_devision,'string');
standard_deviation=str2num(standard_devision);

no_sampels=get(handles.no_sampels,'string');
no_sampels=str2num(no_sampels);
s = RandStream('mlfg6331_64');
 desired_no_samples=str2num(get(handles.edit185,'string')); 
 no_samples1=desired_no_samples;
global distance_vector;
distance_vector=distance_vector;
%  address=get(handles.edit20,'string');
% num=xlsread(address);
% distance_vector=num(:,1);
%distance_vector=linspace(100,500,no_sampels)';

n1=str2num(get(handles.n1_Output,'string'));
n2=str2num(get(handles.path_loss_n2,'string'));
n3=str2num(get(handles.path_loss_n3,'string'));
n4=str2num(get(handles.path_loss_n4,'string'));
n=[n1 ; n2 ; n3 ; n4] ;
J = sym('J', [length(n),1]) ;
ode = sym('ode', [length(n),1]) ;
es_n = sym('es_n', [length(n),1]) ;
syms equ %(5,3)
equ = sym('equ', [no_sampels,length(n)]) ;
global all_sampels
lambda=(3*10^8)./op_freq ;
axes(handles.axes9);%%%n1
           
            for k=1:4
            for w=1:no_sampels
                
            
            %
val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
        mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
        
         case'Excel file'
            
              mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
end
             
            %
            end
            for w=1:no_sampels
                P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
            end


            for w=1:no_sampels
              equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
            end

            J(k,1)=(sum(equ(:,k)))./no_sampels ;
            ode(k,1)=diff(J(k,1),es_n(k,1)) ;
            n_star(k,1) = round(double(solve(ode(k,1))),4);

%             for w=1:no_sampels
%                variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
%             end
% 
%             variance_es(k,1)=mean(variance_start(:,k)) ;
%             standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


            for w=1:no_sampels
              Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;

            end
     for w=1:length(distance_vector)
    for j=1:no_samples1
%     variance_start(i,k)=(P_measured_avg(i,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(i,1)./d0)).^2 ;
      variance_start(w,j,k) = (Path_loss_model(w,k)-P_measured(w,j,k)).^2 ;
    end
    variance_es(w,k)=mean(variance_start(w,:,k)) ;
    standard_deviation_es(w,k) = sqrt(variance_es(w,k)) ;
            end
standard_deviation_es_avg(k)=mean(standard_deviation_es(:,k));       

               accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
            end

            for z=1:desired_no_samples
                h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
                                                               'MarkerFaceColor',[0.3010 0.7450 0.9330],...
                                                          'LineWidth',1.5);
                hold on
                %h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[1 0 1])
                %hold on
                %h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',[0 1 1])
                %hold on
                %h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 0 1])
                %hold on
            end
            h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
            hold on
            %h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerEdgeColor',[0 1 0])
            %hold on
            %h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerEdgeColor',[0 0 1])
            %hold on
            %h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerEdgeColor',[0 0 1])
            %hold on
            h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
            %hold on
            %h10=plot(distance_vector,Path_loss_model(:,2),'LineWidth',2) ;
            %hold on
            %h11=plot(distance_vector,Path_loss_model(:,3),'LineWidth',2) ;
            %hold on
            %h12=plot(distance_vector,Path_loss_model(:,4),'LineWidth',2) ;
            grid on
            legend([h1(1),h5(1),h9],'Path loss measured (n1)','Path loss measured avg (n1)','Path loss model (n1)') ;
            title ('Path loss vs  Tx-Rx separation')
            ylabel ('Path loss (dB)')
            xlabel ('Tx-Rx separation (m)')
            hold off 
            
            
             set(handles.edit86,'string',num2str(standard_deviation_es_avg(1)));
            set(handles.es_n1,'string',num2str(n_star(1,1)));
           set(handles.ac_n1,'string',num2str(accuracy(1,1)));
            
%%%n2   
   axes(handles.axes10);
                    for k=1:4

            for w=1:no_sampels
            
            % mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
        mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
         case'Excel file'
        mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k)=all_sampels(w,:,k);
             
end
%P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
            end
            for w=1:no_sampels
                P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
            end


            for w=1:no_sampels
              equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
            end

            J(k,1)=(sum(equ(:,k)))./no_sampels ;
            ode(k,1)=diff(J(k,1),es_n(k,1)) ;
            n_star(k,1) = round(double(solve(ode(k,1))),4);

%             for w=1:no_sampels
%                variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
%             end
% 
%             variance_es(k,1)=mean(variance_start(:,k)) ;
%             standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


            for w=1:no_sampels 
              Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;

            end
            
            
            
     for w=1:length(distance_vector)
    for j=1:no_samples1
%     variance_start(i,k)=(P_measured_avg(i,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(i,1)./d0)).^2 ;
      variance_start(w,j,k) = (Path_loss_model(w,k)-P_measured(w,j,k)).^2 ;
    end
    variance_es(w,k)=mean(variance_start(w,:,k)) ;
    standard_deviation_es(w,k) = sqrt(variance_es(w,k)) ;
            end
standard_deviation_es_avg(k)=mean(standard_deviation_es(:,k));  

               accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
            end

            for z=1:desired_no_samples
            %     h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
            %                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
            %                                               'LineWidth',1.5);
                %hold on
                h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
                                                               'MarkerFaceColor',[0.9290 0.6940 0.1250],...
                                                          'LineWidth',1.5);
                hold on
                %h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',[0 1 1])
                %hold on
                %h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 0 1])
                %hold on
            end
            %h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
            %hold on
            h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
            hold on
            %h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
            %hold on
            %h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
            %hold on
            %h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
            %hold on
            h10=plot(distance_vector,Path_loss_model(:,2),'--g','LineWidth',1.4) ;
            %hold on
            %h11=plot(distance_vector,Path_loss_model(:,3),'LineWidth',2) ;
            %hold on
            %h12=plot(distance_vector,Path_loss_model(:,4),'LineWidth',2) ;
            grid on
            legend([h2(1),h6(1),h10],'Pathloss measured (n2)','Pathloss measured avg (n2)','Path loss model (n2)') ;
            title ('Path loss vs  Tx-Rx separation')
            ylabel ('Path loss (dB)')
            xlabel ('Tx-Rx separation (m)')
            hold off
             set(handles.edit87,'string',num2str(standard_deviation_es_avg(2)));
            set(handles.es_n2,'string',num2str(n_star(2,1)));
           set(handles.ac_n2,'string',num2str(accuracy(2,1)));


%%%n3
axes(handles.axes11);
                    for k=1:4

            for w=1:no_sampels
             %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
            %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
        mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
         case'Excel file'
                mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
             
end
%P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
            end
            for w=1:no_sampels
                P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
            end


            for w=1:no_sampels
              equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
            end

            J(k,1)=(sum(equ(:,k)))./no_sampels ;
            ode(k,1)=diff(J(k,1),es_n(k,1)) ;
            n_star(k,1) = round(double(solve(ode(k,1))),4);

%             for w=1:no_sampels
%                variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
%             end
% 
%             variance_es(k,1)=mean(variance_start(:,k)) ;
%             standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


            for w=1:no_sampels 
              Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;

            end
            
            
            
     for w=1:length(distance_vector)
    for j=1:no_samples1
%     variance_start(i,k)=(P_measured_avg(i,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(i,1)./d0)).^2 ;
      variance_start(w,j,k) = (Path_loss_model(w,k)-P_measured(w,j,k)).^2 ;
    end
    variance_es(w,k)=mean(variance_start(w,:,k)) ;
    standard_deviation_es(w,k) = sqrt(variance_es(w,k)) ;
            end
standard_deviation_es_avg(k)=mean(standard_deviation_es(:,k));  

               accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
            end
        
        for z=1:desired_no_samples
            %     h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
            %                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
            %                                               'LineWidth',1.5);
            %hold on
            %     h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
            %                                                    'MarkerFaceColor',[0.9290 0.6940 0.1250],...
            %                                               'LineWidth',1.5);
            %hold on
            h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',	[0 0 1],...
                'MarkerFaceColor',[0.4660 0.6740 0.1880],...
                'LineWidth',1.5);
            hold on
            %h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 0 1])
            %hold on
        end
        %h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
        %hold on
        %h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
        %hold on
        h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
        hold on
        %h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
        %hold on
        %h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
        %hold on
        %h10=plot(distance_vector,Path_loss_model(:,2),'--b','LineWidth',1.4) ;
        %hold on
        h11=plot(distance_vector,Path_loss_model(:,3),'--k','LineWidth',2) ;
        %hold on
        %h12=plot(distance_vector,Path_loss_model(:,4),'LineWidth',2) ;
        grid on
        legend([h3(1),h7(1),h11],'Pathloss measured (n3)','Pathloss measured avg (n3)','Path loss model (n3)') ;
            hold off
        title ('Path loss vs  Tx-Rx separation')
        ylabel ('Path loss (dB)')
        xlabel ('Tx-Rx separation (m)')
         set(handles.edit88,'string',num2str(standard_deviation_es_avg(3)));
           set(handles.es_n3,'string',num2str(n_star(3,1)));
           set(handles.ac_n3,'string',num2str(accuracy(3,1)));

%%%n4
axes(handles.axes12);

for k=1:4

for w=1:no_sampels
 mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
        mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
         case'Excel file'
        mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k)=all_sampels(w,:,k);
             
end
end
for w=1:no_sampels
    P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
end


for w=1:no_sampels 
  equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

J(k,1)=(sum(equ(:,k)))./no_sampels ;
ode(k,1)=diff(J(k,1),es_n(k,1)) ;
n_star(k,1) = round(double(solve(ode(k,1))),4);

for w=1:no_sampels
   variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

variance_es(k,1)=mean(variance_start(:,k)) ;
standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


for w=1:no_sampels 
  Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;
 
end
     for w=1:length(distance_vector)
    for j=1:no_samples1
%     variance_start(i,k)=(P_measured_avg(i,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(i,1)./d0)).^2 ;
      variance_start(w,j,k) = (Path_loss_model(w,k)-P_measured(w,j,k)).^2 ;
    end
    variance_es(w,k)=mean(variance_start(w,:,k)) ;
    standard_deviation_es(w,k) = sqrt(variance_es(w,k)) ;
            end
standard_deviation_es_avg(k)=mean(standard_deviation_es(:,k));  

   accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
end

for z=1:desired_no_samples
%     h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
%                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
%                                               'LineWidth',1.5);
  %  hold on
%     h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
%                                                    'MarkerFaceColor',[0.9290 0.6940 0.1250],...
%                                               'LineWidth',1.5);
  %  hold on
%     h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',	[0 0 1],...
%                                                    'MarkerFaceColor',[0.4660 0.6740 0.1880],...
%                                               'LineWidth',1.5); 
    %hold on
            h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[0 1 1],...
                                                           'MarkerFaceColor',[0 0.4470 0.7410],...
                                                         'LineWidth',1.5); 
    hold on
end
%h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
%hold on
%h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
%hold on
%h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
%hold on
h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
hold on
%h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
%hold on
%h10=plot(distance_vector,Path_loss_model(:,2),'--b','LineWidth',1.4) ;
%hold on
%h11=plot(distance_vector,Path_loss_model(:,3),'--k','LineWidth',2) ;
%hold on
h12=plot(distance_vector,Path_loss_model(:,4),'--c','LineWidth',2) ;
grid on
legend([h4(1),h8(1),h12],'Pathloss measured (n4)','Pathloss measured avg (n4)','Path loss model (n4)') ;
title ('Path loss vs  Tx-Rx separation')
ylabel ('Path loss (dB)')
xlabel ('Tx-Rx separation (m)')
hold off
 set(handles.edit89,'string',num2str(standard_deviation_es_avg(4)));
            set(handles.es_n4,'string',num2str(n_star(4,1)));
           set(handles.ac_n4,'string',num2str(accuracy(4,1)));











% --- Executes on button press in Output_3.
function Output_3_Callback(hObject, eventdata, handles)
% hObject    handle to Output_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Home,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_1,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_2,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_3,'BackgroundColor',[0.9 0.9 0.9])
set(handles.About,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Parameters,'visible','off')
set(handles.Mesurements,'visible','off')
set(handles.Output1Panel,'visible','off')
set(handles.Output2Panel,'visible','off')
set(handles.Output3Panel,'visible','on')
set(handles.uipanel18,'visible','off')

% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
set(handles.Read_Distance,'visible','on')
set(handles.pushbutton11,'visible','on')
set(handles.edit8,'visible','on')
%set(handles.uitable7,'visible','on')

set(handles.text30,'visible','off')
set(handles.pushbutton17,'visible','off')
set(handles.edit20,'visible','off')
% set(handles.uitable5,'visible','off')
% set(handles.text92,'visible','off')


 case'Excel file'
     
   set(handles.Read_Distance,'visible','off')
set(handles.pushbutton11,'visible','off')
set(handles.edit8,'visible','off')
%set(handles.uitable7,'visible','off')

set(handles.text30,'visible','on')
set(handles.pushbutton17,'visible','on')
set(handles.edit20,'visible','on')


%set(handles.edit74,'visible','off') 
%set(handles.text97,'visible','off') 
%set(handles.uitable5,'visible','on')
%set(handles.text92,'visible','on')

%  a=get(handles.no_sampels,'string');
%  m=C:\Users\computop\OneDrive\Desktop\wireless_prj\ex.xlsx
% [num]=xlsread('m')
% x=raw(:,1)
% distance_vector=num(:,1)
% Pr_vector=num(:,2)

end

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in part1menu.
function part1menu_Callback(hObject, eventdata, handles)
% hObject    handle to part1menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns part1menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from part1menu
val=get(handles.part1menu,'value');
str=get(handles.part1menu,'string');
switch str{val}
    case'Part 1'
         set(handles.pushbutton12,'visible','on') 
         %set(handles.t1,'visible','on')
         set(handles.text8,'visible','on')  
         set(handles.no_sampels,'visible','on')  
         set(handles.m1,'visible','on')  
        set(handles.Parameters,'visible','on')
        set(handles.part2_panel,'visible','off')
       % set(handles.uipanel16,'visible','off')
        % set(handles.uipanel17,'visible','off')
         % set(handles.popupmenu9,'visible','off')
   set(handles.uitable7,'visible','off')       
set(handles.uitable5,'visible','on')
%set(handles.text92,'visible','on')
  %set(handles.text93,'visible','off')
%set(handles.text94,'visible','off')  

set(handles.text111,'visible','on')  
set(handles.uitable9,'visible','off') 
set(handles.text61,'visible','off')
set(handles.edit51,'visible','off') 
set(handles.checkbox3,'visible','off')  
%set(handles.edit74,'visible','off') 
%set(handles.text97,'visible','off') 
    case'Part 2'  
        set(handles.text111,'visible','off')  
         set(handles.pushbutton12,'visible','off') 
         %set(handles.t1,'visible','off')
         set(handles.text8,'visible','on')  
         set(handles.no_sampels,'visible','off')  
         set(handles.m1,'visible','off') 
        % set(handles.uipanel16,'visible','off')
        % set(handles.popupmenu9,'visible','on') 
         set(handles.part2_panel,'visible','on')
   set(handles.uitable7,'visible','on')       
set(handles.uitable5,'visible','off')
%set(handles.text92,'visible','off')
%set(handles.text93,'visible','on')
%set(handles.text94,'visible','on')
set(handles.edit51,'visible','on')

set(handles.text61,'visible','on')
set(handles.checkbox3,'visible','on') 

%set(handles.edit74,'visible','on') 
%set(handles.text97,'visible','on') 
 
set(handles.uitable9,'visible','on')        
end



% --- Executes during object creation, after setting all properties.
function part1menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to part1menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d0_Callback(hObject, eventdata, handles)
% hObject    handle to d0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d0 as text
%        str2double(get(hObject,'String')) returns contents of d0 as a double


% --- Executes during object creation, after setting all properties.
function d0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_Callback(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f as text
%        str2double(get(hObject,'String')) returns contents of f as a double


% --- Executes during object creation, after setting all properties.
function f_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
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



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function [i]=checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.checkbox1,'value')==1
global i;
i=0;
else
  set(handles.uitable5, 'Data', {})  
end
% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;
global ii;
global distance_vector;
global distance_vector_2;
global pr_2;
no_sampels=get(handles.no_sampels,'string');
no_sampels=str2num(no_sampels);

d0=get(handles.d0,'string');
d0=str2num(d0);
if get(handles.checkbox3,'value')==1
     ii=ii+1;
 distance2=str2num(get(handles.edit8,'string'));
 
 %pr2=str2num(get(handles.edit74,'string'));
 if (distance2<d0)
     msgbox(' Ooops you should enter distance greater than or equal Reference distance  ','Error Massage ','error')
     ii=ii-1;
 else
       if(ii<=no_sampels)
    distance_vector_2(ii,1)=distance2;
 %pr_2(ii,1)=pr2;
  cell(ii,1)= distance2;
  CellData = get(handles.uitable7,'Data');
CellData{ii,1} = distance2 ;
    str = 'Distance';
     Z = textscan(str,'%s','Delimiter',' ')';
    set(handles.uitable7,'columnname',Z{:}');
set(handles.uitable7,'Data',CellData);
%CellData{ii,2} = pr2 ;
%set(handles.uitable7,'Data',CellData);
       end
 end


% set(handles.uitable8,'Data',distance_vector_2);
 
else
i=i+1;

no_sampels=get(handles.no_sampels,'string');
no_sampels=str2num(no_sampels);
 distance=str2num(get(handles.edit8,'string'));
  if (distance<d0)
     msgbox(' Ooops you should enter distance greater than or equal Reference distance  ','Error Massage ','error')
     i=i-1;
 else
 cell(i,1)=distance;

     if(i<=no_sampels)
    distance_vector(i,1)=distance;
    CellData = get(handles.uitable5,'Data');
    CellData{i,1} = distance;
    str = 'Distance';
 Z = textscan(str,'%s','Delimiter',' ')';
    set(handles.uitable5,'columnname',Z{:}');
    set(handles.uitable5,'Data',CellData);
    end
  end
end
distance_vector
distance_vector_2

%------------------------------------------------------------------------%

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Home,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_2,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_3,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_1,'BackgroundColor',[0.9 0.9 0.9])
set(handles.Parameters,'visible','off')
set(handles.Mesurements,'visible','off')
set(handles.Output1Panel,'visible','on')
set(handles.Output2Panel,'visible','off')
set(handles.Output3Panel,'visible','off')

d0=get(handles.d0,'string');
d0=str2num(d0);

op_freq=get(handles.f,'string');
op_freq=str2num(op_freq);

% n1=get(handles.path_loss_n1,'string');
% n1=str2num(n1);

standard_devision=get(handles.standard_devision,'string');
standard_devision=str2num(standard_devision);

no_sampels=get(handles.no_sampels,'string');
no_sampels=str2num(no_sampels);
global distance_vector;
distance_vector=distance_vector;
%  address=get(handles.edit20,'string');
% num=xlsread(address);
% distance_vector=num(:,1);
%distance_vector=linspace(d0,500,no_sampels);

% Population=-80:-60;
% P_0=randsample(Population,50,true);
% %%%%
% Path_loss1=zeros(50,5);
% for j=1:1:5
%    for i=1:1:50 
%   Path_loss1(i,j)=P_0(i)+(10*n1*log10(distance_vector(j)./d0))-standard_devision; 
%  %Path_loss(i,j)=P_0(i)-(10*n1*log10(distance_vector(j)./d0))+standard_devision;
%    end 
% end
% axes(handles.op1figure);
%  h1=scatter(10.*log10(distance_vector),Path_loss1,'MarkerEdgeColor',[1 0 0],...
%                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
%                                               'LineWidth',1.5);
%  p1 = polyfit(10.*log10(distance_vector),Path_loss1(3,:),1);
% 
%  f1 = polyval(p1,10.*log10(distance_vector));
%  x = (10.*log10(distance_vector(1))):0.25:(10.*log10(distance_vector(5))); 
%  x1 = 10.*log10(distance_vector(1));
%  y1 = mean(Path_loss1(:,1)); % Specify your starting x
%   slope1 = p1(1);
%  y_1 = slope1*(x - x1) + y1;
%  hold on
%  h4=plot(x,y_1,'--r','LineWidth',1.4);
%  
%   legend([h1(1),h4],'Scatered data n1','linear fit n1') 
% hold off
%  grid on
% title ('The desired predicted sampels vs Tx-Rx separation')
% xlabel ('Tx-Rx separation  (dB)')
% ylabel ('Path loss   (dB)')


% ans=num2str((d0+op_freq));
% set(handles.no_sampels,'string',ans);

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function path_loss_n2_Callback(hObject, eventdata, handles)
% hObject    handle to path_loss_n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of path_loss_n2 as text
%        str2double(get(hObject,'String')) returns contents of path_loss_n2 as a double


% --- Executes during object creation, after setting all properties.
function path_loss_n2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to path_loss_n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function path_loss_n3_Callback(hObject, eventdata, handles)
% hObject    handle to path_loss_n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of path_loss_n3 as text
%        str2double(get(hObject,'String')) returns contents of path_loss_n3 as a double


% --- Executes during object creation, after setting all properties.
function path_loss_n3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to path_loss_n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function path_loss_n4_Callback(hObject, eventdata, handles)
% hObject    handle to path_loss_n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of path_loss_n4 as text
%        str2double(get(hObject,'String')) returns contents of path_loss_n4 as a double


% --- Executes during object creation, after setting all properties.
function path_loss_n4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to path_loss_n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global distance_vector;
global distance_vector_2;
global  all_sampels;

val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');
switch str{val}
  case'Manually'
 distance_vector= distance_vector;
      
 case'Excel file'
 
address=get(handles.edit20,'string');
[num,txt,raw]=xlsread(address);
distance_vector=num(1:5,1);
distance_vector_2=num(1:5,1);
total_sampels=str2num(get(handles.edit185,'string'));
for t=1:4
for w=1:str2num(get(handles.no_sampels,'string'));
   
all_sampels(w,:,t)=num(w+(5+1)*(t-1),2:2+total_sampels-1);
%all_sampels(w,:,t)=num(w+(5+1)*(t-1),2:end);
end
end

set(handles.uitable5,'Data',num(1:5,1:end));
set(handles.uitable5,'columnname',txt(1,2:end));
set(handles.uitable5,'rowname',txt(2:7,1));

set(handles.uitable7,'Data',num(1:5,1:end));
set(handles.uitable7,'columnname',txt(1,2:end));
set(handles.uitable7,'rowname',txt(2:7,1));

%set(handles.uitable5,'data',distance_vector);

%set(handles.uitable7,'data',num);
end


function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox4.
function listbox4_Callback(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox4


% --- Executes during object creation, after setting all properties.
function listbox4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes18);
h=get(handles.list,'value')
switch h
    case 1
         e=10;
    case 2
        e=20;
    case 3
         e=30;
    case 4
         e=40;
    case 5
         e=50;
    case 6
         e=60;
    case 7
         e=70;
    case 8
         e=80;
    case 9
         e=90;
    case 10
         e=100;
    case 11
         e=150;
    case 12
         e=200;    
        
end
d0=get(handles.d0,'string');
d0=str2num(d0);

op_freq=get(handles.f,'string');
op_freq=str2num(op_freq);

standard_deviation=get(handles.standard_devision,'string');
standard_deviation=str2num(standard_deviation);
s = RandStream('mlfg6331_64');
n1=get(handles.n1_Output,'string');
n2=str2num(n1);

global distance_vector;
distance_vector=distance_vector;
%no_sampels=e;



%  address=get(handles.edit20,'string');
% num=xlsread(address);
% distance_vector=num(:,1);
%distance_vector=linspace(100,500,no_sampels)';


%---------------------for accuracy plot--------------------------------------%
syms J_for_acc
syms ode_for_acc
syms es_n_for_acc
equ_for_acc = sym('equ_for_acc', [length(distance_vector),1]) ;
%P_0_measured_for_acc=randsample(s,Population,100,true);   

for no_of_samples2=1:e
     
P_measured_for_acc= normrnd(50,standard_deviation,[length(distance_vector),no_of_samples2]) ;
    
% for k=1:no_of_samples
%  for i=1:5    
%    P_measured_for_acc(i,k)=P_measured_for_acc(1,k)+10.*n2.*log10(distance_vector(i,1)./d0) ;
%    %+standard_deviation ; 
%  end
%end

% for i=1:5
%     P_measured(i,k)=randsample(s,Population,50,true);
% end

for w=1:length(distance_vector)
    P_measured_avg_for_acc(w,1)=mean(P_measured_for_acc(w,:)) ;
end


for w=1:length(distance_vector) 
  equ_for_acc(w,1)=(P_measured_avg_for_acc(w,1)-P_measured_avg_for_acc(1,1)-10.*es_n_for_acc.*log10(distance_vector(w,1)./d0)).^2 ;
end


J_for_acc=(sum(equ_for_acc(:,1)))./length(distance_vector) ;



ode_for_acc=diff(J_for_acc,es_n_for_acc) ;
n_star_for_acc = round(double(solve(ode_for_acc)),4);


%t1(u)=mean(estimated_vector); 

for w=1:length(distance_vector)
   variance_start_for_acc(w,1)=(P_measured_avg_for_acc(w,1)-P_measured_avg_for_acc(1,1)-10.*n_star_for_acc.*log10(distance_vector(w,1)./d0)).^2 ;
end

variance_es_for_acc=mean(variance_start_for_acc(:,1)) ;
standard_deviation_es_for_acc(no_of_samples2) = sqrt(variance_es_for_acc) ;


for w=1:length(distance_vector)
  Path_loss_model_for_acc(w,1)=P_measured_avg_for_acc(1,1)+10.*n_star_for_acc.*log10(distance_vector(w,1)./d0) ;
  %+standard_deviation_es_for_acc ;
end

% for k=1:1:no_samples
%     for i=1:50
%        Path_loss_model(i,k)=P_0(i)+(10*n1*log10(distance_vector(k)./d0))+standard_deviation;
%      % Path_loss(i,j)=P_0(i)-(10*n1*log(distance_vector(j)./d0))+standard_devision;
%     end
% end

% for i=1:5
%   P_r(i)=-10.*log(distance_vector(i)./d0);  
% end


% for i=1:5
   accuracy_for_plot(1,no_of_samples2)=100-((abs(sum((Path_loss_model_for_acc(:,1)-P_measured_avg_for_acc(:,1))./(P_measured_avg_for_acc(:,1)))))*100) ;
%    100-(abs((-t1(u)+n1)./n1))*100;
 %end
 
 vars = {'P_measured_for_acc','P_measured_avg_for_acc', ...
      'equ_for_acc','variance_start_for_acc','Path_loss_model_for_acc'};
clear(vars{:})
end
%-----------------------------------------------------------%

no_of_samples2 =transpose(1:e) ;
accuracy_for_plot = transpose(accuracy_for_plot) ;
plot(no_of_samples2,accuracy_for_plot,'LineWidth',2)
grid on
title ('Accuracy vs Number of samples')
ylabel ('Accuracy  %')
xlabel ('Number of Samples ')





% --- Executes on selection change in list.
function list_Callback(hObject, eventdata, handles)
% hObject    handle to list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns list contents as cell array
%        contents{get(hObject,'Value')} returns selected item from list


% --- Executes during object creation, after setting all properties.
function list_CreateFcn(hObject, eventdata, handles)
% hObject    handle to list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ac_n2_Callback(hObject, eventdata, handles)
% hObject    handle to ac_n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ac_n2 as text
%        str2double(get(hObject,'String')) returns contents of ac_n2 as a double


% --- Executes during object creation, after setting all properties.
function ac_n2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ac_n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function es_n2_Callback(hObject, eventdata, handles)
% hObject    handle to es_n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of es_n2 as text
%        str2double(get(hObject,'String')) returns contents of es_n2 as a double


% --- Executes during object creation, after setting all properties.
function es_n2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to es_n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function path_loss_n1_Callback(hObject, eventdata, handles)
% hObject    handle to path_loss_n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of path_loss_n1 as text
%        str2double(get(hObject,'String')) returns contents of path_loss_n1 as a double


% --- Executes during object creation, after setting all properties.
function path_loss_n1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to path_loss_n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigma_Callback(hObject, eventdata, handles)
% hObject    handle to part1menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of part1menu as text
%        str2double(get(hObject,'String')) returns contents of part1menu as a double


% --- Executes during object creation, after setting all properties.
function sigma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to part1menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no_sampels_Callback(hObject, eventdata, handles)
% hObject    handle to no_sampels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no_sampels as text
%        str2double(get(hObject,'String')) returns contents of no_sampels as a double


% --- Executes during object creation, after setting all properties.
function no_sampels_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no_sampels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Menu2.
function Menu2_Callback(hObject, eventdata, handles)
% hObject    handle to Menu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: contents = cellstr(get(hObject,'String')) returns Menu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Menu2
d0=get(handles.d0,'string');
d0=str2num(d0);

op_freq=get(handles.f,'string');
op_freq=str2num(op_freq);
lambda=(3*10^8)/op_freq ;
 desired_no_samples=str2num(get(handles.edit185,'string')); 
standard_devision=get(handles.standard_devision,'string');
standard_deviation=str2num(standard_devision);

no_sampels=get(handles.no_sampels,'string');
no_sampels=str2num(no_sampels);
s = RandStream('mlfg6331_64');
%  address=get(handles.edit20,'string');
% num=xlsread(address);
% distance_vector=num(:,1);
global distance_vector;
distance_vector=distance_vector;

%distance_vector=linspace(100,500,no_sampels)';

n1=str2num(get(handles.n1_Output,'string'));
n2=str2num(get(handles.path_loss_n2,'string'));
n3=str2num(get(handles.path_loss_n3,'string'));
n4=str2num(get(handles.path_loss_n4,'string'));

J = sym('J', [4,1]) ;
ode = sym('ode', [4,1]) ;
es_n = sym('es_n', [4,1]) ;
syms equ %(5,3)
equ = sym('equ', [no_sampels,4]) ;

n=[n1 ; n2 ; n3 ; n4] ;
P_measured=zeros(no_sampels,desired_no_samples,length(n)) ;
val=get(handles.Menu2,'value')
str=get(handles.Menu2,'string')
 
global all_sampels
axes(handles.op1figure);
%---------------------------------------------------------------%

switch str{val}
    case 'n1'
            for k=1:4

            for w=1:no_sampels
             %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
            %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
        mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
        
         case'Excel file'
        mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k)=all_sampels(w,:,k);
end
            end
            for w=1:no_sampels
                P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
            end


            for w=1:no_sampels 
              equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
            end

            J(k,1)=(sum(equ(:,k)))./no_sampels ;
            ode(k,1)=diff(J(k,1),es_n(k,1)) ;
            n_star(k,1) = round(double(solve(ode(k,1))),4);

            for w=1:no_sampels
               variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
            end

            variance_es(k,1)=mean(variance_start(:,k)) ;
            standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


            for w=1:no_sampels
              Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;

            end
               accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
            end

            for z=1:desired_no_samples
                
                h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
                                                               'MarkerFaceColor',[0.3010 0.7450 0.9330],...
                                                          'LineWidth',1.5);
                                                      
                hold on
                %h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[1 0 1])
                %hold on
                %h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',[0 1 1])
                %hold on
                %h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 0 1])
                %hold on
            end
            h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
            hold on
            %h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerEdgeColor',[0 1 0])
            %hold on
            %h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerEdgeColor',[0 0 1])
            %hold on
            %h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerEdgeColor',[0 0 1])
            %hold on
            h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
            %hold on
            %h10=plot(distance_vector,Path_loss_model(:,2),'LineWidth',2) ;
            %hold on
            %h11=plot(distance_vector,Path_loss_model(:,3),'LineWidth',2) ;
            %hold on
            %h12=plot(distance_vector,Path_loss_model(:,4),'LineWidth',2) ;
            grid on
            legend([h1(1),h5(1),h9],'Path loss measured (n1)','Path loss measured avg (n1)','Path loss model (n1)') ;
            title ('Path loss vs  Tx-Rx separation')
            ylabel ('Path loss (dB)')
            xlabel ('Tx-Rx separation (m)')
            hold off            
%------------------------------------------------------------------------------------------------------------------------------%
%------------------------------------------------------------------------------------------------------------------------------%
    case 'n2'
                    for k=1:4

            for w=1:no_sampels
             %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
             %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
            val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
        mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
        
         case'Excel file'
              mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
end
            end
            for w=1:no_sampels
                P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
            end


            for w=1:no_sampels
              equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
            end

            J(k,1)=(sum(equ(:,k)))./no_sampels ;
            ode(k,1)=diff(J(k,1),es_n(k,1)) ;
            n_star(k,1) = round(double(solve(ode(k,1))),4);

            for w=1:no_sampels
               variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
            end

            variance_es(k,1)=mean(variance_start(:,k)) ;
            standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


            for w=1:no_sampels 
              Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;

            end
               accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
            end

            for z=1:desired_no_samples
            %     h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
            %                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
            %                                               'LineWidth',1.5);
                %hold on
                h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
                                                               'MarkerFaceColor',[0.9290 0.6940 0.1250],...
                                                          'LineWidth',1.5);
                hold on
                %h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',[0 1 1])
                %hold on
                %h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 0 1])
                %hold on
            end
            %h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
            %hold on
            h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
            hold on
            %h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
            %hold on
            %h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
            %hold on
            %h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
            %hold on
            h10=plot(distance_vector,Path_loss_model(:,2),'--g','LineWidth',1.4) ;
            %hold on
            %h11=plot(distance_vector,Path_loss_model(:,3),'LineWidth',2) ;
            %hold on
            %h12=plot(distance_vector,Path_loss_model(:,4),'LineWidth',2) ;
            grid on
            legend([h2(1),h6(1),h10],'Pathloss measured (n2)','Pathloss measured avg (n2)','Path loss model (n2)') ;
            title ('Path loss vs  Tx-Rx separation')
            ylabel ('Path loss (dB)')
            xlabel ('Tx-Rx separation (m)')
            hold off
 %------------------------------------------------------------------------------------------------------------------------------%
%------------------------------------------------------------------------------------------------------------------------------%        
    case 'n3'
        for k=1:4
            
            for w=1:no_sampels
                %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
               %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
               val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
      mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
        
         case'Excel file'
                       
              mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
             
end
            end
            for w=1:no_sampels
                P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
            end
            
            
            for w=1:no_sampels
                equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
            end
            
            J(k,1)=(sum(equ(:,k)))./no_sampels;
            ode(k,1)=diff(J(k,1),es_n(k,1)) ;
            n_star(k,1) = round(double(solve(ode(k,1))),4);
            
            for w=1:no_sampels
                variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
            end
            
            variance_es(k,1)=mean(variance_start(:,k)) ;
            standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;
            
            
            for w=1:no_sampels
                Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;
                
            end
            accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
        end
        
        for z=1:desired_no_samples
            %     h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
            %                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
            %                                               'LineWidth',1.5);
            %hold on
            %     h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
            %                                                    'MarkerFaceColor',[0.9290 0.6940 0.1250],...
            %                                               'LineWidth',1.5);
            %hold on
            h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',	[0 0 1],...
                'MarkerFaceColor',[0.4660 0.6740 0.1880],...
                'LineWidth',1.5);
            hold on
            %h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 0 1])
            %hold on
        end
        %h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
        %hold on
        %h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
        %hold on
        h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
        hold on
        %h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
        %hold on
        %h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
        %hold on
        %h10=plot(distance_vector,Path_loss_model(:,2),'--b','LineWidth',1.4) ;
        %hold on
        h11=plot(distance_vector,Path_loss_model(:,3),'--k','LineWidth',2) ;
        %hold on
        %h12=plot(distance_vector,Path_loss_model(:,4),'LineWidth',2) ;
        grid on
        legend([h3(1),h7(1),h11],'Pathloss measured (n3)','Pathloss measured avg (n3)','Path loss model (n3)') ;
            hold off
        title ('Path loss vs  Tx-Rx separation')
        ylabel ('Path loss (dB)')
        xlabel ('Tx-Rx separation (m)')
   

  
 %------------------------------------------------------------------------------------------------------------------------------%
%------------------------------------------------------------------------------------------------------------------------------%   
    
    case 'n4'

        for k=1:4

        for w=1:no_sampels
         %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
         %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
       mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
        
         case'Excel file'
          mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
end
        end
        for w=1:no_sampels
            P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
        end


        for w=1:no_sampels 
          equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
        end

        J(k,1)=(sum(equ(:,k)))./no_sampels ;
        ode(k,1)=diff(J(k,1),es_n(k,1)) ;
        n_star(k,1) = round(double(solve(ode(k,1))),4);

        for w=1:no_sampels
           variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
        end

        variance_es(k,1)=mean(variance_start(:,k)) ;
        standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


        for w=1:no_sampels
          Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;

        end
           accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
        end

        for z=1:desired_no_samples
        %     h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
        %                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
        %                                               'LineWidth',1.5);
          %  hold on
        %     h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
        %                                                    'MarkerFaceColor',[0.9290 0.6940 0.1250],...
        %                                               'LineWidth',1.5);
          %  hold on
        %     h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',	[0 0 1],...
        %                                                    'MarkerFaceColor',[0.4660 0.6740 0.1880],...
        %                                               'LineWidth',1.5); 
            %hold on
            h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[0 1 1],...
                                                           'MarkerFaceColor',[0 0.4470 0.7410],...
                                                         'LineWidth',1.5); 
            hold on
        end
        %h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
        %hold on
        %h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
        %hold on
        %h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
        %hold on
        h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
        hold on
        %h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
        %hold on
        %h10=plot(distance_vector,Path_loss_model(:,2),'--b','LineWidth',1.4) ;
        %hold on
        %h11=plot(distance_vector,Path_loss_model(:,3),'--k','LineWidth',2) ;
        %hold on
        h12=plot(distance_vector,Path_loss_model(:,4),'--c','LineWidth',2) ;
        grid on
        legend([h4(1),h8(1),h12],'Pathloss measured (n4)','Pathloss measured avg (n4)','Path loss model (n4)') ;
        title ('Path loss vs  Tx-Rx separation')
        ylabel ('Path loss (dB)')
        xlabel ('Tx-Rx separation (m)')
        hold off   


%------------------------------------------------------------------------------------------------------------------------------%
%------------------------------------------------------------------------------------------------------------------------------%
    case 'n1 & n2'
for k=1:4

for w=1:no_sampels
 %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
        mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
        
         case'Excel file'
           mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
end
end
for w=1:no_sampels
    P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
end


for w=1:no_sampels 
  equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

J(k,1)=(sum(equ(:,k)))./no_sampels ;
ode(k,1)=diff(J(k,1),es_n(k,1)) ;
n_star(k,1) = round(double(solve(ode(k,1))),4);

for w=1:no_sampels
   variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

variance_es(k,1)=mean(variance_start(:,k)) ;
standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


for w=1:no_sampels 
  Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;
 
end
   accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
end

for z=1:desired_no_samples
    h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
                                                   'MarkerFaceColor',[0.3010 0.7450 0.9330],...
                                              'LineWidth',1.5);
   hold on
    h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
                                                   'MarkerFaceColor',[0.9290 0.6940 0.1250],...
                                              'LineWidth',1.5);
   hold on
%     h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',	[0 0 1],...
%                                                    'MarkerFaceColor',[0.4660 0.6740 0.1880],...
%                                               'LineWidth',1.5); 
    %hold on
%     h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 1 0],...
%                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
%                                                  'LineWidth',1.5); 
%     hold on
end
h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
hold on
h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
hold on
%h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
%hold on
% h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
% hold on
h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
hold on
h10=plot(distance_vector,Path_loss_model(:,2),'--b','LineWidth',1.4) ;
%hold on
%h11=plot(distance_vector,Path_loss_model(:,3),'--k','LineWidth',2) ;
%hold on
%h12=plot(distance_vector,Path_loss_model(:,4),'--c','LineWidth',2) ;
grid on
legend([h1(1),h2(1),h5(1),h6(1),h9(1),h10],'Pathloss measured (n1)','Pathloss measured (n2)',...
    'Pathloss measured avg (n1)','Pathloss measured avg (n2)','Path loss model (n1)','Path loss model (n2)') ;
title ('Path loss vs  Tx-Rx separation')
ylabel ('Path loss (dB)')
xlabel ('Tx-Rx separation (m)')
hold off

        
%------------------------------------------------------------------------------------------------------------------------------%
%------------------------------------------------------------------------------------------------------------------------------%
    case 'n1 & n3'
  
      for k=1:4

for w=1:no_sampels
 %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 % mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
        mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
        
         case'Excel file'
                     mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
             
end
end
for w=1:no_sampels
    P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
end


for w=1:no_sampels
  equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

J(k,1)=(sum(equ(:,k)))./no_sampels ;
ode(k,1)=diff(J(k,1),es_n(k,1)) ;
n_star(k,1) = round(double(solve(ode(k,1))),4);

for w=1:no_sampels
   variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

variance_es(k,1)=mean(variance_start(:,k)) ;
standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


for w=1:no_sampels
  Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;
 
end
   accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
end

for z=1:desired_no_samples
    h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
                                                   'MarkerFaceColor',[0.3010 0.7450 0.9330],...
                                              'LineWidth',1.5);
   hold on
%     h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
%                                                    'MarkerFaceColor',[0.9290 0.6940 0.1250],...
%                                               'LineWidth',1.5);
%    hold on
    h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',	[0 0 1],...
                                                   'MarkerFaceColor',[0.4660 0.6740 0.1880],...
                                              'LineWidth',1.5); 
    hold on
%     h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 1 0],...
%                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
%                                                  'LineWidth',1.5); 
%     hold on
end
h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
hold on
% h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
% hold on
h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
hold on
% h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
% hold on
h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
hold on
%h10=plot(distance_vector,Path_loss_model(:,2),'--b','LineWidth',1.4) ;
%hold on
h11=plot(distance_vector,Path_loss_model(:,3),'--k','LineWidth',2) ;
%hold on
%h12=plot(distance_vector,Path_loss_model(:,4),'--c','LineWidth',2) ;
grid on
legend([h1(1),h3(1),h5(1),h7(1),h9(1),h11],'Pathloss measured (n1)','Pathloss measured (n3)',...
    'Pathloss measured avg (n1)','Pathloss measured avg (n3)','Path loss model (n1)','Path loss model (n3)') ;
title ('Path loss vs  Tx-Rx separation')
ylabel ('Path loss (dB)')
xlabel ('Tx-Rx separation (m)')
hold off  
%------------------------------------------------------------------------------------------------------------------------------%
%------------------------------------------------------------------------------------------------------------------------------%
    case 'n1 & n4'

        
    for k=1:4

for w=1:no_sampels
 %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
         mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
        
         case'Excel file'
                     mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
end
end
for w=1:no_sampels
    P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
end


for w=1:no_sampels
  equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

J(k,1)=(sum(equ(:,k)))./no_sampels ;
ode(k,1)=diff(J(k,1),es_n(k,1)) ;
n_star(k,1) = round(double(solve(ode(k,1))),4);

for w=1:no_sampels
   variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

variance_es(k,1)=mean(variance_start(:,k)) ;
standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


for w=1:no_sampels
  Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;
 
end
   accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
end

for z=1:desired_no_samples
    h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
                                                   'MarkerFaceColor',[0.3010 0.7450 0.9330],...
                                              'LineWidth',1.5);
   hold on
%     h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
%                                                    'MarkerFaceColor',[0.9290 0.6940 0.1250],...
%                                               'LineWidth',1.5);
%    hold on
%     h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',	[0 0 1],...
%                                                    'MarkerFaceColor',[0.4660 0.6740 0.1880],...
%                                               'LineWidth',1.5); 
%     hold on
    h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 1 0],...
                                                   'MarkerFaceColor',[0.3010 0.7450 0.9330],...
                                                 'LineWidth',1.5); 
    hold on
end
h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
hold on
% h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
% hold on
% h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
% hold on
h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
 hold on
h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
hold on
%h10=plot(distance_vector,Path_loss_model(:,2),'--b','LineWidth',1.4) ;
%hold on
%h11=plot(distance_vector,Path_loss_model(:,3),'--k','LineWidth',2) ;
%hold on
h12=plot(distance_vector,Path_loss_model(:,4),'--c','LineWidth',2) ;
grid on
legend([h1(1),h4(1),h5(1),h8(1),h9(1),h12],'Pathloss measured (n1)','Pathloss measured (n4)',...
    'Pathloss measured avg (n1)','Pathloss measured avg (n4)','Path loss model (n1)','Path loss model (n4)') ;
title ('Path loss vs  Tx-Rx separation')
ylabel ('Path loss (dB)')
xlabel ('Tx-Rx separation (m)')
hold off    
 %------------------------------------------------------------------------------------------------------------------------------%
 %------------------------------------------------------------------------------------------------------------------------------%
    case 'n2 & n3' 
      
   for k=1:4

for w=1:no_sampels
 %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
        mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
        
         case'Excel file'
            mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
             
end
end
for w=1:no_sampels
    P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
end


for w=1:no_sampels 
  equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

J(k,1)=(sum(equ(:,k)))./no_sampels ;
ode(k,1)=diff(J(k,1),es_n(k,1)) ;
n_star(k,1) = round(double(solve(ode(k,1))),4);

for w=1:no_sampels
   variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

variance_es(k,1)=mean(variance_start(:,k)) ;
standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


for w=1:no_sampels 
  Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;
 
end
   accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
end

for z=1:desired_no_samples
%     h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
%                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
%                                               'LineWidth',1.5);
%    hold on
    h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
                                                   'MarkerFaceColor',[0.9290 0.6940 0.1250],...
                                              'LineWidth',1.5);
   hold on
    h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',	[0 0 1],...
                                                   'MarkerFaceColor',[0.4660 0.6740 0.1880],...
                                              'LineWidth',1.5); 
    hold on
%     h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 1 0],...
%                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
%                                                  'LineWidth',1.5); 
%     hold on
end
%h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
%hold on
 h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
 hold on
 h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
 hold on
%h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
 %hold on
%h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
%hold on
h10=plot(distance_vector,Path_loss_model(:,2),'--b','LineWidth',1.4) ;
hold on
h11=plot(distance_vector,Path_loss_model(:,3),'--k','LineWidth',2) ;
%hold on
%h12=plot(distance_vector,Path_loss_model(:,4),'--c','LineWidth',2) ;
grid on
legend([h2(1),h3(1),h6(1),h7(1),h10(1),h11],'Pathloss measured (n2)','Pathloss measured (n3)',...
    'Pathloss measured avg (n2)','Pathloss measured avg (n3)','Path loss model (n2)','Path loss model (n3)') ;
title ('Path loss vs  Tx-Rx separation')
ylabel ('Path loss (dB)')
xlabel ('Tx-Rx separation (m)')
hold off     
 %------------------------------------------------------------------------------------------------------------------------------%
 %------------------------------------------------------------------------------------------------------------------------------%
    case 'n2 & n4'  
      
for k=1:4

for w=1:no_sampels
 %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
       mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
        
         case'Excel file'
                       mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
             
end
end
for w=1:no_sampels
    P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
end


for w=1:no_sampels 
  equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

J(k,1)=(sum(equ(:,k)))./no_sampels ;
ode(k,1)=diff(J(k,1),es_n(k,1)) ;
n_star(k,1) = round(double(solve(ode(k,1))),4);

for w=1:no_sampels
   variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

variance_es(k,1)=mean(variance_start(:,k)) ;
standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


for w=1:no_sampels
  Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;
 
end
   accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
end

for z=1:desired_no_samples
%     h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
%                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
%                                               'LineWidth',1.5);
%    hold on
    h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
                                                   'MarkerFaceColor',[0.9290 0.6940 0.1250],...
                                              'LineWidth',1.5);
   hold on
%     h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',	[0 0 1],...
%                                                    'MarkerFaceColor',[0.4660 0.6740 0.1880],...
%                                               'LineWidth',1.5); 
%     hold on
    h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 1 0],...
                                                   'MarkerFaceColor',[0.3010 0.7450 0.9330],...
                                                 'LineWidth',1.5); 
    hold on
end
%h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
%hold on
 h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
 hold on
%  h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
%  hold on
h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
hold on
%h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
%hold on
h10=plot(distance_vector,Path_loss_model(:,2),'--b','LineWidth',1.4) ;
hold on
%h11=plot(distance_vector,Path_loss_model(:,3),'--k','LineWidth',2) ;
%hold on
h12=plot(distance_vector,Path_loss_model(:,4),'--c','LineWidth',2) ;
grid on
legend([h2(1),h4(1),h6(1),h8(1),h10(1),h12],'Pathloss measured (n2)','Pathloss measured (n4)',...
    'Pathloss measured avg (n2)','Pathloss measured avg (n4)','Path loss model (n2)','Path loss model (n4)') ;
title ('Path loss vs  Tx-Rx separation')
ylabel ('Path loss (dB)')
xlabel ('Tx-Rx separation (m)')
hold off
%------------------------------------------------------------------------------------------------------------------------------%
%------------------------------------------------------------------------------------------------------------------------------%
    case 'n3 & n4' 
       for k=1:4

for w=1:no_sampels
 %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 val=get(handles.popupmenu2,'value');
 
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
       mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
                
         case'Excel file'
             mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
end
end
for w=1:no_sampels
    P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
end


for w=1:no_sampels
  equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

J(k,1)=(sum(equ(:,k)))./no_sampels ;
ode(k,1)=diff(J(k,1),es_n(k,1)) ;
n_star(k,1) = round(double(solve(ode(k,1))),4);

for w=1:no_sampels
   variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

variance_es(k,1)=mean(variance_start(:,k)) ;
standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


for w=1:no_sampels
  Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;
 
end
   accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
end

for z=1:desired_no_samples
%     h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
%                                                    'MarkerFaceColor',[0.3010 0.7450 0.9330],...
%                                               'LineWidth',1.5);
%    hold on
%     h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
%                                                    'MarkerFaceColor',[0.9290 0.6940 0.1250],...
%                                               'LineWidth',1.5);
%    hold on
    h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',	[0 0 1],...
                                                   'MarkerFaceColor',[0.4660 0.6740 0.1880],...
                                              'LineWidth',1.5); 
    hold on
    h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 1 0],...
                                                   'MarkerFaceColor',[0.3010 0.7450 0.9330],...
                                                 'LineWidth',1.5); 
    hold on
end
%h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
%hold on
 %h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
 %hold on
 h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
 hold on
h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
hold on
%h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
%hold on
%h10=plot(distance_vector,Path_loss_model(:,2),'--b','LineWidth',1.4) ;
%hold on
h11=plot(distance_vector,Path_loss_model(:,3),'--k','LineWidth',2) ;
hold on
h12=plot(distance_vector,Path_loss_model(:,4),'--c','LineWidth',2) ;
grid on
legend([h3(1),h4(1),h7(1),h8(1),h11(1),h12],'Pathloss measured (n3)','Pathloss measured (n4)',...
    'Pathloss measured avg (n3)','Pathloss measured avg (n4)','Path loss model (n3)','Path loss model (n4)') ;
title ('Path loss vs  Tx-Rx separation')
ylabel ('Path loss (dB)')
xlabel ('Tx-Rx separation (m)')
hold off

%------------------------------------------------------------------------------------------------------------------------------%
%------------------------------------------------------------------------------------------------------------------------------%
    case 'all' 
      
for k=1:4

for w=1:no_sampels
 %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 %mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
        mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
        
         case'Excel file'
            
              mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
end
end
for w=1:no_sampels
    P_measured_avg(w,k)=mean(P_measured(w,:,k)) ;
end


for w=1:no_sampels
  equ(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

J(k,1)=(sum(equ(:,k)))./no_sampels ;
ode(k,1)=diff(J(k,1),es_n(k,1)) ;
n_star(k,1) = round(double(solve(ode(k,1))),4);

for w=1:no_sampels
   variance_start(w,k)=(P_measured_avg(w,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(w,1)./d0)).^2 ;
end

variance_es(k,1)=mean(variance_start(:,k)) ;
standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


for w=1:no_sampels
  Path_loss_model(w,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(w,1)./d0) ;
 
end
   accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
end

for z=1:desired_no_samples
    h1=scatter(distance_vector,reshape(P_measured(:,z,1),1,[]).','MarkerEdgeColor',[1 0 0],...
                                                   'MarkerFaceColor',[0.3010 0.7450 0.9330],...
                                              'LineWidth',1.5);
   hold on
    h2=scatter(distance_vector,reshape(P_measured(:,z,2),1,[]).','MarkerEdgeColor',[0 1 0],...
                                                   'MarkerFaceColor',[0.9290 0.6940 0.1250],...
                                              'LineWidth',1.5);
   hold on
    h3=scatter(distance_vector,reshape(P_measured(:,z,3),1,[]).','MarkerEdgeColor',	[0 0 1],...
                                                   'MarkerFaceColor',[0.4660 0.6740 0.1880],...
                                              'LineWidth',1.5); 
    hold on
    h4=scatter(distance_vector,reshape(P_measured(:,z,4),1,[]).','MarkerEdgeColor',[1 1 0],...
                                                   'MarkerFaceColor',[0.3010 0.7450 0.9330],...
                                                 'LineWidth',1.5); 
    hold on
end
h5=scatter(distance_vector,P_measured_avg(:,1),'MarkerFaceColor',[0 0 0])
hold on
 h6=scatter(distance_vector,P_measured_avg(:,2),'MarkerFaceColor',[0 0 0])
 hold on
 h7=scatter(distance_vector,P_measured_avg(:,3),'MarkerFaceColor',[0 0 0])
 hold on
h8=scatter(distance_vector,P_measured_avg(:,4),'MarkerFaceColor',[0 0 0])
hold on
h9=plot(distance_vector,Path_loss_model(:,1),'--r','LineWidth',1.4) ;
hold on
h10=plot(distance_vector,Path_loss_model(:,2),'--b','LineWidth',1.4) ;
hold on
h11=plot(distance_vector,Path_loss_model(:,3),'--k','LineWidth',2) ;
hold on
h12=plot(distance_vector,Path_loss_model(:,4),'--c','LineWidth',2) ;
grid on
legend([h1(1),h2(1),h3(1),h4(1),h5(1),h6(1),h7(1),h8(1),h9(1),h10(1),h11(1),h12],...
    'Pathloss measured (n1)','Pathloss measured (n2)','Pathloss measured (n3)','Pathloss measured (n4)',...
    'Pathloss measured avg (n1)','Pathloss measured avg (n2)','Pathloss measured avg (n3)','Pathloss measured avg (n4)',...
    'Path loss model (n1)','Path loss model (n2)','Path loss model (n3)','Path loss model (n4)') ;
title ('Path loss vs  Tx-Rx separation')
ylabel ('Path loss (dB)')
xlabel ('Tx-Rx separation (m)')
hold off
   
 

end




% --- Executes during object creation, after setting all properties.
function Menu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Menu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n1_Output_Callback(hObject, eventdata, handles)
% hObject    handle to n1_Output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n1_Output as text
%        str2double(get(hObject,'String')) returns contents of n1_Output as a double


% --- Executes during object creation, after setting all properties.
function n1_Output_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n1_Output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ac_n1_Callback(hObject, eventdata, handles)
% hObject    handle to ac_n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ac_n1 as text
%        str2double(get(hObject,'String')) returns contents of ac_n1 as a double


% --- Executes during object creation, after setting all properties.
function ac_n1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ac_n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function es_n1_Callback(hObject, eventdata, handles)
% hObject    handle to es_n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of es_n1 as text
%        str2double(get(hObject,'String')) returns contents of es_n1 as a double


% --- Executes during object creation, after setting all properties.
function es_n1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to es_n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ac_n4_Callback(hObject, eventdata, handles)
% hObject    handle to ac_n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ac_n4 as text
%        str2double(get(hObject,'String')) returns contents of ac_n4 as a double


% --- Executes during object creation, after setting all properties.
function ac_n4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ac_n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function es_n4_Callback(hObject, eventdata, handles)
% hObject    handle to es_n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of es_n4 as text
%        str2double(get(hObject,'String')) returns contents of es_n4 as a double


% --- Executes during object creation, after setting all properties.
function es_n4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to es_n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ac_n3_Callback(hObject, eventdata, handles)
% hObject    handle to ac_n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ac_n3 as text
%        str2double(get(hObject,'String')) returns contents of ac_n3 as a double


% --- Executes during object creation, after setting all properties.
function ac_n3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ac_n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function es_n3_Callback(hObject, eventdata, handles)
% hObject    handle to es_n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of es_n3 as text
%        str2double(get(hObject,'String')) returns contents of es_n3 as a double


% --- Executes during object creation, after setting all properties.
function es_n3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to es_n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10
val=get(handles.popupmenu10,'value');
str=get(handles.popupmenu10,'string');
switch str{val}
    case'Calculate Pr(d)'
         set(handles.uipanel16,'visible','off') 
          set(handles.part2_panel,'visible','on') 
         set(handles.uipanel17,'visible','off')

    case'Calculate PL(d)'   
           set(handles.uipanel16,'visible','on') 
            set(handles.part2_panel,'visible','on')
           set(handles.uipanel17,'visible','off')
     
    case 'Calculate Rb) max'
          set(handles.uipanel17,'visible','on')
           set(handles.part2_panel,'visible','off')
           set(handles.uipanel16,'visible','off') 
          

end

% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6

val=get(handles.popupmenu6,'value');
str=get(handles.popupmenu6,'string');
switch str{val}
    case'Enter Pr(d0)'
         set(handles.edit49,'visible','on') 
        set(handles.text59,'visible','on')
    case'Use free space assumption'   
         set(handles.edit49,'visible','off') 
        set(handles.text59,'visible','off')
        
end
% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit39_Callback(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit39 as text
%        str2double(get(hObject,'String')) returns contents of edit39 as a double


% --- Executes during object creation, after setting all properties.
function edit39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit46_Callback(hObject, eventdata, handles)
% hObject    handle to edit46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit46 as text
%        str2double(get(hObject,'String')) returns contents of edit46 as a double


% --- Executes during object creation, after setting all properties.
function edit46_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit47_Callback(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit47 as text
%        str2double(get(hObject,'String')) returns contents of edit47 as a double


% --- Executes during object creation, after setting all properties.
function edit47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit48_Callback(hObject, eventdata, handles)
% hObject    handle to edit48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit48 as text
%        str2double(get(hObject,'String')) returns contents of edit48 as a double


% --- Executes during object creation, after setting all properties.
function edit48_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit49_Callback(hObject, eventdata, handles)
% hObject    handle to edit49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit49 as text
%        str2double(get(hObject,'String')) returns contents of edit49 as a double


% --- Executes during object creation, after setting all properties.
function edit49_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit50_Callback(hObject, eventdata, handles)
% hObject    handle to edit50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit50 as text
%        str2double(get(hObject,'String')) returns contents of edit50 as a double


% --- Executes during object creation, after setting all properties.
function edit50_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit51_Callback(hObject, eventdata, handles)
% hObject    handle to edit51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit51 as text
%        str2double(get(hObject,'String')) returns contents of edit51 as a double


% --- Executes during object creation, after setting all properties.
function edit51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit52_Callback(hObject, eventdata, handles)
% hObject    handle to edit52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit52 as text
%        str2double(get(hObject,'String')) returns contents of edit52 as a double


% --- Executes during object creation, after setting all properties.
function edit52_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global distance_vector_2;
global pr_2;
distance_vector_2
pr_2
d0=get(handles.d0,'string');
d0=str2num(d0);

op_freq=get(handles.f,'string');
op_freq=str2num(op_freq);
lambda=(3*10^8)/op_freq ;
standard_devision=get(handles.standard_devision,'string');
standard_deviation=str2num(standard_devision);

n1=str2num(get(handles.edit82,'string'));
n2=str2num(get(handles.edit80,'string'));
n3=str2num(get(handles.edit77,'string'));
n4=str2num(get(handles.edit84,'string'));

Gr=str2num(get(handles.edit46,'string')); 
Pt=str2num(get(handles.edit47,'string')); 
Gt=str2num(get(handles.edit79,'string'));
q=str2num(get(handles.edit90,'string')); 
s = RandStream('mlfg6331_64');

distance_vector=distance_vector_2;
global percent_rec_pow_more;
global percent_rec_pow_more_es;
global max_dist_to_meet_rec_power;
 desired_no_samples=str2num(get(handles.edit185,'string')); 
no_samples1=desired_no_samples ;
lambda=(3*10^8)./op_freq ;
n=[n1 ; n2 ; n3 ; n4] ;

J = sym('J', [length(n),1]) ;
ode = sym('ode', [length(n),1]) ;
es_n = sym('es_n', [length(n),1]) ;
syms equ %(5,3)
equ = sym('equ', [length(distance_vector),length(n)]) ;

%  P_measured_for_plot=zeros(5,50,3) ;
  P_measured=zeros(length(distance_vector),no_samples1,length(n)) ;
%randsample(s,Population,5,50,true);
 mean_avg = zeros(length(distance_vector),length(n)) ;
  val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');

switch str{val}
    case'Manually'
         mean_avg(1,:) = -20.*log10(lambda./(4.*pi.*d0)) ;
 P_measured(1,:,:) = repmat(normrnd(mean_avg(1,1),standard_deviation,[1,no_samples1]),1,1,length(n)) ;
        
         case'Excel file'
            mean_avg(1,:) = 84.48297 ;
           P_measured(1,:,:) = repmat(normrnd(mean_avg(1,1),standard_deviation,[1,no_samples1]),1,1,length(n)) ;
end
 



a=zeros(length(n),1);
for k=1:length(n)

% for i=1:5    
%  for u=1:50
%    P_measured(u,i,k)=P_measured(1,u)+10.*n(k,1).*log10(distance_vector(i,1)./d0) ;
%    %+standard_deviation ; 
%  end
% end


% for i=1:5
%     P_measured(i,k)=randsample(s,Population,50,true);
% end

global all_sampels;
for w=2:length(distance_vector)
%mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
 %mean_avg(w,k) = 50+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');
switch str{val}

    case'Manually'      
        mean_avg(w,k) = -20.*log10(lambda./(4.*pi.*d0))+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
        P_measured(w,:,k) = normrnd(mean_avg(w,k),standard_deviation,[1,desired_no_samples]) ;
         case'Excel file' 
             mean_avg(w,k) = 84.48297+10.*n(k,1).*log10(distance_vector(w,1)./d0) ;
              P_measured(w,:,k)=all_sampels(w,:,k);
         
end

end


for i=1:length(distance_vector)
    P_measured_avg(i,k)=mean(P_measured(i,:,k)) ;
end


for i=1:length(distance_vector) 
  equ(i,k)=(P_measured_avg(i,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(i,1)./d0)).^2 ;
end




J(k,1)=(sum(equ(:,k)))./length(distance_vector) ;



ode(k,1)=diff(J(k,1),es_n(k,1)) ;
n_star(k,1) = round(double(solve(ode(k,1))),4);


%t1(u)=mean(estimated_vector); 

for i=1:length(distance_vector)
   variance_start(i,k)=(P_measured_avg(i,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(i,1)./d0)).^2 ;
end

variance_es(k,1)=mean(variance_start(:,k)) ;
standard_deviation_es(k,1) = sqrt(variance_es(k,1)) ;


for i=1:length(distance_vector)
  Path_loss_model(i,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(i,1)./d0) ;
  %+standard_deviation_es(k,1) ;
end

% for k=1:1:no_samples
%     for i=1:50
%        Path_loss_model(i,k)=P_0(i)+(10*n1*log10(distance_vector(k)./d0))+standard_deviation;
%      % Path_loss(i,j)=P_0(i)-(10*n1*log(distance_vector(j)./d0))+standard_devision;
%     end
% end

% for i=1:5
%   P_r(i)=-10.*log(distance_vector(i)./d0);  
% end

for i=1:length(distance_vector)
    for j=1:no_samples1
%     variance_start(i,k)=(P_measured_avg(i,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(i,1)./d0)).^2 ;
      variance_start(i,j,k) = (Path_loss_model(i,k)-P_measured(i,j,k)).^2 ;
    end
    variance_es(i,k)=mean(variance_start(i,:,k)) ;
    standard_deviation_es(i,k) = sqrt(variance_es(i,k)) ;
end
standard_deviation_es_avg(k)=mean(standard_deviation_es(:,k));
 %for i=1:5
 
 
   accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
   %accuracy(i,k)=(Path_loss_model(i,k)-P_measured_avg(i,k)).^2 ;
   %    100-(abs((-t1(u)+n1)./n1))*100;
 %end
%  P_measured_for_plot(:,:,k)=P_measured ;
end
%------------------------------------------------------------------%
%------------------------------------------------------------------%
power_t=Pt;

t_gain=Gt;

r_gain=Gr;
lambda=(3*10^8)/op_freq ;

power_rec_ex=str2num(get(handles.edit48,'string'));  

for k=1:length(n)
 l_es=0 ;
 l=zeros(length(distance_vector),1) ;
 for i=1:length(distance_vector)
  for t=1:no_samples1
  power_rec(i,t,k) = power_t + t_gain + r_gain + 20*log10(lambda/(4*(pi)*(distance_vector(i,1)))) - P_measured(i,t,k)  ;
  if power_rec(i,t,k)>= power_rec_ex
    l(i,1)=l(i,1)+1 ;
  end
  end
  
  power_rec_es(i,k) = power_t + t_gain + r_gain + 20*log10(lambda/(4*(pi)*(distance_vector(i,1)))) - Path_loss_model(i,k)  ;
  if power_rec_es(i,k)>= power_rec_ex
    l_es=l_es+1 ;
  end
 
 percent_rec_pow_more(i,k) = (l(i,1)/no_samples1)*100 ; 
 if(percent_rec_pow_more(i,k)>=q)
     a(k,1) = a(k,1)+1 ;        
  end
  
  end

 
  if a(k,1)==0
     max_dist_to_meet_rec_power(k,1)= 0 ;
 else
     max_dist_to_meet_rec_power(k,1) = distance_vector(a(k,1),1) ;
 
  end
 percent_rec_pow_more_es(1,k) = (l_es/length(distance_vector))*100 ; 


 
 
end
 val=get(handles.popupmenu14,'value');
 str=get(handles.popupmenu14,'string');
 switch str{val}
     case'n1'
         set(handles.edit50,'string',num2str(n_star(1)));
         %stand_deviation
 %set(handles.edit51,'string',num2str());
  set(handles.edit52,'string',num2str(max_dist_to_meet_rec_power(1)));
   set(handles.edit78,'string',num2str(percent_rec_pow_more_es(1)));
   
    set(handles.edit51,'string',num2str(standard_deviation_es_avg(1)));
   set(handles.uitable9,'data',percent_rec_pow_more(:,1));
     case'n2'
         set(handles.edit50,'string',num2str(n_star(2)));
         %stand_deviation
 %set(handles.edit51,'string',num2str());
  set(handles.edit51,'string',num2str(standard_deviation_es_avg(2)));
  set(handles.edit52,'string',num2str(max_dist_to_meet_rec_power(2)));
   set(handles.edit78,'string',num2str(percent_rec_pow_more_es(2)));
    set(handles.uitable9,'data',percent_rec_pow_more(:,2));
     case'n3'
           set(handles.edit50,'string',num2str(n_star(3)));
           %stand_deviation
 %set(handles.edit51,'string',num2str());
  set(handles.edit51,'string',num2str(standard_deviation_es_avg(3)));
  set(handles.edit52,'string',num2str(max_dist_to_meet_rec_power(3)));
  set(handles.edit78,'string',num2str(percent_rec_pow_more_es(3)));
   set(handles.uitable9,'data',percent_rec_pow_more(:,3));
     case'n4'
         set(handles.edit50,'string',num2str(n_star(4)));
         %stand_deviation
 %set(handles.edit51,'string',num2str());
  set(handles.edit51,'string',num2str(standard_deviation_es_avg(4)));
  set(handles.edit52,'string',num2str(max_dist_to_meet_rec_power(4)));
  set(handles.edit78,'string',num2str(percent_rec_pow_more_es(4)));
   set(handles.uitable9,'data',percent_rec_pow_more(:,4));
 end   














% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit53_Callback(hObject, eventdata, handles)
% hObject    handle to edit53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit53 as text
%        str2double(get(hObject,'String')) returns contents of edit53 as a double


% --- Executes during object creation, after setting all properties.
function edit53_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit54_Callback(hObject, eventdata, handles)
% hObject    handle to edit54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit54 as text
%        str2double(get(hObject,'String')) returns contents of edit54 as a double


% --- Executes during object creation, after setting all properties.
function edit54_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit55_Callback(hObject, eventdata, handles)
% hObject    handle to edit55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit55 as text
%        str2double(get(hObject,'String')) returns contents of edit55 as a double


% --- Executes during object creation, after setting all properties.
function edit55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit56_Callback(hObject, eventdata, handles)
% hObject    handle to edit56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit56 as text
%        str2double(get(hObject,'String')) returns contents of edit56 as a double


% --- Executes during object creation, after setting all properties.
function edit56_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit57_Callback(hObject, eventdata, handles)
% hObject    handle to edit57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit57 as text
%        str2double(get(hObject,'String')) returns contents of edit57 as a double


% --- Executes during object creation, after setting all properties.
function edit57_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit58_Callback(hObject, eventdata, handles)
% hObject    handle to edit58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit58 as text
%        str2double(get(hObject,'String')) returns contents of edit58 as a double


% --- Executes during object creation, after setting all properties.
function edit58_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit59_Callback(hObject, eventdata, handles)
% hObject    handle to edit59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit59 as text
%        str2double(get(hObject,'String')) returns contents of edit59 as a double


% --- Executes during object creation, after setting all properties.
function edit59_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit60_Callback(hObject, eventdata, handles)
% hObject    handle to edit60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit60 as text
%        str2double(get(hObject,'String')) returns contents of edit60 as a double


% --- Executes during object creation, after setting all properties.
function edit60_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9
val=get(handles.popupmenu9,'value');
str=get(handles.popupmenu9,'string');
switch str{val}
    case'Calculate Pr(d)'
         set(handles.part2_panel,'visible','on') 
         set(handles.uipanel16,'visible','off') 
         set(handles.uipanel17,'visible','off')
         set(handles.popupmenu9,'visible','on') 
        
    case'Calculate PL(d)'   
           set(handles.uipanel16,'visible','on') 
            set(handles.part2_panel,'visible','on')
           set(handles.uipanel17,'visible','off')
          set(handles.popupmenu9,'visible','on') 
          
    case 'Calculate Rb) max'
           set(handles.uipanel17,'visible','on')
           set(handles.part2_panel,'visible','on')
           set(handles.uipanel16,'visible','off') 
           set(handles.popupmenu9,'visible','on') 
end

% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit61_Callback(hObject, eventdata, handles)
% hObject    handle to edit61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit61 as text
%        str2double(get(hObject,'String')) returns contents of edit61 as a double


% --- Executes during object creation, after setting all properties.
function edit61_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit62_Callback(hObject, eventdata, handles)
% hObject    handle to edit62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit62 as text
%        str2double(get(hObject,'String')) returns contents of edit62 as a double


% --- Executes during object creation, after setting all properties.
function edit62_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit63_Callback(hObject, eventdata, handles)
% hObject    handle to edit63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit63 as text
%        str2double(get(hObject,'String')) returns contents of edit63 as a double


% --- Executes during object creation, after setting all properties.
function edit63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit64_Callback(hObject, eventdata, handles)
% hObject    handle to edit64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit64 as text
%        str2double(get(hObject,'String')) returns contents of edit64 as a double


% --- Executes during object creation, after setting all properties.
function edit64_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit65_Callback(hObject, eventdata, handles)
% hObject    handle to edit65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit65 as text
%        str2double(get(hObject,'String')) returns contents of edit65 as a double


% --- Executes during object creation, after setting all properties.
function edit65_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit66_Callback(hObject, eventdata, handles)
% hObject    handle to edit66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit66 as text
%        str2double(get(hObject,'String')) returns contents of edit66 as a double


% --- Executes during object creation, after setting all properties.
function edit66_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit67_Callback(hObject, eventdata, handles)
% hObject    handle to edit67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit67 as text
%        str2double(get(hObject,'String')) returns contents of edit67 as a double


% --- Executes during object creation, after setting all properties.
function edit67_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit68_Callback(hObject, eventdata, handles)
% hObject    handle to edit68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit68 as text
%        str2double(get(hObject,'String')) returns contents of edit68 as a double


% --- Executes during object creation, after setting all properties.
function edit68_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit69_Callback(hObject, eventdata, handles)
% hObject    handle to edit69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit69 as text
%        str2double(get(hObject,'String')) returns contents of edit69 as a double


% --- Executes during object creation, after setting all properties.
function edit69_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu13.
function popupmenu13_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu13 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu13
val=get(handles.popupmenu13,'value');
str=get(handles.popupmenu13,'string');
switch str{val}
    case'Calculate Pr(d)'
         set(handles.part2_panel,'visible','on') 
         set(handles.uipanel16,'visible','off') 
         set(handles.uipanel17,'visible','off')

    case'Calculate PL(d)'   
           set(handles.uipanel16,'visible','on') 
            set(handles.part2_panel,'visible','on')
         set(handles.uipanel17,'visible','off')
     
    case 'Calculate Rb) max'
           set(handles.uipanel17,'visible','on')
           set(handles.part2_panel,'visible','on')
           set(handles.uipanel16,'visible','off') 
end 

% --- Executes during object creation, after setting all properties.
function popupmenu13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu12.
function popupmenu12_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu12 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu12
val=get(handles.popupmenu12,'value');
str=get(handles.popupmenu12,'string');
switch str{val}
    case'Calculate Pr(d)'
         set(handles.part2_panel,'visible','on') 
         set(handles.uipanel16,'visible','off') 
         set(handles.uipanel17,'visible','off')

    case'Calculate PL(d)'   
           set(handles.uipanel16,'visible','on') 
            set(handles.part2_panel,'visible','on')
         set(handles.uipanel17,'visible','off')
     
    case 'Calculate Rb) max'
           set(handles.uipanel17,'visible','on')
           set(handles.part2_panel,'visible','on')
           set(handles.uipanel16,'visible','off') 
end 

% --- Executes during object creation, after setting all properties.
function popupmenu12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function standard_devision_Callback(hObject, eventdata, handles)
% hObject    handle to standard_devision (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of standard_devision as text
%        str2double(get(hObject,'String')) returns contents of standard_devision as a double


% --- Executes during object creation, after setting all properties.
function standard_devision_CreateFcn(hObject, eventdata, handles)
% hObject    handle to standard_devision (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in About.
function About_Callback(hObject, eventdata, handles)
% hObject    handle to About (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Home,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_1,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_2,'BackgroundColor',[0.65 0.65 0.65])
set(handles.Output_3,'BackgroundColor',[0.65 0.65 0.65])
set(handles.About,'BackgroundColor',[0.9 0.9 0.9])
set(handles.Parameters,'visible','off')
set(handles.Mesurements,'visible','off')
set(handles.Output1Panel,'visible','off')
set(handles.Output2Panel,'visible','off')
set(handles.Output3Panel,'visible','off')
set(handles.uipanel18,'visible','on')


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3

%set(handles.edit74,'visible','on') 
%set(handles.text97,'visible','on')
if get(handles.checkbox3,'value')==1
global ii;
ii=0;
else
  set(handles.uitable7, 'Data', {})  
end

function edit74_Callback(hObject, eventdata, handles)
% hObject    handle to edit74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit74 as text
%        str2double(get(hObject,'String')) returns contents of edit74 as a double


% --- Executes during object creation, after setting all properties.
function edit74_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit75_Callback(hObject, eventdata, handles)
% hObject    handle to edit75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit75 as text
%        str2double(get(hObject,'String')) returns contents of edit75 as a double


% --- Executes during object creation, after setting all properties.
function edit75_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global distance_vector;
global  i;
global ii;
global distance_vector_2;
global all_sampels;
distance_vector=[];
i=0;
ii=0;
distance_vector_2=[];
all_sampels=[];
distance_vector

% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    msgbox('  Enter Distance greater than or equal Reference distance  ','Help Massage ','help')



function edit77_Callback(hObject, eventdata, handles)
% hObject    handle to edit77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit77 as text
%        str2double(get(hObject,'String')) returns contents of edit77 as a double


% --- Executes during object creation, after setting all properties.
function edit77_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu14.
function popupmenu14_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu14 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu14

     
 
 

% --- Executes during object creation, after setting all properties.
function popupmenu14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit78_Callback(hObject, eventdata, handles)
% hObject    handle to edit78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit78 as text
%        str2double(get(hObject,'String')) returns contents of edit78 as a double


% --- Executes during object creation, after setting all properties.
function edit78_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit79_Callback(hObject, eventdata, handles)
% hObject    handle to edit79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit79 as text
%        str2double(get(hObject,'String')) returns contents of edit79 as a double


% --- Executes during object creation, after setting all properties.
function edit79_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit80_Callback(hObject, eventdata, handles)
% hObject    handle to edit80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit80 as text
%        str2double(get(hObject,'String')) returns contents of edit80 as a double


% --- Executes during object creation, after setting all properties.
function edit80_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit81_Callback(hObject, eventdata, handles)
% hObject    handle to edit81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit81 as text
%        str2double(get(hObject,'String')) returns contents of edit81 as a double


% --- Executes during object creation, after setting all properties.
function edit81_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit82_Callback(hObject, eventdata, handles)
% hObject    handle to edit82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit82 as text
%        str2double(get(hObject,'String')) returns contents of edit82 as a double


% --- Executes during object creation, after setting all properties.
function edit82_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit84_Callback(hObject, eventdata, handles)
% hObject    handle to edit84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit84 as text
%        str2double(get(hObject,'String')) returns contents of edit84 as a double


% --- Executes during object creation, after setting all properties.
function edit84_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit185_Callback(hObject, eventdata, handles)
% hObject    handle to edit185 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit185 as text
%        str2double(get(hObject,'String')) returns contents of edit185 as a double


% --- Executes during object creation, after setting all properties.
function edit185_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit185 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit86_Callback(hObject, eventdata, handles)
% hObject    handle to edit86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit86 as text
%        str2double(get(hObject,'String')) returns contents of edit86 as a double


% --- Executes during object creation, after setting all properties.
function edit86_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit87_Callback(hObject, eventdata, handles)
% hObject    handle to edit87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit87 as text
%        str2double(get(hObject,'String')) returns contents of edit87 as a double


% --- Executes during object creation, after setting all properties.
function edit87_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit88_Callback(hObject, eventdata, handles)
% hObject    handle to edit88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit88 as text
%        str2double(get(hObject,'String')) returns contents of edit88 as a double


% --- Executes during object creation, after setting all properties.
function edit88_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit89_Callback(hObject, eventdata, handles)
% hObject    handle to edit89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit89 as text
%        str2double(get(hObject,'String')) returns contents of edit89 as a double


% --- Executes during object creation, after setting all properties.
function edit89_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit90_Callback(hObject, eventdata, handles)
% hObject    handle to edit90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit90 as text
%        str2double(get(hObject,'String')) returns contents of edit90 as a double


% --- Executes during object creation, after setting all properties.
function edit90_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
