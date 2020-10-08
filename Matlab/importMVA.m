function InsoleDat = importMVA(filename, dataLines)
%IMPORTFILE1 Import data from a text file
%  BRETTHIKE1 = IMPORTFILE1(FILENAME) reads data from text file FILENAME
%  for the default selection.  Returns the data as a table.
%
%  BRETTHIKE1 = IMPORTFILE1(FILE, DATALINES) reads data for the
%  specified row interval(s) of text file FILENAME. Specify DATALINES as
%  a positive scalar integer or a N-by-2 array of positive scalar
%  integers for dis-contiguous row intervals.
%
%  Example:
%  BrettHike1 = importfile1("C:\Users\Daniel.Feeney\Dropbox (Boa)\Hike Work Research\Data\BrettHike1.txt.txt", [2, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 28-Feb-2020 11:38:15

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [2, Inf];
end

%% Setup the Import Options
opts = delimitedTextImportOptions("NumVariables", 9);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = "\t";

% Specify column names and types
opts.VariableNames = ["timesecs", "forceN", "maxpressure", "meanpressure", "PctMean", "forceN1", "maxpressure1", "meanpressure1", "PctMean2"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double"];
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
InsoleDat = readtable(filename, opts);

end