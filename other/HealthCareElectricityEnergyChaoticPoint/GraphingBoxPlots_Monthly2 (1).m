
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Fuel Consumption (Liters) DMAP
%% Vehicle Batteries (Electrical Energy=kWh) DMAP
%% saves to pdf all the figures
%%
%% Co-Authors Fall 2019
%% Perfect Mfashijwenimana
%% Dr. A Mechtenberg
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ESDD Lab - Model Predictive Control Research
% Last revision: October 1st 2019
% This is a program that aims at creating a way to analyze data from 
% the simulations run in MPC code. 
%
% 1.  Load the data in the program
% 2.  Sum up the fuel usage for 360 days for all of the simulations.
% 3.  Plot the solar radiance array
% 4.  Plot the SoC of each battery
%
% in this run, I made a duplicate of Rand0HOrizon11 so that I can test the
% program.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% For the 4 uncertainties 0,1,5,10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

uncertainty=0;

while(uncertainty<=10) % The while loop helps us to run through all the calculated uncertainties

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Prediction 1-8
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     figure;     % Provides the figure for the first 8 predictions               
%     for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
% 
%         filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
%         load(filename); % load a specific file 
%         subplot(4,6,PredictionHorizon); % subplot for first 8 
%         TotalFuelUsage=sum(sum(FuelUsage));
%         boxplot_month(1,10,'Generator','Liters',FuelUsage) 
%         annotation('textbox',[.9 .5 .1 .2],'String','Fuel','String',num2str(TotalFuelUsage),'EdgeColor','none');
%         sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Generator']);
%     end 
%    
%     fig = gcf;
%         fig.PaperUnits = 'inches';
%         % fig.PaperPosition = [left bottom width height]
%         fig.PaperSize = [12 15];
%         fig.PaperPosition = [0 0 15 12];
%         fig.PaperOrientation = 'landscape';
%     figname1 = strcat('PlotMonthlyGenerator','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Generator','.pdf');
%     saveas(fig,figname1,'pdf')
    
    for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file
        Uv=squeeze(Umatrix(1,:,:));
        subplot(4,6,PredictionHorizon); % subplot for first 8    
        boxplot_month(1,10,'U','kWh',Uv)
        sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Uv']);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('PlotMonthlyUv','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Uv','.pdf');
    saveas(fig,figname2,'pdf')
    
    for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file
        Umb=squeeze(Umatrix(2,:,:));
        subplot(4,6,PredictionHorizon); % subplot for first 8    
        boxplot_month(1,10,'Umb','kWh',Umb)
        sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Umb']);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('PlotMonthlyUmb','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Umb','.pdf');
    saveas(fig,figname2,'pdf')
    
    for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file
        Ue=squeeze(Umatrix(3,:,:));
        subplot(4,6,PredictionHorizon); % subplot for first 8    
        boxplot_month(1,10,'Ue','kWh',Ue)
        sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Ue']);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('PlotMonthlyUe','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Ue','.pdf');
    saveas(fig,figname2,'pdf')
    
