function write_setupfile_text(datafile,subID,runNum)    
    n=strfind(datafile, '/'); filename = [datafile(1:n(end)) 'putInSetupfile.txt'];   
    stimfile = datafile(n(end)+6:end); clear n;
    
    if isempty(str2num(subID(end)))
        subNum=str2num(subID(1:end-1));
        iterNum=num2str(uint8((subID(end)))-96);
    else
        subNum=str2num(subID);
        iterNum='1';
    end
    
    fid=fopen(filename,'a');
    s=dir(filename); s=s.bytes;
    if s==0
        fprintf(fid,'%s \n',['dicomdir' iterNum ' = fullfile(EXPT.data_dir,' ...
            char(39) 'subj' subID char(39) ',' char(39) 'dicoms' char(39) ');']);
        fprintf(fid,'%s \n',['niftidir' iterNum ' = fullfile(EXPT.data_dir,' ...
            char(39) 'subj' subID char(39) ',' char(39) 'nii' char(39) ');']);
        fprintf(fid,'%s \n\n',['paradir' iterNum ' = fullfile(EXPT.data_dir,' ...
            char(39) 'subj' subID char(39) ',' char(39) 'onsets' char(39) ');']);
    end
    
    
    fprintf(fid,'%s \n',['EXPT.subject(' subNum ').functional(xx).run = ' runNum ';']);
    fprintf(fid,'%s \n',['EXPT.subject(' subNum ').functional(xx).name = ' ...
        char(39) stimfile char(39) ';']);
    fprintf(fid,'%s \n',['EXPT.subject(' subNum ')' ...
        '.functional(xx).dicomdir = dicomdir' iterNum ';']);
    fprintf(fid,'%s \n',['EXPT.subject(' subNum ')' ...
        '.functional(xx).niftidir = niftidir' iterNum ';']);
    fprintf(fid,'%s \n\n',['EXPT.subject(' subNum ')' ...
        '.functional(xx).para{3} = fullfile(paradir' iterNum ',' ...
        char(39) 'subj' subID '_' num2str(runNum,'%02d') '_ICGT_zero.para' char(39) ');']);
    
    fclose(fid);

end