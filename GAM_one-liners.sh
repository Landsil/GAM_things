0. Name
  Command here *** bla bla xxx bla bla
  
    *** = means that
    XXX = means this
    domain = your full domain eg: github.com

1. Update your GAM
  bash <(curl -s -S -L https://git.io/fhZWP) -l
  
  
2. Full list of all chrome devices with full info. (chromebook / chromebox with a lincence), saves to csv
  gam print cros full > devices.csv
 
 
3. Show GDrive file ownership based only on file ID
  gam show ownership ***
    
    *** = fileID eg. iwuehrfiuehfiuewrfivnweijrnv
    
    
4. Give EDIT access to file, nothing more will happen
  gam user xxx add drivefileacl *** user $$$ role writer
    
    xxx = owner's email eg. user.name@github.com
    *** = fileID eg. iwuehrfiuehfiuewrfivnweijrnv
    $$$ = who should get file, can be a group eg. IT@github.com