%     for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
%         filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
%         load(filename); % load a specific file
%         subplot(4,6,PredictionHorizon); % subplot for first 8    
%         boxplot_month(1,10,'Battery 1','kWh',squeeze(VehicleBatteryCharges(1,:,:)))
%         sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Battery01']);
%     end 
%    
%     fig = gcf;
%         fig.PaperUnits = 'inches';
%         % fig.PaperPosition = [left bottom width height]
%         fig.PaperSize = [12 15];
%         fig.PaperPosition = [0 0 15 12];
%         fig.PaperOrientation = 'landscape';
%     figname2 = strcat('PlotMonthlyBattery','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Battery01','.pdf');
%     saveas(fig,figname2,'pdf')
%     
%     for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
%         filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
%         load(filename); % load a specific file
%         subplot(4,6,PredictionHorizon); % subplot for first 8    
%         boxplot_month(1,10,'Battery 2','kWh',squeeze(VehicleBatteryCharges(2,:,:)))
%         sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Battery02']);
%     end 
%    
%     fig = gcf;
%         fig.PaperUnits = 'inches';
%         % fig.PaperPosition = [left bottom width height]
%         fig.PaperSize = [12 15];
%         fig.PaperPosition = [0 0 15 12];
%         fig.PaperOrientation = 'landscape';
%     figname2 = strcat('PlotMonthlyBattery','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Battery02','.pdf');
%     saveas(fig,figname2,'pdf')
%     
%     for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
%         filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
%         load(filename); % load a specific file
%         subplot(4,6,PredictionHorizon); % subplot for first 8    
%         boxplot_month(1,10,'Battery 3','kWh',squeeze(VehicleBatteryCharges(3,:,:)))
%         sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Battery03']);
%     end 
%    
%     fig = gcf;
%         fig.PaperUnits = 'inches';
%         % fig.PaperPosition = [left bottom width height]
%         fig.PaperSize = [12 15];
%         fig.PaperPosition = [0 0 15 12];
%         fig.PaperOrientation = 'landscape';
%     figname2 = strcat('PlotMonthlyBattery','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Battery03','.pdf');
%     saveas(fig,figname2,'pdf')
%     
%     for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
%         filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
%         load(filename); % load a specific file
%         subplot(4,6,PredictionHorizon); % subplot for first 8    
%         boxplot_month(1,10,'Battery 4','kWh',squeeze(VehicleBatteryCharges(4,:,:)))
%         sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Battery04']);
%     end 
%    
%     fig = gcf;
%         fig.PaperUnits = 'inches';
%         % fig.PaperPosition = [left bottom width height]
%         fig.PaperSize = [12 15];
%         fig.PaperPosition = [0 0 15 12];
%         fig.PaperOrientation = 'landscape';
%     figname2 = strcat('PlotMonthlyBattery','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Battery04','.pdf');
%     saveas(fig,figname2,'pdf')
%     
%     for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
%         filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
%         load(filename); % load a specific file
%         subplot(4,6,PredictionHorizon); % subplot for first 8    
%         boxplot_month(1,10,'Battery 5','kWh',squeeze(VehicleBatteryCharges(5,:,:)))
%         sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Battery05']);
%     end 
%    
%     fig = gcf;
%         fig.PaperUnits = 'inches';
%         % fig.PaperPosition = [left bottom width height]
%         fig.PaperSize = [12 15];
%         fig.PaperPosition = [0 0 15 12];
%         fig.PaperOrientation = 'landscape';
%     figname2 = strcat('PlotMonthlyBattery','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Battery05','.pdf');
%     saveas(fig,figname2,'pdf')
%     
%     for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
%         filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
%         load(filename); % load a specific file
%         subplot(4,6,PredictionHorizon); % subplot for first 8    
%         boxplot_month(1,10,'Battery 6','kWh',squeeze(VehicleBatteryCharges(6,:,:)))
%         sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Battery06']);
%     end 
%    
%     fig = gcf;
%         fig.PaperUnits = 'inches';
%         % fig.PaperPosition = [left bottom width height]
%         fig.PaperSize = [12 15];
%         fig.PaperPosition = [0 0 15 12];
%         fig.PaperOrientation = 'landscape';
%     figname2 = strcat('PlotMonthlyBattery','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Battery06','.pdf');
%     saveas(fig,figname2,'pdf')
%     
%     for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
%         filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
%         load(filename); % load a specific file
%         subplot(4,6,PredictionHorizon); % subplot for first 8    
%         boxplot_month(1,10,'Battery 7','kWh',squeeze(VehicleBatteryCharges(7,:,:)))
%         sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Battery07']);
%     end 
%    
%     fig = gcf;
%         fig.PaperUnits = 'inches';
%         % fig.PaperPosition = [left bottom width height]
%         fig.PaperSize = [12 15];
%         fig.PaperPosition = [0 0 15 12];
%         fig.PaperOrientation = 'landscape';
%     figname2 = strcat('PlotMonthlyBattery','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Battery07','.pdf');
%     saveas(fig,figname2,'pdf')
%     
%     for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
%         filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
%         load(filename); % load a specific file
%         subplot(4,6,PredictionHorizon); % subplot for first 8    
%         boxplot_month(1,10,'Battery 8','kWh',squeeze(VehicleBatteryCharges(8,:,:)))
%         sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Battery08']);
%     end 
%    
%     fig = gcf;
%         fig.PaperUnits = 'inches';
%         % fig.PaperPosition = [left bottom width height]
%         fig.PaperSize = [12 15];
%         fig.PaperPosition = [0 0 15 12];
%         fig.PaperOrientation = 'landscape';
%     figname2 = strcat('PlotMonthlyBattery','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Battery08','.pdf');
%     saveas(fig,figname2,'pdf')
%     
%     for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
%         filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
%         load(filename); % load a specific file
%         subplot(4,6,PredictionHorizon); % subplot for first 8    
%         boxplot_month(1,10,'Battery 9','kWh',squeeze(VehicleBatteryCharges(9,:,:)))
%         sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Battery09']);
%     end 
%    
%     fig = gcf;
%         fig.PaperUnits = 'inches';
%         % fig.PaperPosition = [left bottom width height]
%         fig.PaperSize = [12 15];
%         fig.PaperPosition = [0 0 15 12];
%         fig.PaperOrientation = 'landscape';
%     figname2 = strcat('PlotMonthlyBattery','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Battery09','.pdf');
%     saveas(fig,figname2,'pdf')
%     
%     for PredictionHorizon=1:24 % predictions were grouped to easily see subplot
%         filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
%         load(filename); % load a specific file
%         subplot(4,6,PredictionHorizon); % subplot for first 8    
%         boxplot_month(1,10,'Battery 10','kWh',squeeze(VehicleBatteryCharges(10,:,:)))
%         sgtitle(['Prediction Horizon 1-24 for uncertainty ', num2str(uncertainty),' Battery10']);
%     end 
%    
%     fig = gcf;
%         fig.PaperUnits = 'inches';
%         % fig.PaperPosition = [left bottom width height]
%         fig.PaperSize = [12 15];
%         fig.PaperPosition = [0 0 15 12];
%         fig.PaperOrientation = 'landscape';
%     figname2 = strcat('PlotMonthlyBattery','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon-23),'to',num2str(PredictionHorizon),'Battery10','.pdf');
%     saveas(fig,figname2,'pdf')
%     
% % %% Section that determines the uncertainty
% % % in this section we are running the while loop so that it covers rand 0,1,
% % % 5, and 10. 

    if uncertainty== 0
        uncertainty=uncertainty+1; 
    
    elseif uncertainty==1
        uncertainty=uncertainty+4;
    else
        uncertainty=uncertainty+5;
    end
end



% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %% ESDD Research Lab Fall 2019
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

