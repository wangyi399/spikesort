% preferences file for spikesort
% spikesort has many preferences, and, instead of wasting time building more and more UI to handle them, all preferences are in this text file (like in Sublime Text)
% this is meant to be read by readPref
% 
% created by Srinivas Gorur-Shandilya at 4:52 , 16 September 2015. Contact me at http://srinivas.gs/contact/
% 
% This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. 
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.


%% ~~~~~~~~~~~~~~~~~  DATA  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

deltat = 1e-4; % what is the time step of the data?


%% ~~~~~~~~~~~~~~~~~  GENERAL  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ssDebug = false; 			% should spikesort run in debug mode?
useFastBandPass = true; 	% use a fast, FFT-based bandPass? 

%% ~~~~~~~~~~~~~~~~~  DISPLAY  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

% display preferences
marker_size = 5; 			% how big the spike indicators are
show_r2 = false;			% show r2 in firing rate plot
fs = 14; 					% UI font size
fw = 'bold'; 				% UI font weight
plot_control = true; 		% should spikesort plot the control signals instead of the stimulus?

% UI
smart_scroll = true; 				% intelligently scroll so we keep # visible spikes constant 
% context width: window around the spike to show when clicked on in a reduced representation
context_width = .2; % seconds. 

% density peaks automatic cluster visualization 
show_dp_clusters = true;

%% ~~~~~~~~~~~~~~~~~  FIRING RATE ESTIMATION  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

% firing rate estimation
show_firing_rate_trials = false; % calculate firing rate on a trial-by-trial basis?
show_firing_rate_r2 = false; 	% show r-square of firing rates?
firing_rate_dt = 1e-1; % time step for firing rate estimation 
firing_rate_window_size = 3e-2; % window size for firing rate convolution

%% ~~~~~~~~~~~~~~~~~  SPIKE DETECTION AND RESOLUTION ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

% spike detection
t_before = 20; 		% should be an integer, in units of data samples
t_after = 25; 		% should be an integer, in units of data samples 
minimum_peak_prominence = 'auto'; 	% minimum peak prominence for peak detection. you can use 'auto' or you can also specify a scalar value
minimum_peak_width = 1;
minimum_peak_distance = 1; 			% how separated should the peaks be?
V_cutoff = -1; 						% ignore peaks beyond this limit 
band_pass = [100 1000]; 			% in Hz. band pass V to find spikes more easily 
invert_V = true; 					% sometimes, it is easier to find spikes if you invert V

% spike resolution
remove_doublets = true;				% resolve doublet peaks, which are very likely AB or BA, not AA or BB
doublet_distance = 40; 				% how far out should you look for doublets? 


% artifact removal 
remove_artifacts = 'off'; % 'on' or 'off'. 
template_width = 100;
template_amount = 0; 
use_off_template = false;
use_on_template = false;



