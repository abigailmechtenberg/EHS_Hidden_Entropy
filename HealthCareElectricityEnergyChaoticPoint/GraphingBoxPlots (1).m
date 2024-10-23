
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
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=1:8 % predictions were grouped to easily see subplot

        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon) = subplot(2,4,PredictionHorizon); % subplot for first 8    
        boxplot_hour(1,10,'Generator','Liters',FuelUsage)  
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname1 = strcat('FigureGBoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Generator','.pdf');
    saveas(fig,figname1,'pdf')
    
    Battery=1;

    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=1:8 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon) = subplot(2,4,PredictionHorizon); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB1BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=2;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=1:8 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon) = subplot(2,4,PredictionHorizon); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB2BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=3;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=1:8 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon) = subplot(2,4,PredictionHorizon); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB3BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=4;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=1:8 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon) = subplot(2,4,PredictionHorizon); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB4BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=5;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=1:8 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon) = subplot(2,4,PredictionHorizon); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB5BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=6;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=1:8 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon) = subplot(2,4,PredictionHorizon); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB6BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
        
    Battery=7;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=1:8 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon) = subplot(2,4,PredictionHorizon); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB7BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
           
    Battery=8;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=1:8 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon) = subplot(2,4,PredictionHorizon); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB8BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
           
    Battery=9;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=1:8 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon) = subplot(2,4,PredictionHorizon); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB9BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
           
    Battery=10;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=1:8 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon) = subplot(2,4,PredictionHorizon); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB10BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Prediction 9-16
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure; % Fuel Usage
    for PredictionHorizon=9:16

        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename);     
        b(PredictionHorizon-8) = subplot(2,4,PredictionHorizon-8);   
        boxplot_hour(1,10,'Fuel Usage','Liters',FuelUsage)  
        sgtitle(['Prediction Horizon 9-16 for uncertainty ', num2str(uncertainty)]);

    end 
    
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname3 = strcat('FigureFigureGBoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Generator','.pdf');
    saveas(fig,figname3,'pdf')
    
Battery=1;

    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=9:16 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-8) = subplot(2,4,PredictionHorizon-8); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB1BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=2;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=9:16 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-8) = subplot(2,4,PredictionHorizon-8); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB2BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=3;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=9:16 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-8) = subplot(2,4,PredictionHorizon-8); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB3BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=4;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=9:16 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-8) = subplot(2,4,PredictionHorizon-8); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB4BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=5;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=9:16 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-8) = subplot(2,4,PredictionHorizon-8); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB5BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=6;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=9:16 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-8) = subplot(2,4,PredictionHorizon-8); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB6BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
        
    Battery=7;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=9:16 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-8) = subplot(2,4,PredictionHorizon-8); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB7BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
           
    Battery=8;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=9:16 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-8) = subplot(2,4,PredictionHorizon-8); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB8BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
           
    Battery=9;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=9:16 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-8) = subplot(2,4,PredictionHorizon-8); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB9BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
           
    Battery=10;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=9:16 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-8) = subplot(2,4,PredictionHorizon-8); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB10BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Prediction 17-24
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure; % Fuel Usage
    for PredictionHorizon=17:24

        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename);     
        b(PredictionHorizon-16) = subplot(2,4,PredictionHorizon-16);   
        boxplot_hour(1,10,'Fuel Usage','Liters',FuelUsage)  
        sgtitle(['Prediction Horizon 17-24 for uncertainty ', num2str(uncertainty)]);

    end 
    
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname5 = strcat('FigureGBoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Generator','.pdf');
    saveas(fig,figname5,'pdf')
    
    
Battery=1;

    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=17:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-16) = subplot(2,4,PredictionHorizon-16); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB1BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=2;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=17:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-16) = subplot(2,4,PredictionHorizon-16); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB2BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=3;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=17:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-16) = subplot(2,4,PredictionHorizon-16); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB3BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=4;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=17:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-16) = subplot(2,4,PredictionHorizon-16); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB4BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=5;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=17:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-16) = subplot(2,4,PredictionHorizon-16); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB5BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
    
    Battery=6;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=17:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-16) = subplot(2,4,PredictionHorizon-16); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB6BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
        
    Battery=7;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=17:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-16) = subplot(2,4,PredictionHorizon-16); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB7BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
           
    Battery=8;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=17:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-16) = subplot(2,4,PredictionHorizon-16); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB8BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
           
    Battery=9;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=17:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-16) = subplot(2,4,PredictionHorizon-16); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB9BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')
           
    Battery=10;
    
    figure;     % Provides the figure for the first 8 predictions               
    for PredictionHorizon=17:24 % predictions were grouped to easily see subplot
        filename= strcat('Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon));
        load(filename); % load a specific file 
        a(PredictionHorizon-16) = subplot(2,4,PredictionHorizon-16); % subplot for first 8    
        boxplot_hour(1,10,'Vehicle Charges', 'kWh', squeeze(VehicleBatteryCharges(Battery,:,:)))
        sgtitle(['Prediction Horizon 1-8 for uncertainty ', num2str(uncertainty),'Battery',num2str(Battery)]);
    end 
   
    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname2 = strcat('FigureB10BoxPlot','Rand',num2str(uncertainty),'Horizon',num2str(PredictionHorizon),'Battery',num2str(Battery),'.pdf');
    saveas(fig,figname2,'pdf')

    
%% Section that determines the uncertainty
% in this section we are running the while loop so that it covers rand 0,1,
% 5, and 10. 
    if uncertainty== 0
        uncertainty=uncertainty+1; 
    
    elseif uncertainty==1
        uncertainty=uncertainty+4;
    else
        uncertainty=uncertainty+5;
    end
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %% ESDD Research Lab Fall 2019
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

