function boxplot_hour(h,figurenumber,type,unit,x)
          
global Vector_1AM
global Vector_2AM
global Vector_3AM
global Vector_4AM
global Vector_5AM
global Vector_6AM
global Vector_7AM
global Vector_8AM
global Vector_9AM
global Vector_10AM
global Vector_11AM
global Vector_12PM
global Vector_1PM
global Vector_2PM
global Vector_3PM
global Vector_4PM
global Vector_5PM
global Vector_6PM
global Vector_7PM
global Vector_8PM
global Vector_9PM
global Vector_10PM
global Vector_11PM
global Vector_12AM


% NOTE: Default boxplot_hour(1,10,1,'Solar Radiance','kW/m2',Matrix of Data)

% Graphing Time-Increment (h), type and units of data (type/unit) and Data (x)
% This will generate a figure of the hourly statistics from the matrix of Yearly Data 
% When type='Yearly Solar Radiance' string then this will be the title
% When unit='kW/m2' string then this will be the units for the title
% When h=1, then it will graph hour-by-hour data
% When max=10, then a gradient of ten colors will be used
% When unit=kW/m2, then the units on the graph will be printed as this.
% When h=1 and the x-vector is solar radiance (kW/m2), then the graph will be
% hour-by-hour solar resource

if(h==1)       % This is for the time increment of a Year - hour-by-hour each DAY (24 x 365)
    days=365;  % This means the vertical-axis on Matrix graph will be days of year (365)
    hours=24;  % Therefore, the horizontal-axis will be hours in a day (24)
end            

% The following takes the yearly matrix data and creates hourly vectors to
% then graph the statistics of the hourly variance.

% 1 AM Distribution
k=1;
for i=1:365
    for j=1:1
        Vector_1AM(k,1)=x(j,i);
        if(Vector_1AM(k,1)<0.01)
            Vector_1AM(k,1)=0.01*randn();
        end 
        k=k+1;
    end
end
% 2 AM Distribution
k=1;
for i=1:365
    for j=2:2
        Vector_2AM(k,1)=x(j,i);
        if(Vector_2AM(k,1)<0.01)
            Vector_2AM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end
