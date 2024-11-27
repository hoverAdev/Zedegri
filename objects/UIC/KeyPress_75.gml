/// @description Save Object Data
// You can write your code in this editor
var Save_String = "";

//IsAvailable 0 = not available, 1 = is available
//Jacob, Ella, Doc, Abby, Azin, Fiona, sOLDIER, sPOILERS 

Save_String = string("{0}{1}{2}{3}{4}{5}{6}{7}\n",Jacob_Available,Ella_Available,Doc_Available,Abby_Available,Azin_Available,Fiona_Available,JO_Available,Spoiler_Available); //Humans
Save_String += string("{0}{1}{2}{3}{4}{5}{6}{7}{8}{9}{10}\n", JJA,JTA,EKA,EMA,EHA,DTA,ASA,ALA,AHA,FAA,JAA); //Zedegri

//items 
Save_String += string("{0},{1},{2},", JC_WPN.name,JC_AMR.name,JC_CHM.name);
Save_String += string("{0},{1},{2},", EL_WPN.name,EL_AMR.name,EL_CHM.name);
Save_String += string("{0},{1},{2},", DC_WPN.name,DC_AMR.name,DC_CHM.name);
Save_String += string("{0},{1},{2},", AB_WPN.name,AB_AMR.name,AB_CHM.name);
Save_String += string("{0},{1},{2},", AZ_WPN.name,AZ_AMR.name,AZ_CHM.name);
Save_String += string("{0},{1},{2},", FN_WPN.name,FN_AMR.name,FN_CHM.name);
Save_String += string("{0},{1},{2},", JO_WPN.name,JO_AMR.name,JO_CHM.name);
Save_String += string("{0},{1},{2},", ZM_WPN.name,ZM_AMR.name,ZM_CHM.name);

Save_String += string("{0},{1},",JZ_WPN.name,JZ_CHM.name);
Save_String += string("{0},{1},",TS_WPN.name,TS_CHM.name);

Save_String += string("{0},{1},",KI_WPN.name,KI_CHM.name);
Save_String += string("{0},{1},",MI_WPN.name,MI_CHM.name);
Save_String += string("{0},{1},",HA_WPN.name,HA_CHM.name);

Save_String += string("{0},{1},",TR_WPN.name,TR_CHM.name);

Save_String += string("{0},{1},",SL_WPN.name,SL_CHM.name);
Save_String += string("{0},{1},",SO_WPN.name,SO_CHM.name);

Save_String += string("{0},{1},",HD_WPN.name,HD_CHM.name);

Save_String += string("{0},{1},",AF_WPN.name,AF_CHM.name);

Save_String += string("{0},{1}", AM_WPN.name,AM_CHM.name);


var filename = working_directory + "config.json";
var file = file_text_open_write(filename);
file_text_write_string(file, Save_String);
file_text_close(file);