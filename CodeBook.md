# Codebook

### Feature Selection

The features selected for this database are *averages* of the accelerometer and gyroscope 3-axial raw signals from "A Public Domain Dataset for Human Activity Recognition Using Smartphones."  
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The measurements that were averaged come from the accelerometer and gyroscope 3-axial raw signals Time Accelr XYZ and Time Gyromr XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Body Accelr XYZ and Gravity Accelr XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Body Accelr Jerk  XYZ and Body Gyromr Jerk XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Magnetr added to variable name). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing variables prefixed with FFT.

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: Mean: Mean value  
SD: Standard deviation  

### Variables

The complete list of variables of each sample is below:  


 [1] "Activity Desc"                         
 [2] "Subject"                               
 [3] "Time Body Accelr Mean X"               
 [4] "Time Body Accelr Mean Y"               
 [5] "Time Body Accelr Mean Z"               
 [6] "Time Body Accelr SD X"                 
 [7] "Time Body Accelr SD Y"                 
 [8] "Time Body Accelr SD Z"                 
 [9] "Time Gravity Accelr Mean X"            
[10] "Time Gravity Accelr Mean Y"            
[11] "Time Gravity Accelr Mean Z"            
[12] "Time Gravity Accelr SD X"              
[13] "Time Gravity Accelr SD Y"              
[14] "Time Gravity Accelr SD Z"              
[15] "Time Body Accelr Jerk Mean X"          
[16] "Time Body Accelr Jerk Mean Y"          
[17] "Time Body Accelr Jerk Mean Z"          
[18] "Time Body Accelr Jerk SD X"            
[19] "Time Body Accelr Jerk SD Y"            
[20] "Time Body Accelr Jerk SD Z"            
[21] "Time Body Gyromr Mean X"               
[22] "Time Body Gyromr Mean Y"               
[23] "Time Body Gyromr Mean Z"               
[24] "Time Body Gyromr SD X"                 
[25] "Time Body Gyromr SD Y"                 
[26] "Time Body Gyromr SD Z"                 
[27] "Time Body Gyromr Jerk Mean X"          
[28] "Time Body Gyromr Jerk Mean Y"          
[29] "Time Body Gyromr Jerk Mean Z"          
[30] "Time Body Gyromr Jerk SD X"            
[31] "Time Body Gyromr Jerk SD Y"            
[32] "Time Body Gyromr Jerk SD Z"            
[33] "Time Body Accelr Magnetr Mean"         
[34] "Time Body Accelr Magnetr SD"           
[35] "Time Gravity Accelr Magnetr Mean"      
[36] "Time Gravity Accelr Magnetr SD"        
[37] "Time Body Accelr Jerk Magnetr Mean"    
[38] "Time Body Accelr Jerk Magnetr SD"      
[39] "Time Body Gyromr Magnetr Mean"         
[40] "Time Body Gyromr Magnetr SD"           
[41] "Time Body Gyromr Jerk Magnetr Mean"    
[42] "Time Body Gyromr Jerk Magnetr SD"      
[43] "FFT Body Accelr Mean X"                
[44] "FFT Body Accelr Mean Y"                
[45] "FFT Body Accelr Mean Z"                
[46] "FFT Body Accelr SD X"                  
[47] "FFT Body Accelr SD Y"                  
[48] "FFT Body Accelr SD Z"                  
[49] "FFT Body Accelr Jerk Mean X"           
[50] "FFT Body Accelr Jerk Mean Y"           
[51] "FFT Body Accelr Jerk Mean Z"           
[52] "FFT Body Accelr Jerk SD X"             
[53] "FFT Body Accelr Jerk SD Y"             
[54] "FFT Body Accelr Jerk SD Z"             
[55] "FFT Body Gyromr Mean X"                
[56] "FFT Body Gyromr Mean Y"                
[57] "FFT Body Gyromr Mean Z"                
[58] "FFT Body Gyromr SD X"                  
[59] "FFT Body Gyromr SD Y"                  
[60] "FFT Body Gyromr SD Z"                  
[61] "FFT Body Accelr Magnetr Mean"          
[62] "FFT Body Accelr Magnetr SD"            
[63] "FFT Body Body Accelr Jerk Magnetr Mean"
[64] "FFT Body Body Accelr Jerk Magnetr SD"  
[65] "FFT Body Body Gyromr Magnetr Mean"     
[66] "FFT Body Body Gyromr Magnetr SD"       
[67] "FFT Body Body Gyromr Jerk Magnetr Mean"
[68] "FFT Body Body Gyromr Jerk Magnetr SD"  

### Attribution  

Dataset used in this analyses from:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 