%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Capacity Shortage DMAP
%% Electrical Power Shortage (kW) DMAP
%% saves to pdf all the figures
%%
%% Co-Authors Fall 2019
%% Musodiq Ogunlow
%% Dr. A Mechtenberg
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ESDD Lab - Electricity and Power Load of Health Care Center Research
% Last revision: October 1st 2019
% This is a program that aims at creating a way to analyze data from 
% Homer Pro simulations to look at moving from Stability to Chaos in Health
% Care Centers
%
% 1.  Convert the CSV into MatLab .mat file in the program
% 2.  DMAP for Capacity Shortage
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figurenumber=1;

figure(100)
hold on
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % %% No Chaos
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    T_NoChaos=readtable('Guzamala_CS00_PL19_3kWh_d_NoChaos.csv');          % csv filename
    % Capacity Shortage No Chaos
    CS_NoChaos=T_NoChaos{:,19};
    save('Guzamala_CS00_PL19_3kWh_d_NoChaos.mat','CS_NoChaos');      % Saved as .mat workspace file
      
    CS_final_NoChaos=CS_NoChaos(2:8761);
    
    CS_final_NoChaos2=cellfun(@str2num,CS_final_NoChaos);
    
    subplot(2,4,figurenumber);
        vector2matrix(1,20000,figurenumber,'Capacity Shortage - No Chaos','kW',CS_final_NoChaos2)
    figurenumber=figurenumber+1;
    subplot(2,4,figurenumber);
        vector2matrix2(1,20000,figurenumber,'Capacity Shortage - No Chaos','kW',CS_final_NoChaos2)
    figurenumber=figurenumber+1;
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % %% Minimal Chaos
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    T_MinimalChaos=readtable('Guzamala_CS10_PL40kWh_d_MinimalChaos.csv');          % csv filename
    % Capacity Shortage Minimal Chaos
    CS_MinimalChaos=T_MinimalChaos{:,19};
    save('Guzamala_CS10_PL40kWh_d_MinimalChaos.mat','CS_MinimalChaos');      % Saved as .mat workspace file
      
    CS_final_MinimalChaos=CS_MinimalChaos(2:8761);
    
    CS_final_MinimalChaos2=cellfun(@str2num,CS_final_MinimalChaos);
    
    subplot(2,4,figurenumber);
        vector2matrix(1,20000,figurenumber,'Capacity Shortage - Minimal','kW',CS_final_MinimalChaos2)
    figurenumber=figurenumber+1;
    subplot(2,4,figurenumber);
        vector2matrix2(1,20000,figurenumber,'Capacity Shortage - Minimal','kW',CS_final_MinimalChaos2)
    figurenumber=figurenumber+1;
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % %% Medium Chaos
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    T_Medium_Chaos=readtable('Guzamala_CS20_PL50kWh_d_MediumChaos.csv');          % csv filename
    % Capacity Shortage Medium Chaos
    CS_Medium_Chaos=T_Medium_Chaos{:,19};
    save('Guzamala_CS20_PL50kWh_d_MediumChaos.mat','CS_Medium_Chaos');      % Saved as .mat workspace file
      
    CS_final_Medium_Chaos=CS_Medium_Chaos(2:8761);
    
    CS_final_Medium_Chaos2=cellfun(@str2num,CS_final_Medium_Chaos);
    
    subplot(2,4,figurenumber);
        vector2matrix(1,10,figurenumber,'Capacity Shortage - Medium','kW',CS_final_Medium_Chaos2)
    figurenumber=figurenumber+1;
    subplot(2,4,figurenumber);
        vector2matrix2(1,10,figurenumber,'Capacity Shortage - Medium','kW',CS_final_Medium_Chaos2)
    figurenumber=figurenumber+1;
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % %% Complete Chaos
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    T_Complete_Chaos=readtable('Guzamala_CS40_PL55kWh_d.csv');          % csv filename
    % Capacity Shortage Complete Chaos
    CS_Complete_Chaos=T_Complete_Chaos{:,19};
    save('Guzamala_CS40_PL55kWh_d.mat','CS_Complete_Chaos');      % Saved as .mat workspace file
      
    CS_final_Complete_Chaos=CS_Complete_Chaos(2:8761);
    
    CS_final_Complete_Chaos2=cellfun(@str2num,CS_final_Complete_Chaos);
    
    subplot(2,4,figurenumber);
        vector2matrix(1,20000,figurenumber,'Capacity Shortage - Complete Chaos','kW',CS_final_Complete_Chaos2)
    figurenumber=figurenumber+1;
    subplot(2,4,figurenumber);
        vector2matrix2(1,20000,figurenumber,'Capacity Shortage - Complete Chaos','kW',CS_final_Complete_Chaos2)
hold off

    fig = gcf;
        fig.PaperUnits = 'inches';
        % fig.PaperPosition = [left bottom width height]
        fig.PaperSize = [12 15];
        fig.PaperPosition = [0 0 15 12];
        fig.PaperOrientation = 'landscape';
    figname1 = strcat('Guzamala_Figures_Capacity_Shortages','.pdf');
    saveas(fig,figname1,'pdf')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %% ESDD Research Lab Fall 2019
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

