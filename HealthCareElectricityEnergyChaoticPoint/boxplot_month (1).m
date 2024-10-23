function boxplot_month(h,figurenumber,type,unit,x)

global Vector_Jan
global Vector_Feb
global Vector_Mar
global Vector_Apr
global Vector_May
global Vector_Jun
global Vector_Jul
global Vector_Aug
global Vector_Sep
global Vector_Oct
global Vector_Nov
global Vector_Dec

% NOTE: Default boxplot_month(1,10,1,'Solar Radiance','kW/m2',Matrix of Data)

% Graphing Time-Increment (h), type and units of data (type/unit) and Data (x)
% This will generate a figure of the monthly statistics from the matrix of Yearly Data 
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

% The following takes the yearly matrix data and creates monthly vectors to
% then graph the statistics of the monthly variance.

% January Distribution
k=1;
jandays=31;
for i=1:jandays
    for j=1:24
        Vector_Jan(k,1)=x(j,i);
         if(Vector_Jan(k,1)<0.01)
            Vector_Jan(k,1)=0.01*randn();
        end
        k=k+1;
    end
end

% Feb Distribution
k=1;
daystotal=jandays;
febdays=28;
for i=daystotal:(daystotal+febdays)
    for j=1:24
        Vector_Feb(k,1)=x(j,i);
         if(Vector_Feb(k,1)<0.01)
            Vector_Feb(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end

% March Distribution
k=1;
daystotal=daystotal+febdays;
mardays=31;
for i=daystotal:(daystotal+mardays)
    for j=1:24
        Vector_Mar(k,1)=x(j,i);
         if(Vector_Mar(k,1)<0.01)
            Vector_Mar(k,1)=0.01*randn();
         end        
        k=k+1;
    end
end

% April Distribution
k=1;
daystotal=daystotal+mardays;
aprdays=30;
for i=daystotal:(daystotal+aprdays)
    for j=1:24
        Vector_Apr(k,1)=x(j,i);
         if(Vector_Apr(k,1)<0.01)
            Vector_Apr(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end

% May Distribution
k=1;
daystotal=daystotal+aprdays;
maydays=31;
for i=daystotal:(daystotal+maydays)
    for j=1:24
        Vector_May(k,1)=x(j,i);
         if(Vector_May(k,1)<0.01)
            Vector_May(k,1)=0.01*randn();
        end       
        k=k+1;
    end
end

% June Distribution
k=1;
daystotal=daystotal+maydays;
jundays=30;
for i=daystotal:(daystotal+jundays)
    for j=1:24
        Vector_Jun(k,1)=x(j,i);
         if(Vector_Jun(k,1)<0.01)
            Vector_Jun(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end

% July Distribution
k=1;
daystotal=daystotal+jundays;
juldays=31;
for i=daystotal:(daystotal+juldays)
    for j=1:24
        Vector_Jul(k,1)=x(j,i);
         if(Vector_Jul(k,1)<0.01)
            Vector_Jul(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end

% August Distribution
k=1;
daystotal=daystotal+juldays;
augdays=31;
for i=daystotal:(daystotal+augdays)
    for j=1:24
        Vector_Aug(k,1)=x(j,i);
         if(Vector_Aug(k,1)<0.01)
            Vector_Aug(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end

% September Distribution
k=1;
daystotal=daystotal+augdays;
sepdays=30;
for i=daystotal:(daystotal+sepdays)
    for j=1:24
        Vector_Sep(k,1)=x(j,i);
         if(Vector_Sep(k,1)<0.01)
            Vector_Sep(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end

% October Distribution
k=1;
daystotal=daystotal+sepdays;
octdays=31;
for i=daystotal:(daystotal+sepdays)
    for j=1:24
        Vector_Oct(k,1)=x(j,i);
         if(Vector_Oct(k,1)<0.01)
            Vector_Oct(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end

% November Distribution
k=1;
daystotal=daystotal+octdays;
novdays=30;
for i=daystotal:(daystotal+novdays)
    for j=1:24
        Vector_Nov(k,1)=x(j,i);
         if(Vector_Nov(k,1)<0.01)
            Vector_Nov(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end

% December Distribution
k=1;
daystotal=daystotal+novdays;
decdays=31;
for i=daystotal:(daystotal+decdays)
    for j=1:24
        Vector_Dec(k,1)=x(j,i);
         if(Vector_Dec(k,1)<0.01)
            Vector_Dec(k,1)=0.01*randn();
        end        
        k=k+1;
    end
end

% Note this distripution plot does not do well if all the values are the
% same in the vector. Because of this we will add small random variability
% to the average so that it will plot it.

% Will do this later....

% This creates the boxplot figure for the monthly statistical variance. It
% will take the data with the yearly matrix and then generate the figure
% with the proper titles and axes and labels.

if(h==1)                                      % This is for the time increment of a Year - hour-by-hour each DAY (24 x 365)

    distributionPlot({Vector_Jan,Vector_Feb,Vector_Mar,Vector_Apr,Vector_May,Vector_Jun,Vector_Jul,Vector_Aug,Vector_Sep,Vector_Oct,Vector_Nov,Vector_Dec},1.9,1,{'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'})
     title('Monthly Statistics','FontSize',12)
     ylabel([type,' (',unit,')'],'FontSize',12)
     set(gca,'YLim',[0 1.2*max(max(x))])

end

end