% 3 AM Distribution
k=1;
for i=1:365
    for j=3:3
        Vector_3AM(k,1)=x(j,i);
        if(Vector_3AM(k,1)<0.01)
            Vector_3AM(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end
% 4 AM Distribution
k=1;
for i=1:365
    for j=4:4
        Vector_4AM(k,1)=x(j,i);
        if(Vector_4AM(k,1)<0.01)
            Vector_4AM(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end
% 5 AM Distribution
k=1;
for i=1:365
    for j=5:5
        Vector_5AM(k,1)=x(j,i);
        if(Vector_5AM(k,1)<0.01)
            Vector_5AM(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end
% 6 AM Distribution
k=1;
for i=1:365
    for j=6:6
        Vector_6AM(k,1)=x(j,i);
        if(Vector_6AM(k,1)<0.01)
            Vector_6AM(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end
% 7 AM Distribution
k=1;
for i=1:365
    for j=7:7
        Vector_7AM(k,1)=x(j,i);
        if(Vector_7AM(k,1)<0.01)
            Vector_7AM(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end
% 8 AM Distribution
k=1;
for i=1:365
    for j=8:8
        Vector_8AM(k,1)=x(j,i);
        if(Vector_8AM(k,1)<0.01)
            Vector_8AM(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end
% 9 AM Distribution
k=1;
for i=1:365
    for j=9:9
        Vector_9AM(k,1)=x(j,i);
         if(Vector_9AM(k,1)<0.01)
            Vector_9AM(k,1)=0.01*randn();
        end       
        k=k+1;
    end
end
% 10 AM Distribution
k=1;
for i=1:365
    for j=10:10
        Vector_10AM(k,1)=x(j,i);
         if(Vector_10AM(k,1)<0.01)
            Vector_10AM(k,1)=0.01*randn();
        end       
        k=k+1;
    end
end
% 11 AM Distribution
k=1;
for i=1:365
    for j=11:11
        Vector_11AM(k,1)=x(j,i);
        if(Vector_11AM(k,1)<0.01)
            Vector_11AM(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end
% 12 PM Distribution
k=1;
for i=1:365
    for j=12:12
        Vector_12PM(k,1)=x(j,i);
        if(Vector_12PM(k,1)<0.01)
            Vector_12PM(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end
% 1 PM Distribution
k=1;
for i=1:365
    for j=13:13
        Vector_1PM(k,1)=x(j,i);
        if(Vector_1PM(k,1)<0.01)
            Vector_1PM(k,1)=0.01*randn();
        end 
        k=k+1;
    end
end
% 2 PM Distribution
k=1;
for i=1:365
    for j=14:14
        Vector_2PM(k,1)=x(j,i);
        if(Vector_2PM(k,1)<0.01)
            Vector_2PM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end
% 3 PM Distribution
k=1;
for i=1:365
    for j=15:15
        Vector_3PM(k,1)=x(j,i);
        if(Vector_3PM(k,1)<0.01)
            Vector_3PM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end
% 4 PM Distribution
k=1;
for i=1:365
    for j=16:16
        Vector_4PM(k,1)=x(j,i);
        if(Vector_4PM(k,1)<0.01)
            Vector_4PM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end
% 5 PM Distribution
k=1;
for i=1:365
    for j=17:17
        Vector_5PM(k,1)=x(j,i);
        if(Vector_5PM(k,1)<0.01)
            Vector_5PM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end
% 6 PM Distribution
k=1;
for i=1:365
    for j=18:18
        Vector_6PM(k,1)=x(j,i);
        if(Vector_6PM(k,1)<0.01)
            Vector_6PM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end
% 7 PM Distribution
k=1;
for i=1:365
    for j=19:19
        Vector_7PM(k,1)=x(j,i);
        if(Vector_7PM(k,1)<0.01)
            Vector_7PM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end
% 8 PM Distribution
k=1;
for i=1:365
    for j=20:20
        Vector_8PM(k,1)=x(j,i);
        if(Vector_8PM(k,1)<0.01)
            Vector_8PM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end
% 9 PM Distribution
k=1;
for i=1:365
    for j=21:21
        Vector_9PM(k,1)=x(j,i);
        if(Vector_9PM(k,1)<0.01)
            Vector_9PM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end
% 10 PM Distribution
k=1;
for i=1:365
    for j=22:22
        Vector_10PM(k,1)=x(j,i);
        if(Vector_10PM(k,1)<0.01)
            Vector_10PM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end
% 11 PM Distribution
k=1;
for i=1:365
    for j=23:23
        Vector_11PM(k,1)=x(j,i);
        if(Vector_11PM(k,1)<0.01)
            Vector_11PM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end
% 12 AM Distribution
k=1;
for i=1:365
    for j=24:24
        Vector_12AM(k,1)=x(j,i);
        if(Vector_12AM(k,1)<0.01)
            Vector_12AM(k,1)=0.01*randn();
        end
        k=k+1;
    end
end

% This creates the boxplot figure for the hourly statistical variance. It
% will take the data with the yearly matrix and then generate the figure
% with the proper titles and axes and labels.

if(h==1)                                      % This is for the time increment of a Year - hour-by-hour each DAY (24 x 365) 
    distributionPlot({Vector_1AM,Vector_2AM,Vector_3AM,Vector_4AM,Vector_5AM,Vector_6AM,Vector_7AM,Vector_8AM,Vector_9AM,Vector_10AM,Vector_11AM,Vector_12PM,...
    Vector_1PM,Vector_2PM,Vector_3PM,Vector_4PM,Vector_5PM,Vector_6PM,Vector_7PM,Vector_8PM,Vector_9PM,Vector_10PM,Vector_11PM,Vector_12AM},1.9,1,{'1AM','2AM','3AM','4AM','5AM','6AM','7AM','8AM','9AM','10AM','11AM','12PM','1PM','2PM','3PM','4PM','5PM','6PM','7PM','8PM','9PM','10PM','11PM','12AM'})
     title('Hourly Statistics','FontSize',12)
     ylabel([type,' (',unit,')'],'FontSize',12)
     set(gca,'YLim',[0 1.2*max(max(x))])
end

end