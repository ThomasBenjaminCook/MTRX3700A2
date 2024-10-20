module ALTERA_DEVICE_FAMILIES;

function IS_FAMILY_ARRIA10;
    input[8*20:1] device;
    reg is_arria10;
begin
    if ((device == "Arria 10") || (device == "ARRIA 10") || (device == "arria 10") || (device == "Arria10") || (device == "ARRIA10") || (device == "arria10") || (device == "Arria VI") || (device == "ARRIA VI") || (device == "arria vi") || (device == "ArriaVI") || (device == "ARRIAVI") || (device == "arriavi") || (device == "Night Fury") || (device == "NIGHT FURY") || (device == "night fury") || (device == "nightfury") || (device == "NIGHTFURY") || (device == "Arria 10 (GX/SX/GT)") || (device == "ARRIA 10 (GX/SX/GT)") || (device == "arria 10 (gx/sx/gt)") || (device == "Arria10(GX/SX/GT)") || (device == "ARRIA10(GX/SX/GT)") || (device == "arria10(gx/sx/gt)") || (device == "Arria 10 (GX)") || (device == "ARRIA 10 (GX)") || (device == "arria 10 (gx)") || (device == "Arria10(GX)") || (device == "ARRIA10(GX)") || (device == "arria10(gx)") || (device == "Arria 10 (SX)") || (device == "ARRIA 10 (SX)") || (device == "arria 10 (sx)") || (device == "Arria10(SX)") || (device == "ARRIA10(SX)") || (device == "arria10(sx)") || (device == "Arria 10 (GT)") || (device == "ARRIA 10 (GT)") || (device == "arria 10 (gt)") || (device == "Arria10(GT)") || (device == "ARRIA10(GT)") || (device == "arria10(gt)"))
        is_arria10 = 1;
    else
        is_arria10 = 0;

    IS_FAMILY_ARRIA10  = is_arria10;
end
endfunction //IS_FAMILY_ARRIA10

function IS_FAMILY_ARRIAGX;
    input[8*20:1] device;
    reg is_arriagx;
begin
    if ((device == "Arria GX") || (device == "ARRIA GX") || (device == "arria gx") || (device == "ArriaGX") || (device == "ARRIAGX") || (device == "arriagx") || (device == "Stratix II GX Lite") || (device == "STRATIX II GX LITE") || (device == "stratix ii gx lite") || (device == "StratixIIGXLite") || (device == "STRATIXIIGXLITE") || (device == "stratixiigxlite"))
        is_arriagx = 1;
    else
        is_arriagx = 0;

    IS_FAMILY_ARRIAGX  = is_arriagx;
end
endfunction //IS_FAMILY_ARRIAGX

function IS_FAMILY_ARRIAIIGX;
    input[8*20:1] device;
    reg is_arriaiigx;
begin
    if ((device == "Arria II GX") || (device == "ARRIA II GX") || (device == "arria ii gx") || (device == "ArriaIIGX") || (device == "ARRIAIIGX") || (device == "arriaiigx") || (device == "Arria IIGX") || (device == "ARRIA IIGX") || (device == "arria iigx") || (device == "ArriaII GX") || (device == "ARRIAII GX") || (device == "arriaii gx") || (device == "Arria II") || (device == "ARRIA II") || (device == "arria ii") || (device == "ArriaII") || (device == "ARRIAII") || (device == "arriaii") || (device == "Arria II (GX/E)") || (device == "ARRIA II (GX/E)") || (device == "arria ii (gx/e)") || (device == "ArriaII(GX/E)") || (device == "ARRIAII(GX/E)") || (device == "arriaii(gx/e)") || (device == "PIRANHA") || (device == "piranha"))
        is_arriaiigx = 1;
    else
        is_arriaiigx = 0;

    IS_FAMILY_ARRIAIIGX  = is_arriaiigx;
end
endfunction //IS_FAMILY_ARRIAIIGX

function IS_FAMILY_ARRIAIIGZ;
    input[8*20:1] device;
    reg is_arriaiigz;
begin
    if ((device == "Arria II GZ") || (device == "ARRIA II GZ") || (device == "arria ii gz") || (device == "ArriaII GZ") || (device == "ARRIAII GZ") || (device == "arriaii gz") || (device == "Arria IIGZ") || (device == "ARRIA IIGZ") || (device == "arria iigz") || (device == "ArriaIIGZ") || (device == "ARRIAIIGZ") || (device == "arriaiigz"))
        is_arriaiigz = 1;
    else
        is_arriaiigz = 0;

    IS_FAMILY_ARRIAIIGZ  = is_arriaiigz;
end
endfunction //IS_FAMILY_ARRIAIIGZ

function IS_FAMILY_ARRIAVGZ;
    input[8*20:1] device;
    reg is_arriavgz;
begin
    if ((device == "Arria V GZ") || (device == "ARRIA V GZ") || (device == "arria v gz") || (device == "ArriaVGZ") || (device == "ARRIAVGZ") || (device == "arriavgz"))
        is_arriavgz = 1;
    else
        is_arriavgz = 0;

    IS_FAMILY_ARRIAVGZ  = is_arriavgz;
end
endfunction //IS_FAMILY_ARRIAVGZ

function IS_FAMILY_ARRIAV;
    input[8*20:1] device;
    reg is_arriav;
begin
    if ((device == "Arria V") || (device == "ARRIA V") || (device == "arria v") || (device == "Arria V (GT/GX)") || (device == "ARRIA V (GT/GX)") || (device == "arria v (gt/gx)") || (device == "ArriaV(GT/GX)") || (device == "ARRIAV(GT/GX)") || (device == "arriav(gt/gx)") || (device == "ArriaV") || (device == "ARRIAV") || (device == "arriav") || (device == "Arria V (GT/GX/ST/SX)") || (device == "ARRIA V (GT/GX/ST/SX)") || (device == "arria v (gt/gx/st/sx)") || (device == "ArriaV(GT/GX/ST/SX)") || (device == "ARRIAV(GT/GX/ST/SX)") || (device == "arriav(gt/gx/st/sx)") || (device == "Arria V (GT)") || (device == "ARRIA V (GT)") || (device == "arria v (gt)") || (device == "ArriaV(GT)") || (device == "ARRIAV(GT)") || (device == "arriav(gt)") || (device == "Arria V (GX)") || (device == "ARRIA V (GX)") || (device == "arria v (gx)") || (device == "ArriaV(GX)") || (device == "ARRIAV(GX)") || (device == "arriav(gx)") || (device == "Arria V (ST)") || (device == "ARRIA V (ST)") || (device == "arria v (st)") || (device == "ArriaV(ST)") || (device == "ARRIAV(ST)") || (device == "arriav(st)") || (device == "Arria V (SX)") || (device == "ARRIA V (SX)") || (device == "arria v (sx)") || (device == "ArriaV(SX)") || (device == "ARRIAV(SX)") || (device == "arriav(sx)"))
        is_arriav = 1;
    else
        is_arriav = 0;

    IS_FAMILY_ARRIAV  = is_arriav;
end
endfunction //IS_FAMILY_ARRIAV

function IS_FAMILY_CYCLONE10LP;
    input[8*20:1] device;
    reg is_cyclone10lp;
begin
    if ((device == "Cyclone 10 LP") || (device == "CYCLONE 10 LP") || (device == "cyclone 10 lp") || (device == "cyclone10lp") || (device == "CYCLONE10LP") || (device == "Cyclone10lp") || (device == "CYCLONE10LP") || (device == "cyclone10lp") || (device == "C10LP") || (device == "c10lp") || (device == "Cyclone10LP") || (device == "CYCLONE10LP") || (device == "cyclone10lp"))
        is_cyclone10lp = 1;
    else
        is_cyclone10lp = 0;

    IS_FAMILY_CYCLONE10LP  = is_cyclone10lp;
end
endfunction //IS_FAMILY_CYCLONE10LP

function IS_FAMILY_CYCLONEII;
    input[8*20:1] device;
    reg is_cycloneii;
begin
    if ((device == "Cyclone II") || (device == "CYCLONE II") || (device == "cyclone ii") || (device == "Cycloneii") || (device == "CYCLONEII") || (device == "cycloneii") || (device == "Magellan") || (device == "MAGELLAN") || (device == "magellan") || (device == "CycloneII") || (device == "CYCLONEII") || (device == "cycloneii"))
        is_cycloneii = 1;
    else
        is_cycloneii = 0;

    IS_FAMILY_CYCLONEII  = is_cycloneii;
end
endfunction //IS_FAMILY_CYCLONEII

function IS_FAMILY_CYCLONEIIILS;
    input[8*20:1] device;
    reg is_cycloneiiils;
begin
    if ((device == "Cyclone III LS") || (device == "CYCLONE III LS") || (device == "cyclone iii ls") || (device == "CycloneIIILS") || (device == "CYCLONEIIILS") || (device == "cycloneiiils") || (device == "Cyclone III LPS") || (device == "CYCLONE III LPS") || (device == "cyclone iii lps") || (device == "Cyclone LPS") || (device == "CYCLONE LPS") || (device == "cyclone lps") || (device == "CycloneLPS") || (device == "CYCLONELPS") || (device == "cyclonelps") || (device == "Tarpon") || (device == "TARPON") || (device == "tarpon") || (device == "Cyclone IIIE") || (device == "CYCLONE IIIE") || (device == "cyclone iiie"))
        is_cycloneiiils = 1;
    else
        is_cycloneiiils = 0;

    IS_FAMILY_CYCLONEIIILS  = is_cycloneiiils;
end
endfunction //IS_FAMILY_CYCLONEIIILS

function IS_FAMILY_CYCLONEIII;
    input[8*20:1] device;
    reg is_cycloneiii;
begin
    if ((device == "Cyclone III") || (device == "CYCLONE III") || (device == "cyclone iii") || (device == "CycloneIII") || (device == "CYCLONEIII") || (device == "cycloneiii") || (device == "Barracuda") || (device == "BARRACUDA") || (device == "barracuda") || (device == "Cuda") || (device == "CUDA") || (device == "cuda") || (device == "CIII") || (device == "ciii"))
        is_cycloneiii = 1;
    else
        is_cycloneiii = 0;

    IS_FAMILY_CYCLONEIII  = is_cycloneiii;
end
endfunction //IS_FAMILY_CYCLONEIII

function IS_FAMILY_CYCLONEIVE;
    input[8*20:1] device;
    reg is_cycloneive;
begin
    if ((device == "Cyclone IV E") || (device == "CYCLONE IV E") || (device == "cyclone iv e") || (device == "CycloneIV E") || (device == "CYCLONEIV E") || (device == "cycloneiv e") || (device == "Cyclone IVE") || (device == "CYCLONE IVE") || (device == "cyclone ive") || (device == "CycloneIVE") || (device == "CYCLONEIVE") || (device == "cycloneive"))
        is_cycloneive = 1;
    else
        is_cycloneive = 0;

    IS_FAMILY_CYCLONEIVE  = is_cycloneive;
end
endfunction //IS_FAMILY_CYCLONEIVE

function IS_FAMILY_CYCLONEIVGX;
    input[8*20:1] device;
    reg is_cycloneivgx;
begin
    if ((device == "Cyclone IV GX") || (device == "CYCLONE IV GX") || (device == "cyclone iv gx") || (device == "Cyclone IVGX") || (device == "CYCLONE IVGX") || (device == "cyclone ivgx") || (device == "CycloneIV GX") || (device == "CYCLONEIV GX") || (device == "cycloneiv gx") || (device == "CycloneIVGX") || (device == "CYCLONEIVGX") || (device == "cycloneivgx") || (device == "Cyclone IV") || (device == "CYCLONE IV") || (device == "cyclone iv") || (device == "CycloneIV") || (device == "CYCLONEIV") || (device == "cycloneiv") || (device == "Cyclone IV (GX)") || (device == "CYCLONE IV (GX)") || (device == "cyclone iv (gx)") || (device == "CycloneIV(GX)") || (device == "CYCLONEIV(GX)") || (device == "cycloneiv(gx)") || (device == "Cyclone III GX") || (device == "CYCLONE III GX") || (device == "cyclone iii gx") || (device == "CycloneIII GX") || (device == "CYCLONEIII GX") || (device == "cycloneiii gx") || (device == "Cyclone IIIGX") || (device == "CYCLONE IIIGX") || (device == "cyclone iiigx") || (device == "CycloneIIIGX") || (device == "CYCLONEIIIGX") || (device == "cycloneiiigx") || (device == "Cyclone III GL") || (device == "CYCLONE III GL") || (device == "cyclone iii gl") || (device == "CycloneIII GL") || (device == "CYCLONEIII GL") || (device == "cycloneiii gl") || (device == "Cyclone IIIGL") || (device == "CYCLONE IIIGL") || (device == "cyclone iiigl") || (device == "CycloneIIIGL") || (device == "CYCLONEIIIGL") || (device == "cycloneiiigl") || (device == "Stingray") || (device == "STINGRAY") || (device == "stingray"))
        is_cycloneivgx = 1;
    else
        is_cycloneivgx = 0;

    IS_FAMILY_CYCLONEIVGX  = is_cycloneivgx;
end
endfunction //IS_FAMILY_CYCLONEIVGX

function IS_FAMILY_CYCLONEV;
    input[8*20:1] device;
    reg is_cyclonev;
begin
    if ((device == "Cyclone V") || (device == "CYCLONE V") || (device == "cyclone v") || (device == "CycloneV") || (device == "CYCLONEV") || (device == "cyclonev") || (device == "Cyclone V (GT/GX/E/SX)") || (device == "CYCLONE V (GT/GX/E/SX)") || (device == "cyclone v (gt/gx/e/sx)") || (device == "CycloneV(GT/GX/E/SX)") || (device == "CYCLONEV(GT/GX/E/SX)") || (device == "cyclonev(gt/gx/e/sx)") || (device == "Cyclone V (E/GX/GT/SX/SE/ST)") || (device == "CYCLONE V (E/GX/GT/SX/SE/ST)") || (device == "cyclone v (e/gx/gt/sx/se/st)") || (device == "CycloneV(E/GX/GT/SX/SE/ST)") || (device == "CYCLONEV(E/GX/GT/SX/SE/ST)") || (device == "cyclonev(e/gx/gt/sx/se/st)") || (device == "Cyclone V (E)") || (device == "CYCLONE V (E)") || (device == "cyclone v (e)") || (device == "CycloneV(E)") || (device == "CYCLONEV(E)") || (device == "cyclonev(e)") || (device == "Cyclone V (GX)") || (device == "CYCLONE V (GX)") || (device == "cyclone v (gx)") || (device == "CycloneV(GX)") || (device == "CYCLONEV(GX)") || (device == "cyclonev(gx)") || (device == "Cyclone V (GT)") || (device == "CYCLONE V (GT)") || (device == "cyclone v (gt)") || (device == "CycloneV(GT)") || (device == "CYCLONEV(GT)") || (device == "cyclonev(gt)") || (device == "Cyclone V (SX)") || (device == "CYCLONE V (SX)") || (device == "cyclone v (sx)") || (device == "CycloneV(SX)") || (device == "CYCLONEV(SX)") || (device == "cyclonev(sx)") || (device == "Cyclone V (SE)") || (device == "CYCLONE V (SE)") || (device == "cyclone v (se)") || (device == "CycloneV(SE)") || (device == "CYCLONEV(SE)") || (device == "cyclonev(se)") || (device == "Cyclone V (ST)") || (device == "CYCLONE V (ST)") || (device == "cyclone v (st)") || (device == "CycloneV(ST)") || (device == "CYCLONEV(ST)") || (device == "cyclonev(st)"))
        is_cyclonev = 1;
    else
        is_cyclonev = 0;

    IS_FAMILY_CYCLONEV  = is_cyclonev;
end
endfunction //IS_FAMILY_CYCLONEV

function IS_FAMILY_CYCLONE;
    input[8*20:1] device;
    reg is_cyclone;
begin
    if ((device == "Cyclone") || (device == "CYCLONE") || (device == "cyclone") || (device == "ACEX2K") || (device == "acex2k") || (device == "ACEX 2K") || (device == "acex 2k") || (device == "Tornado") || (device == "TORNADO") || (device == "tornado"))
        is_cyclone = 1;
    else
        is_cyclone = 0;

    IS_FAMILY_CYCLONE  = is_cyclone;
end
endfunction //IS_FAMILY_CYCLONE

function IS_FAMILY_HARDCOPYII;
    input[8*20:1] device;
    reg is_hardcopyii;
begin
    if ((device == "HardCopy II") || (device == "HARDCOPY II") || (device == "hardcopy ii") || (device == "HardCopyII") || (device == "HARDCOPYII") || (device == "hardcopyii") || (device == "Fusion") || (device == "FUSION") || (device == "fusion"))
        is_hardcopyii = 1;
    else
        is_hardcopyii = 0;

    IS_FAMILY_HARDCOPYII  = is_hardcopyii;
end
endfunction //IS_FAMILY_HARDCOPYII

function IS_FAMILY_HARDCOPYIII;
    input[8*20:1] device;
    reg is_hardcopyiii;
begin
    if ((device == "HardCopy III") || (device == "HARDCOPY III") || (device == "hardcopy iii") || (device == "HardCopyIII") || (device == "HARDCOPYIII") || (device == "hardcopyiii") || (device == "HCX") || (device == "hcx"))
        is_hardcopyiii = 1;
    else
        is_hardcopyiii = 0;

    IS_FAMILY_HARDCOPYIII  = is_hardcopyiii;
end
endfunction //IS_FAMILY_HARDCOPYIII

function IS_FAMILY_HARDCOPYIV;
    input[8*20:1] device;
    reg is_hardcopyiv;
begin
    if ((device == "HardCopy IV") || (device == "HARDCOPY IV") || (device == "hardcopy iv") || (device == "HardCopyIV") || (device == "HARDCOPYIV") || (device == "hardcopyiv") || (device == "HardCopy IV (GX)") || (device == "HARDCOPY IV (GX)") || (device == "hardcopy iv (gx)") || (device == "HardCopy IV (E)") || (device == "HARDCOPY IV (E)") || (device == "hardcopy iv (e)") || (device == "HardCopyIV(GX)") || (device == "HARDCOPYIV(GX)") || (device == "hardcopyiv(gx)") || (device == "HardCopyIV(E)") || (device == "HARDCOPYIV(E)") || (device == "hardcopyiv(e)") || (device == "HCXIV") || (device == "hcxiv") || (device == "HardCopy IV (GX/E)") || (device == "HARDCOPY IV (GX/E)") || (device == "hardcopy iv (gx/e)") || (device == "HardCopy IV (E/GX)") || (device == "HARDCOPY IV (E/GX)") || (device == "hardcopy iv (e/gx)") || (device == "HardCopyIV(GX/E)") || (device == "HARDCOPYIV(GX/E)") || (device == "hardcopyiv(gx/e)") || (device == "HardCopyIV(E/GX)") || (device == "HARDCOPYIV(E/GX)") || (device == "hardcopyiv(e/gx)"))
        is_hardcopyiv = 1;
    else
        is_hardcopyiv = 0;

    IS_FAMILY_HARDCOPYIV  = is_hardcopyiv;
end
endfunction //IS_FAMILY_HARDCOPYIV

function IS_FAMILY_MAX10;
    input[8*20:1] device;
    reg is_max10;
begin
    if ((device == "MAX 10") || (device == "max 10") || (device == "MAX 10 FPGA") || (device == "max 10 fpga") || (device == "Zippleback") || (device == "ZIPPLEBACK") || (device == "zippleback") || (device == "MAX10") || (device == "max10") || (device == "MAX 10 (DA/DF/DC/SA/SC)") || (device == "max 10 (da/df/dc/sa/sc)") || (device == "MAX10(DA/DF/DC/SA/SC)") || (device == "max10(da/df/dc/sa/sc)") || (device == "MAX 10 (DA)") || (device == "max 10 (da)") || (device == "MAX10(DA)") || (device == "max10(da)") || (device == "MAX 10 (DF)") || (device == "max 10 (df)") || (device == "MAX10(DF)") || (device == "max10(df)") || (device == "MAX 10 (DC)") || (device == "max 10 (dc)") || (device == "MAX10(DC)") || (device == "max10(dc)") || (device == "MAX 10 (SA)") || (device == "max 10 (sa)") || (device == "MAX10(SA)") || (device == "max10(sa)") || (device == "MAX 10 (SC)") || (device == "max 10 (sc)") || (device == "MAX10(SC)") || (device == "max10(sc)"))
        is_max10 = 1;
    else
        is_max10 = 0;

    IS_FAMILY_MAX10  = is_max10;
end
endfunction //IS_FAMILY_MAX10

function IS_FAMILY_MAXII;
    input[8*20:1] device;
    reg is_maxii;
begin
    if ((device == "MAX II") || (device == "max ii") || (device == "MAXII") || (device == "maxii") || (device == "Tsunami") || (device == "TSUNAMI") || (device == "tsunami"))
        is_maxii = 1;
    else
        is_maxii = 0;

    IS_FAMILY_MAXII  = is_maxii;
end
endfunction //IS_FAMILY_MAXII

function IS_FAMILY_MAXV;
    input[8*20:1] device;
    reg is_maxv;
begin
    if ((device == "MAX V") || (device == "max v") || (device == "MAXV") || (device == "maxv") || (device == "Jade") || (device == "JADE") || (device == "jade"))
        is_maxv = 1;
    else
        is_maxv = 0;

    IS_FAMILY_MAXV  = is_maxv;
end
endfunction //IS_FAMILY_MAXV

function IS_FAMILY_STRATIX10;
    input[8*20:1] device;
    reg is_stratix10;
begin
    if ((device == "Stratix 10") || (device == "STRATIX 10") || (device == "stratix 10") || (device == "Stratix10") || (device == "STRATIX10") || (device == "stratix10") || (device == "nadder") || (device == "NADDER") || (device == "Stratix 10 (GX/SX)") || (device == "STRATIX 10 (GX/SX)") || (device == "stratix 10 (gx/sx)") || (device == "Stratix10(GX/SX)") || (device == "STRATIX10(GX/SX)") || (device == "stratix10(gx/sx)") || (device == "Stratix 10 (GX)") || (device == "STRATIX 10 (GX)") || (device == "stratix 10 (gx)") || (device == "Stratix10(GX)") || (device == "STRATIX10(GX)") || (device == "stratix10(gx)") || (device == "Stratix 10 (SX)") || (device == "STRATIX 10 (SX)") || (device == "stratix 10 (sx)") || (device == "Stratix10(SX)") || (device == "STRATIX10(SX)") || (device == "stratix10(sx)"))
        is_stratix10 = 1;
    else
        is_stratix10 = 0;

    IS_FAMILY_STRATIX10  = is_stratix10;
end
endfunction //IS_FAMILY_STRATIX10

function IS_FAMILY_STRATIXGX;
    input[8*20:1] device;
    reg is_stratixgx;
begin
    if ((device == "Stratix GX") || (device == "STRATIX GX") || (device == "stratix gx") || (device == "Stratix-GX") || (device == "STRATIX-GX") || (device == "stratix-gx") || (device == "StratixGX") || (device == "STRATIXGX") || (device == "stratixgx") || (device == "Aurora") || (device == "AURORA") || (device == "aurora"))
        is_stratixgx = 1;
    else
        is_stratixgx = 0;

    IS_FAMILY_STRATIXGX  = is_stratixgx;
end
endfunction //IS_FAMILY_STRATIXGX

function IS_FAMILY_STRATIXIIGX;
    input[8*20:1] device;
    reg is_stratixiigx;
begin
    if ((device == "Stratix II GX") || (device == "STRATIX II GX") || (device == "stratix ii gx") || (device == "StratixIIGX") || (device == "STRATIXIIGX") || (device == "stratixiigx"))
        is_stratixiigx = 1;
    else
        is_stratixiigx = 0;

    IS_FAMILY_STRATIXIIGX  = is_stratixiigx;
end
endfunction //IS_FAMILY_STRATIXIIGX

function IS_FAMILY_STRATIXII;
    input[8*20:1] device;
    reg is_stratixii;
begin
    if ((device == "Stratix II") || (device == "STRATIX II") || (device == "stratix ii") || (device == "StratixII") || (device == "STRATIXII") || (device == "stratixii") || (device == "Armstrong") || (device == "ARMSTRONG") || (device == "armstrong"))
        is_stratixii = 1;
    else
        is_stratixii = 0;

    IS_FAMILY_STRATIXII  = is_stratixii;
end
endfunction //IS_FAMILY_STRATIXII

function IS_FAMILY_STRATIXIII;
    input[8*20:1] device;
    reg is_stratixiii;
begin
    if ((device == "Stratix III") || (device == "STRATIX III") || (device == "stratix iii") || (device == "StratixIII") || (device == "STRATIXIII") || (device == "stratixiii") || (device == "Titan") || (device == "TITAN") || (device == "titan") || (device == "SIII") || (device == "siii"))
        is_stratixiii = 1;
    else
        is_stratixiii = 0;

    IS_FAMILY_STRATIXIII  = is_stratixiii;
end
endfunction //IS_FAMILY_STRATIXIII

function IS_FAMILY_STRATIXIV;
    input[8*20:1] device;
    reg is_stratixiv;
begin
    if ((device == "Stratix IV") || (device == "STRATIX IV") || (device == "stratix iv") || (device == "TGX") || (device == "tgx") || (device == "StratixIV") || (device == "STRATIXIV") || (device == "stratixiv") || (device == "Stratix IV (GT)") || (device == "STRATIX IV (GT)") || (device == "stratix iv (gt)") || (device == "Stratix IV (GX)") || (device == "STRATIX IV (GX)") || (device == "stratix iv (gx)") || (device == "Stratix IV (E)") || (device == "STRATIX IV (E)") || (device == "stratix iv (e)") || (device == "StratixIV(GT)") || (device == "STRATIXIV(GT)") || (device == "stratixiv(gt)") || (device == "StratixIV(GX)") || (device == "STRATIXIV(GX)") || (device == "stratixiv(gx)") || (device == "StratixIV(E)") || (device == "STRATIXIV(E)") || (device == "stratixiv(e)") || (device == "StratixIIIGX") || (device == "STRATIXIIIGX") || (device == "stratixiiigx") || (device == "Stratix IV (GT/GX/E)") || (device == "STRATIX IV (GT/GX/E)") || (device == "stratix iv (gt/gx/e)") || (device == "Stratix IV (GT/E/GX)") || (device == "STRATIX IV (GT/E/GX)") || (device == "stratix iv (gt/e/gx)") || (device == "Stratix IV (E/GT/GX)") || (device == "STRATIX IV (E/GT/GX)") || (device == "stratix iv (e/gt/gx)") || (device == "Stratix IV (E/GX/GT)") || (device == "STRATIX IV (E/GX/GT)") || (device == "stratix iv (e/gx/gt)") || (device == "StratixIV(GT/GX/E)") || (device == "STRATIXIV(GT/GX/E)") || (device == "stratixiv(gt/gx/e)") || (device == "StratixIV(GT/E/GX)") || (device == "STRATIXIV(GT/E/GX)") || (device == "stratixiv(gt/e/gx)") || (device == "StratixIV(E/GX/GT)") || (device == "STRATIXIV(E/GX/GT)") || (device == "stratixiv(e/gx/gt)") || (device == "StratixIV(E/GT/GX)") || (device == "STRATIXIV(E/GT/GX)") || (device == "stratixiv(e/gt/gx)") || (device == "Stratix IV (GX/E)") || (device == "STRATIX IV (GX/E)") || (device == "stratix iv (gx/e)") || (device == "StratixIV(GX/E)") || (device == "STRATIXIV(GX/E)") || (device == "stratixiv(gx/e)"))
        is_stratixiv = 1;
    else
        is_stratixiv = 0;

    IS_FAMILY_STRATIXIV  = is_stratixiv;
end
endfunction //IS_FAMILY_STRATIXIV

function IS_FAMILY_STRATIXV;
    input[8*20:1] device;
    reg is_stratixv;
begin
    if ((device == "Stratix V") || (device == "STRATIX V") || (device == "stratix v") || (device == "StratixV") || (device == "STRATIXV") || (device == "stratixv") || (device == "Stratix V (GS)") || (device == "STRATIX V (GS)") || (device == "stratix v (gs)") || (device == "StratixV(GS)") || (device == "STRATIXV(GS)") || (device == "stratixv(gs)") || (device == "Stratix V (GT)") || (device == "STRATIX V (GT)") || (device == "stratix v (gt)") || (device == "StratixV(GT)") || (device == "STRATIXV(GT)") || (device == "stratixv(gt)") || (device == "Stratix V (GX)") || (device == "STRATIX V (GX)") || (device == "stratix v (gx)") || (device == "StratixV(GX)") || (device == "STRATIXV(GX)") || (device == "stratixv(gx)") || (device == "Stratix V (GS/GX)") || (device == "STRATIX V (GS/GX)") || (device == "stratix v (gs/gx)") || (device == "StratixV(GS/GX)") || (device == "STRATIXV(GS/GX)") || (device == "stratixv(gs/gx)") || (device == "Stratix V (GS/GT)") || (device == "STRATIX V (GS/GT)") || (device == "stratix v (gs/gt)") || (device == "StratixV(GS/GT)") || (device == "STRATIXV(GS/GT)") || (device == "stratixv(gs/gt)") || (device == "Stratix V (GT/GX)") || (device == "STRATIX V (GT/GX)") || (device == "stratix v (gt/gx)") || (device == "StratixV(GT/GX)") || (device == "STRATIXV(GT/GX)") || (device == "stratixv(gt/gx)") || (device == "Stratix V (GX/GS)") || (device == "STRATIX V (GX/GS)") || (device == "stratix v (gx/gs)") || (device == "StratixV(GX/GS)") || (device == "STRATIXV(GX/GS)") || (device == "stratixv(gx/gs)") || (device == "Stratix V (GT/GS)") || (device == "STRATIX V (GT/GS)") || (device == "stratix v (gt/gs)") || (device == "StratixV(GT/GS)") || (device == "STRATIXV(GT/GS)") || (device == "stratixv(gt/gs)") || (device == "Stratix V (GX/GT)") || (device == "STRATIX V (GX/GT)") || (device == "stratix v (gx/gt)") || (device == "StratixV(GX/GT)") || (device == "STRATIXV(GX/GT)") || (device == "stratixv(gx/gt)") || (device == "Stratix V (GS/GT/GX)") || (device == "STRATIX V (GS/GT/GX)") || (device == "stratix v (gs/gt/gx)") || (device == "Stratix V (GS/GX/GT)") || (device == "STRATIX V (GS/GX/GT)") || (device == "stratix v (gs/gx/gt)") || (device == "Stratix V (GT/GS/GX)") || (device == "STRATIX V (GT/GS/GX)") || (device == "stratix v (gt/gs/gx)") || (device == "Stratix V (GT/GX/GS)") || (device == "STRATIX V (GT/GX/GS)") || (device == "stratix v (gt/gx/gs)") || (device == "Stratix V (GX/GS/GT)") || (device == "STRATIX V (GX/GS/GT)") || (device == "stratix v (gx/gs/gt)") || (device == "Stratix V (GX/GT/GS)") || (device == "STRATIX V (GX/GT/GS)") || (device == "stratix v (gx/gt/gs)") || (device == "StratixV(GS/GT/GX)") || (device == "STRATIXV(GS/GT/GX)") || (device == "stratixv(gs/gt/gx)") || (device == "StratixV(GS/GX/GT)") || (device == "STRATIXV(GS/GX/GT)") || (device == "stratixv(gs/gx/gt)") || (device == "StratixV(GT/GS/GX)") || (device == "STRATIXV(GT/GS/GX)") || (device == "stratixv(gt/gs/gx)") || (device == "StratixV(GT/GX/GS)") || (device == "STRATIXV(GT/GX/GS)") || (device == "stratixv(gt/gx/gs)") || (device == "StratixV(GX/GS/GT)") || (device == "STRATIXV(GX/GS/GT)") || (device == "stratixv(gx/gs/gt)") || (device == "StratixV(GX/GT/GS)") || (device == "STRATIXV(GX/GT/GS)") || (device == "stratixv(gx/gt/gs)") || (device == "Stratix V (GS/GT/GX/E)") || (device == "STRATIX V (GS/GT/GX/E)") || (device == "stratix v (gs/gt/gx/e)") || (device == "StratixV(GS/GT/GX/E)") || (device == "STRATIXV(GS/GT/GX/E)") || (device == "stratixv(gs/gt/gx/e)") || (device == "Stratix V (E)") || (device == "STRATIX V (E)") || (device == "stratix v (e)") || (device == "StratixV(E)") || (device == "STRATIXV(E)") || (device == "stratixv(e)"))
        is_stratixv = 1;
    else
        is_stratixv = 0;

    IS_FAMILY_STRATIXV  = is_stratixv;
end
endfunction //IS_FAMILY_STRATIXV

function IS_FAMILY_STRATIX;
    input[8*20:1] device;
    reg is_stratix;
begin
    if ((device == "Stratix") || (device == "STRATIX") || (device == "stratix") || (device == "Yeager") || (device == "YEAGER") || (device == "yeager"))
        is_stratix = 1;
    else
        is_stratix = 0;

    IS_FAMILY_STRATIX  = is_stratix;
end
endfunction //IS_FAMILY_STRATIX

function FEATURE_FAMILY_STRATIXGX;
    input[8*20:1] device;
    reg var_family_stratixgx;
begin
    if (IS_FAMILY_STRATIXGX(device) )
        var_family_stratixgx = 1;
    else
        var_family_stratixgx = 0;

    FEATURE_FAMILY_STRATIXGX  = var_family_stratixgx;
end
endfunction //FEATURE_FAMILY_STRATIXGX

function FEATURE_FAMILY_CYCLONE;
    input[8*20:1] device;
    reg var_family_cyclone;
begin
    if (IS_FAMILY_CYCLONE(device) )
        var_family_cyclone = 1;
    else
        var_family_cyclone = 0;

    FEATURE_FAMILY_CYCLONE  = var_family_cyclone;
end
endfunction //FEATURE_FAMILY_CYCLONE

function FEATURE_FAMILY_STRATIXIIGX;
    input[8*20:1] device;
    reg var_family_stratixiigx;
begin
    if (IS_FAMILY_STRATIXIIGX(device) || IS_FAMILY_ARRIAGX(device) )
        var_family_stratixiigx = 1;
    else
        var_family_stratixiigx = 0;

    FEATURE_FAMILY_STRATIXIIGX  = var_family_stratixiigx;
end
endfunction //FEATURE_FAMILY_STRATIXIIGX

function FEATURE_FAMILY_STRATIXIII;
    input[8*20:1] device;
    reg var_family_stratixiii;
begin
    if (IS_FAMILY_STRATIXIII(device) || FEATURE_FAMILY_STRATIXIV(device) || FEATURE_FAMILY_HARDCOPYIII(device) )
        var_family_stratixiii = 1;
    else
        var_family_stratixiii = 0;

    FEATURE_FAMILY_STRATIXIII  = var_family_stratixiii;
end
endfunction //FEATURE_FAMILY_STRATIXIII

function FEATURE_FAMILY_ARRIAVGZ;
    input[8*20:1] device;
    reg var_family_arriavgz;
begin
    if (IS_FAMILY_ARRIAVGZ(device) )
        var_family_arriavgz = 1;
    else
        var_family_arriavgz = 0;

    FEATURE_FAMILY_ARRIAVGZ  = var_family_arriavgz;
end
endfunction //FEATURE_FAMILY_ARRIAVGZ

function FEATURE_FAMILY_STRATIXV;
    input[8*20:1] device;
    reg var_family_stratixv;
begin
    if (IS_FAMILY_STRATIXV(device) || FEATURE_FAMILY_ARRIAVGZ(device) )
        var_family_stratixv = 1;
    else
        var_family_stratixv = 0;

    FEATURE_FAMILY_STRATIXV  = var_family_stratixv;
end
endfunction //FEATURE_FAMILY_STRATIXV

function FEATURE_FAMILY_ARRIA10;
    input[8*20:1] device;
    reg var_family_arria10;
begin
    if (IS_FAMILY_ARRIA10(device) || IS_FAMILY_ARRIA10(device) )
        var_family_arria10 = 1;
    else
        var_family_arria10 = 0;

    FEATURE_FAMILY_ARRIA10  = var_family_arria10;
end
endfunction //FEATURE_FAMILY_ARRIA10

function FEATURE_FAMILY_CYCLONE10LP;
    input[8*20:1] device;
    reg var_family_cyclone10lp;
begin
    if (IS_FAMILY_CYCLONE10LP(device) || IS_FAMILY_CYCLONE10LP(device) )
        var_family_cyclone10lp = 1;
    else
        var_family_cyclone10lp = 0;

    FEATURE_FAMILY_CYCLONE10LP  = var_family_cyclone10lp;
end
endfunction //FEATURE_FAMILY_CYCLONE10LP

function FEATURE_FAMILY_STRATIXII;
    input[8*20:1] device;
    reg var_family_stratixii;
begin
    if (IS_FAMILY_STRATIXII(device) || IS_FAMILY_HARDCOPYII(device) || FEATURE_FAMILY_STRATIXIIGX(device) || FEATURE_FAMILY_STRATIXIII(device) )
        var_family_stratixii = 1;
    else
        var_family_stratixii = 0;

    FEATURE_FAMILY_STRATIXII  = var_family_stratixii;
end
endfunction //FEATURE_FAMILY_STRATIXII

function FEATURE_FAMILY_CYCLONEIVGX;
    input[8*20:1] device;
    reg var_family_cycloneivgx;
begin
    if (IS_FAMILY_CYCLONEIVGX(device) || IS_FAMILY_CYCLONEIVGX(device) )
        var_family_cycloneivgx = 1;
    else
        var_family_cycloneivgx = 0;

    FEATURE_FAMILY_CYCLONEIVGX  = var_family_cycloneivgx;
end
endfunction //FEATURE_FAMILY_CYCLONEIVGX

function FEATURE_FAMILY_CYCLONEIVE;
    input[8*20:1] device;
    reg var_family_cycloneive;
begin
    if (IS_FAMILY_CYCLONEIVE(device) || FEATURE_FAMILY_CYCLONE10LP(device) )
        var_family_cycloneive = 1;
    else
        var_family_cycloneive = 0;

    FEATURE_FAMILY_CYCLONEIVE  = var_family_cycloneive;
end
endfunction //FEATURE_FAMILY_CYCLONEIVE

function FEATURE_FAMILY_CYCLONEIII;
    input[8*20:1] device;
    reg var_family_cycloneiii;
begin
    if (IS_FAMILY_CYCLONEIII(device) || IS_FAMILY_CYCLONEIIILS(device) || FEATURE_FAMILY_CYCLONEIVGX(device) || FEATURE_FAMILY_CYCLONEIVE(device) || FEATURE_FAMILY_MAX10(device) || FEATURE_FAMILY_CYCLONE10LP(device) )
        var_family_cycloneiii = 1;
    else
        var_family_cycloneiii = 0;

    FEATURE_FAMILY_CYCLONEIII  = var_family_cycloneiii;
end
endfunction //FEATURE_FAMILY_CYCLONEIII

function FEATURE_FAMILY_STRATIX_HC;
    input[8*20:1] device;
    reg var_family_stratix_hc;
begin
    if ((device == "StratixHC") )
        var_family_stratix_hc = 1;
    else
        var_family_stratix_hc = 0;

    FEATURE_FAMILY_STRATIX_HC  = var_family_stratix_hc;
end
endfunction //FEATURE_FAMILY_STRATIX_HC

function FEATURE_FAMILY_STRATIX;
    input[8*20:1] device;
    reg var_family_stratix;
begin
    if (IS_FAMILY_STRATIX(device) || FEATURE_FAMILY_STRATIX_HC(device) || FEATURE_FAMILY_STRATIXGX(device) || FEATURE_FAMILY_CYCLONE(device) || FEATURE_FAMILY_STRATIXII(device) || FEATURE_FAMILY_MAXII(device) || FEATURE_FAMILY_CYCLONEII(device) )
        var_family_stratix = 1;
    else
        var_family_stratix = 0;

    FEATURE_FAMILY_STRATIX  = var_family_stratix;
end
endfunction //FEATURE_FAMILY_STRATIX

function FEATURE_FAMILY_MAXII;
    input[8*20:1] device;
    reg var_family_maxii;
begin
    if (IS_FAMILY_MAXII(device) || FEATURE_FAMILY_MAXV(device) )
        var_family_maxii = 1;
    else
        var_family_maxii = 0;

    FEATURE_FAMILY_MAXII  = var_family_maxii;
end
endfunction //FEATURE_FAMILY_MAXII

function FEATURE_FAMILY_MAXV;
    input[8*20:1] device;
    reg var_family_maxv;
begin
    if (IS_FAMILY_MAXV(device) )
        var_family_maxv = 1;
    else
        var_family_maxv = 0;

    FEATURE_FAMILY_MAXV  = var_family_maxv;
end
endfunction //FEATURE_FAMILY_MAXV

function FEATURE_FAMILY_CYCLONEII;
    input[8*20:1] device;
    reg var_family_cycloneii;
begin
    if (IS_FAMILY_CYCLONEII(device) || FEATURE_FAMILY_CYCLONEIII(device) )
        var_family_cycloneii = 1;
    else
        var_family_cycloneii = 0;

    FEATURE_FAMILY_CYCLONEII  = var_family_cycloneii;
end
endfunction //FEATURE_FAMILY_CYCLONEII

function FEATURE_FAMILY_STRATIXIV;
    input[8*20:1] device;
    reg var_family_stratixiv;
begin
    if (IS_FAMILY_STRATIXIV(device) || IS_FAMILY_ARRIAIIGX(device) || FEATURE_FAMILY_HARDCOPYIV(device) || FEATURE_FAMILY_STRATIXV(device) || FEATURE_FAMILY_ARRIAV(device) || FEATURE_FAMILY_ARRIAIIGZ(device) || FEATURE_FAMILY_ARRIA10(device) || FEATURE_FAMILY_STRATIX10(device) )
        var_family_stratixiv = 1;
    else
        var_family_stratixiv = 0;

    FEATURE_FAMILY_STRATIXIV  = var_family_stratixiv;
end
endfunction //FEATURE_FAMILY_STRATIXIV

function FEATURE_FAMILY_ARRIAIIGZ;
    input[8*20:1] device;
    reg var_family_arriaiigz;
begin
    if (IS_FAMILY_ARRIAIIGZ(device) )
        var_family_arriaiigz = 1;
    else
        var_family_arriaiigz = 0;

    FEATURE_FAMILY_ARRIAIIGZ  = var_family_arriaiigz;
end
endfunction //FEATURE_FAMILY_ARRIAIIGZ

function FEATURE_FAMILY_ARRIAIIGX;
    input[8*20:1] device;
    reg var_family_arriaiigx;
begin
    if (IS_FAMILY_ARRIAIIGX(device) )
        var_family_arriaiigx = 1;
    else
        var_family_arriaiigx = 0;

    FEATURE_FAMILY_ARRIAIIGX  = var_family_arriaiigx;
end
endfunction //FEATURE_FAMILY_ARRIAIIGX

function FEATURE_FAMILY_HARDCOPYIII;
    input[8*20:1] device;
    reg var_family_hardcopyiii;
begin
    if (IS_FAMILY_HARDCOPYIII(device) || IS_FAMILY_HARDCOPYIII(device) )
        var_family_hardcopyiii = 1;
    else
        var_family_hardcopyiii = 0;

    FEATURE_FAMILY_HARDCOPYIII  = var_family_hardcopyiii;
end
endfunction //FEATURE_FAMILY_HARDCOPYIII

function FEATURE_FAMILY_HARDCOPYIV;
    input[8*20:1] device;
    reg var_family_hardcopyiv;
begin
    if (IS_FAMILY_HARDCOPYIV(device) || IS_FAMILY_HARDCOPYIV(device) )
        var_family_hardcopyiv = 1;
    else
        var_family_hardcopyiv = 0;

    FEATURE_FAMILY_HARDCOPYIV  = var_family_hardcopyiv;
end
endfunction //FEATURE_FAMILY_HARDCOPYIV

function FEATURE_FAMILY_CYCLONEV;
    input[8*20:1] device;
    reg var_family_cyclonev;
begin
    if (IS_FAMILY_CYCLONEV(device) )
        var_family_cyclonev = 1;
    else
        var_family_cyclonev = 0;

    FEATURE_FAMILY_CYCLONEV  = var_family_cyclonev;
end
endfunction //FEATURE_FAMILY_CYCLONEV

function FEATURE_FAMILY_ARRIAV;
    input[8*20:1] device;
    reg var_family_arriav;
begin
    if (IS_FAMILY_ARRIAV(device) || FEATURE_FAMILY_CYCLONEV(device) )
        var_family_arriav = 1;
    else
        var_family_arriav = 0;

    FEATURE_FAMILY_ARRIAV  = var_family_arriav;
end
endfunction //FEATURE_FAMILY_ARRIAV

function FEATURE_FAMILY_MAX10;
    input[8*20:1] device;
    reg var_family_max10;
begin
    if (IS_FAMILY_MAX10(device) )
        var_family_max10 = 1;
    else
        var_family_max10 = 0;

    FEATURE_FAMILY_MAX10  = var_family_max10;
end
endfunction //FEATURE_FAMILY_MAX10

function FEATURE_FAMILY_STRATIX10;
    input[8*20:1] device;
    reg var_family_stratix10;
begin
    if (IS_FAMILY_STRATIX10(device) || IS_FAMILY_STRATIX10(device) )
        var_family_stratix10 = 1;
    else
        var_family_stratix10 = 0;

    FEATURE_FAMILY_STRATIX10  = var_family_stratix10;
end
endfunction //FEATURE_FAMILY_STRATIX10

function FEATURE_FAMILY_BASE_STRATIXII;
    input[8*20:1] device;
    reg var_family_base_stratixii;
begin
    if (IS_FAMILY_STRATIXII(device) || IS_FAMILY_HARDCOPYII(device) || FEATURE_FAMILY_STRATIXIIGX(device) )
        var_family_base_stratixii = 1;
    else
        var_family_base_stratixii = 0;

    FEATURE_FAMILY_BASE_STRATIXII  = var_family_base_stratixii;
end
endfunction //FEATURE_FAMILY_BASE_STRATIXII

function FEATURE_FAMILY_BASE_STRATIX;
    input[8*20:1] device;
    reg var_family_base_stratix;
begin
    if (IS_FAMILY_STRATIX(device) || IS_FAMILY_STRATIXGX(device) )
        var_family_base_stratix = 1;
    else
        var_family_base_stratix = 0;

    FEATURE_FAMILY_BASE_STRATIX  = var_family_base_stratix;
end
endfunction //FEATURE_FAMILY_BASE_STRATIX

function FEATURE_FAMILY_BASE_CYCLONEII;
    input[8*20:1] device;
    reg var_family_base_cycloneii;
begin
    if (IS_FAMILY_CYCLONEII(device) )
        var_family_base_cycloneii = 1;
    else
        var_family_base_cycloneii = 0;

    FEATURE_FAMILY_BASE_CYCLONEII  = var_family_base_cycloneii;
end
endfunction //FEATURE_FAMILY_BASE_CYCLONEII

function FEATURE_FAMILY_BASE_CYCLONE;
    input[8*20:1] device;
    reg var_family_base_cyclone;
begin
    if (IS_FAMILY_CYCLONE(device) )
        var_family_base_cyclone = 1;
    else
        var_family_base_cyclone = 0;

    FEATURE_FAMILY_BASE_CYCLONE  = var_family_base_cyclone;
end
endfunction //FEATURE_FAMILY_BASE_CYCLONE

function FEATURE_FAMILY_HAS_ALTERA_MULT_ADD_FLOW;
    input[8*20:1] device;
    reg var_family_has_altera_mult_add_flow;
begin
    if (FEATURE_FAMILY_STRATIXV(device) || FEATURE_FAMILY_ARRIAV(device) || FEATURE_FAMILY_CYCLONEV(device) || FEATURE_FAMILY_ARRIA10(device) || FEATURE_FAMILY_STRATIX10(device) )
        var_family_has_altera_mult_add_flow = 1;
    else
        var_family_has_altera_mult_add_flow = 0;

    FEATURE_FAMILY_HAS_ALTERA_MULT_ADD_FLOW  = var_family_has_altera_mult_add_flow;
end
endfunction //FEATURE_FAMILY_HAS_ALTERA_MULT_ADD_FLOW

function FEATURE_FAMILY_IS_ALTMULT_ADD_EOL;
    input[8*20:1] device;
    reg var_family_is_altmult_add_eol;
begin
    if (FEATURE_FAMILY_ARRIA10(device) || FEATURE_FAMILY_STRATIX10(device) )
        var_family_is_altmult_add_eol = 1;
    else
        var_family_is_altmult_add_eol = 0;

    FEATURE_FAMILY_IS_ALTMULT_ADD_EOL  = var_family_is_altmult_add_eol;
end
endfunction //FEATURE_FAMILY_IS_ALTMULT_ADD_EOL

function FEATURE_FAMILY_HAS_STRATIXII_STYLE_RAM;
    input[8*20:1] device;
    reg var_family_has_stratixii_style_ram;
begin
    if (FEATURE_FAMILY_STRATIXII(device) || FEATURE_FAMILY_CYCLONEII(device) )
        var_family_has_stratixii_style_ram = 1;
    else
        var_family_has_stratixii_style_ram = 0;

    FEATURE_FAMILY_HAS_STRATIXII_STYLE_RAM  = var_family_has_stratixii_style_ram;
end
endfunction //FEATURE_FAMILY_HAS_STRATIXII_STYLE_RAM

function FEATURE_FAMILY_HAS_STRATIXIII_STYLE_RAM;
    input[8*20:1] device;
    reg var_family_has_stratixiii_style_ram;
begin
    if (FEATURE_FAMILY_STRATIXIII(device) || FEATURE_FAMILY_CYCLONEIII(device) )
        var_family_has_stratixiii_style_ram = 1;
    else
        var_family_has_stratixiii_style_ram = 0;

    FEATURE_FAMILY_HAS_STRATIXIII_STYLE_RAM  = var_family_has_stratixiii_style_ram;
end
endfunction //FEATURE_FAMILY_HAS_STRATIXIII_STYLE_RAM

function FEATURE_FAMILY_HAS_STRATIX_STYLE_PLL;
    input[8*20:1] device;
    reg var_family_has_stratix_style_pll;
begin
    if (FEATURE_FAMILY_CYCLONE(device) || FEATURE_FAMILY_STRATIX_HC(device) || IS_FAMILY_STRATIX(device) || FEATURE_FAMILY_STRATIXGX(device) )
        var_family_has_stratix_style_pll = 1;
    else
        var_family_has_stratix_style_pll = 0;

    FEATURE_FAMILY_HAS_STRATIX_STYLE_PLL  = var_family_has_stratix_style_pll;
end
endfunction //FEATURE_FAMILY_HAS_STRATIX_STYLE_PLL

function FEATURE_FAMILY_HAS_STRATIXII_STYLE_PLL;
    input[8*20:1] device;
    reg var_family_has_stratixii_style_pll;
begin
    if (FEATURE_FAMILY_STRATIXII(device) && ! FEATURE_FAMILY_STRATIXIII(device) || FEATURE_FAMILY_CYCLONEII(device) && ! FEATURE_FAMILY_CYCLONEIII(device) )
        var_family_has_stratixii_style_pll = 1;
    else
        var_family_has_stratixii_style_pll = 0;

    FEATURE_FAMILY_HAS_STRATIXII_STYLE_PLL  = var_family_has_stratixii_style_pll;
end
endfunction //FEATURE_FAMILY_HAS_STRATIXII_STYLE_PLL

function FEATURE_FAMILY_HAS_INVERTED_OUTPUT_DDIO;
    input[8*20:1] device;
    reg var_family_has_inverted_output_ddio;
begin
    if (FEATURE_FAMILY_CYCLONEII(device) )
        var_family_has_inverted_output_ddio = 1;
    else
        var_family_has_inverted_output_ddio = 0;

    FEATURE_FAMILY_HAS_INVERTED_OUTPUT_DDIO  = var_family_has_inverted_output_ddio;
end
endfunction //FEATURE_FAMILY_HAS_INVERTED_OUTPUT_DDIO

function IS_VALID_FAMILY;
    input[8*20:1] device;
    reg is_valid;
begin
    if (((device == "Arria 10") || (device == "ARRIA 10") || (device == "arria 10") || (device == "Arria10") || (device == "ARRIA10") || (device == "arria10") || (device == "Arria VI") || (device == "ARRIA VI") || (device == "arria vi") || (device == "ArriaVI") || (device == "ARRIAVI") || (device == "arriavi") || (device == "Night Fury") || (device == "NIGHT FURY") || (device == "night fury") || (device == "nightfury") || (device == "NIGHTFURY") || (device == "Arria 10 (GX/SX/GT)") || (device == "ARRIA 10 (GX/SX/GT)") || (device == "arria 10 (gx/sx/gt)") || (device == "Arria10(GX/SX/GT)") || (device == "ARRIA10(GX/SX/GT)") || (device == "arria10(gx/sx/gt)") || (device == "Arria 10 (GX)") || (device == "ARRIA 10 (GX)") || (device == "arria 10 (gx)") || (device == "Arria10(GX)") || (device == "ARRIA10(GX)") || (device == "arria10(gx)") || (device == "Arria 10 (SX)") || (device == "ARRIA 10 (SX)") || (device == "arria 10 (sx)") || (device == "Arria10(SX)") || (device == "ARRIA10(SX)") || (device == "arria10(sx)") || (device == "Arria 10 (GT)") || (device == "ARRIA 10 (GT)") || (device == "arria 10 (gt)") || (device == "Arria10(GT)") || (device == "ARRIA10(GT)") || (device == "arria10(gt)"))
    || ((device == "Arria GX") || (device == "ARRIA GX") || (device == "arria gx") || (device == "ArriaGX") || (device == "ARRIAGX") || (device == "arriagx") || (device == "Stratix II GX Lite") || (device == "STRATIX II GX LITE") || (device == "stratix ii gx lite") || (device == "StratixIIGXLite") || (device == "STRATIXIIGXLITE") || (device == "stratixiigxlite"))
    || ((device == "Arria II GX") || (device == "ARRIA II GX") || (device == "arria ii gx") || (device == "ArriaIIGX") || (device == "ARRIAIIGX") || (device == "arriaiigx") || (device == "Arria IIGX") || (device == "ARRIA IIGX") || (device == "arria iigx") || (device == "ArriaII GX") || (device == "ARRIAII GX") || (device == "arriaii gx") || (device == "Arria II") || (device == "ARRIA II") || (device == "arria ii") || (device == "ArriaII") || (device == "ARRIAII") || (device == "arriaii") || (device == "Arria II (GX/E)") || (device == "ARRIA II (GX/E)") || (device == "arria ii (gx/e)") || (device == "ArriaII(GX/E)") || (device == "ARRIAII(GX/E)") || (device == "arriaii(gx/e)") || (device == "PIRANHA") || (device == "piranha"))
    || ((device == "Arria II GZ") || (device == "ARRIA II GZ") || (device == "arria ii gz") || (device == "ArriaII GZ") || (device == "ARRIAII GZ") || (device == "arriaii gz") || (device == "Arria IIGZ") || (device == "ARRIA IIGZ") || (device == "arria iigz") || (device == "ArriaIIGZ") || (device == "ARRIAIIGZ") || (device == "arriaiigz"))
    || ((device == "Arria V GZ") || (device == "ARRIA V GZ") || (device == "arria v gz") || (device == "ArriaVGZ") || (device == "ARRIAVGZ") || (device == "arriavgz"))
    || ((device == "Arria V") || (device == "ARRIA V") || (device == "arria v") || (device == "Arria V (GT/GX)") || (device == "ARRIA V (GT/GX)") || (device == "arria v (gt/gx)") || (device == "ArriaV(GT/GX)") || (device == "ARRIAV(GT/GX)") || (device == "arriav(gt/gx)") || (device == "ArriaV") || (device == "ARRIAV") || (device == "arriav") || (device == "Arria V (GT/GX/ST/SX)") || (device == "ARRIA V (GT/GX/ST/SX)") || (device == "arria v (gt/gx/st/sx)") || (device == "ArriaV(GT/GX/ST/SX)") || (device == "ARRIAV(GT/GX/ST/SX)") || (device == "arriav(gt/gx/st/sx)") || (device == "Arria V (GT)") || (device == "ARRIA V (GT)") || (device == "arria v (gt)") || (device == "ArriaV(GT)") || (device == "ARRIAV(GT)") || (device == "arriav(gt)") || (device == "Arria V (GX)") || (device == "ARRIA V (GX)") || (device == "arria v (gx)") || (device == "ArriaV(GX)") || (device == "ARRIAV(GX)") || (device == "arriav(gx)") || (device == "Arria V (ST)") || (device == "ARRIA V (ST)") || (device == "arria v (st)") || (device == "ArriaV(ST)") || (device == "ARRIAV(ST)") || (device == "arriav(st)") || (device == "Arria V (SX)") || (device == "ARRIA V (SX)") || (device == "arria v (sx)") || (device == "ArriaV(SX)") || (device == "ARRIAV(SX)") || (device == "arriav(sx)"))
    || ((device == "BS") || (device == "bs"))
    || ((device == "Cyclone 10 LP") || (device == "CYCLONE 10 LP") || (device == "cyclone 10 lp") || (device == "cyclone10lp") || (device == "CYCLONE10LP") || (device == "Cyclone10lp") || (device == "CYCLONE10LP") || (device == "cyclone10lp") || (device == "C10LP") || (device == "c10lp") || (device == "Cyclone10LP") || (device == "CYCLONE10LP") || (device == "cyclone10lp"))
    || ((device == "Cyclone II") || (device == "CYCLONE II") || (device == "cyclone ii") || (device == "Cycloneii") || (device == "CYCLONEII") || (device == "cycloneii") || (device == "Magellan") || (device == "MAGELLAN") || (device == "magellan") || (device == "CycloneII") || (device == "CYCLONEII") || (device == "cycloneii"))
    || ((device == "Cyclone III LS") || (device == "CYCLONE III LS") || (device == "cyclone iii ls") || (device == "CycloneIIILS") || (device == "CYCLONEIIILS") || (device == "cycloneiiils") || (device == "Cyclone III LPS") || (device == "CYCLONE III LPS") || (device == "cyclone iii lps") || (device == "Cyclone LPS") || (device == "CYCLONE LPS") || (device == "cyclone lps") || (device == "CycloneLPS") || (device == "CYCLONELPS") || (device == "cyclonelps") || (device == "Tarpon") || (device == "TARPON") || (device == "tarpon") || (device == "Cyclone IIIE") || (device == "CYCLONE IIIE") || (device == "cyclone iiie"))
    || ((device == "Cyclone III") || (device == "CYCLONE III") || (device == "cyclone iii") || (device == "CycloneIII") || (device == "CYCLONEIII") || (device == "cycloneiii") || (device == "Barracuda") || (device == "BARRACUDA") || (device == "barracuda") || (device == "Cuda") || (device == "CUDA") || (device == "cuda") || (device == "CIII") || (device == "ciii"))
    || ((device == "Cyclone IV E") || (device == "CYCLONE IV E") || (device == "cyclone iv e") || (device == "CycloneIV E") || (device == "CYCLONEIV E") || (device == "cycloneiv e") || (device == "Cyclone IVE") || (device == "CYCLONE IVE") || (device == "cyclone ive") || (device == "CycloneIVE") || (device == "CYCLONEIVE") || (device == "cycloneive"))
    || ((device == "Cyclone IV GX") || (device == "CYCLONE IV GX") || (device == "cyclone iv gx") || (device == "Cyclone IVGX") || (device == "CYCLONE IVGX") || (device == "cyclone ivgx") || (device == "CycloneIV GX") || (device == "CYCLONEIV GX") || (device == "cycloneiv gx") || (device == "CycloneIVGX") || (device == "CYCLONEIVGX") || (device == "cycloneivgx") || (device == "Cyclone IV") || (device == "CYCLONE IV") || (device == "cyclone iv") || (device == "CycloneIV") || (device == "CYCLONEIV") || (device == "cycloneiv") || (device == "Cyclone IV (GX)") || (device == "CYCLONE IV (GX)") || (device == "cyclone iv (gx)") || (device == "CycloneIV(GX)") || (device == "CYCLONEIV(GX)") || (device == "cycloneiv(gx)") || (device == "Cyclone III GX") || (device == "CYCLONE III GX") || (device == "cyclone iii gx") || (device == "CycloneIII GX") || (device == "CYCLONEIII GX") || (device == "cycloneiii gx") || (device == "Cyclone IIIGX") || (device == "CYCLONE IIIGX") || (device == "cyclone iiigx") || (device == "CycloneIIIGX") || (device == "CYCLONEIIIGX") || (device == "cycloneiiigx") || (device == "Cyclone III GL") || (device == "CYCLONE III GL") || (device == "cyclone iii gl") || (device == "CycloneIII GL") || (device == "CYCLONEIII GL") || (device == "cycloneiii gl") || (device == "Cyclone IIIGL") || (device == "CYCLONE IIIGL") || (device == "cyclone iiigl") || (device == "CycloneIIIGL") || (device == "CYCLONEIIIGL") || (device == "cycloneiiigl") || (device == "Stingray") || (device == "STINGRAY") || (device == "stingray"))
    || ((device == "Cyclone V") || (device == "CYCLONE V") || (device == "cyclone v") || (device == "CycloneV") || (device == "CYCLONEV") || (device == "cyclonev") || (device == "Cyclone V (GT/GX/E/SX)") || (device == "CYCLONE V (GT/GX/E/SX)") || (device == "cyclone v (gt/gx/e/sx)") || (device == "CycloneV(GT/GX/E/SX)") || (device == "CYCLONEV(GT/GX/E/SX)") || (device == "cyclonev(gt/gx/e/sx)") || (device == "Cyclone V (E/GX/GT/SX/SE/ST)") || (device == "CYCLONE V (E/GX/GT/SX/SE/ST)") || (device == "cyclone v (e/gx/gt/sx/se/st)") || (device == "CycloneV(E/GX/GT/SX/SE/ST)") || (device == "CYCLONEV(E/GX/GT/SX/SE/ST)") || (device == "cyclonev(e/gx/gt/sx/se/st)") || (device == "Cyclone V (E)") || (device == "CYCLONE V (E)") || (device == "cyclone v (e)") || (device == "CycloneV(E)") || (device == "CYCLONEV(E)") || (device == "cyclonev(e)") || (device == "Cyclone V (GX)") || (device == "CYCLONE V (GX)") || (device == "cyclone v (gx)") || (device == "CycloneV(GX)") || (device == "CYCLONEV(GX)") || (device == "cyclonev(gx)") || (device == "Cyclone V (GT)") || (device == "CYCLONE V (GT)") || (device == "cyclone v (gt)") || (device == "CycloneV(GT)") || (device == "CYCLONEV(GT)") || (device == "cyclonev(gt)") || (device == "Cyclone V (SX)") || (device == "CYCLONE V (SX)") || (device == "cyclone v (sx)") || (device == "CycloneV(SX)") || (device == "CYCLONEV(SX)") || (device == "cyclonev(sx)") || (device == "Cyclone V (SE)") || (device == "CYCLONE V (SE)") || (device == "cyclone v (se)") || (device == "CycloneV(SE)") || (device == "CYCLONEV(SE)") || (device == "cyclonev(se)") || (device == "Cyclone V (ST)") || (device == "CYCLONE V (ST)") || (device == "cyclone v (st)") || (device == "CycloneV(ST)") || (device == "CYCLONEV(ST)") || (device == "cyclonev(st)"))
    || ((device == "Cyclone") || (device == "CYCLONE") || (device == "cyclone") || (device == "ACEX2K") || (device == "acex2k") || (device == "ACEX 2K") || (device == "acex 2k") || (device == "Tornado") || (device == "TORNADO") || (device == "tornado"))
    || ((device == "HardCopy II") || (device == "HARDCOPY II") || (device == "hardcopy ii") || (device == "HardCopyII") || (device == "HARDCOPYII") || (device == "hardcopyii") || (device == "Fusion") || (device == "FUSION") || (device == "fusion"))
    || ((device == "HardCopy III") || (device == "HARDCOPY III") || (device == "hardcopy iii") || (device == "HardCopyIII") || (device == "HARDCOPYIII") || (device == "hardcopyiii") || (device == "HCX") || (device == "hcx"))
    || ((device == "HardCopy IV") || (device == "HARDCOPY IV") || (device == "hardcopy iv") || (device == "HardCopyIV") || (device == "HARDCOPYIV") || (device == "hardcopyiv") || (device == "HardCopy IV (GX)") || (device == "HARDCOPY IV (GX)") || (device == "hardcopy iv (gx)") || (device == "HardCopy IV (E)") || (device == "HARDCOPY IV (E)") || (device == "hardcopy iv (e)") || (device == "HardCopyIV(GX)") || (device == "HARDCOPYIV(GX)") || (device == "hardcopyiv(gx)") || (device == "HardCopyIV(E)") || (device == "HARDCOPYIV(E)") || (device == "hardcopyiv(e)") || (device == "HCXIV") || (device == "hcxiv") || (device == "HardCopy IV (GX/E)") || (device == "HARDCOPY IV (GX/E)") || (device == "hardcopy iv (gx/e)") || (device == "HardCopy IV (E/GX)") || (device == "HARDCOPY IV (E/GX)") || (device == "hardcopy iv (e/gx)") || (device == "HardCopyIV(GX/E)") || (device == "HARDCOPYIV(GX/E)") || (device == "hardcopyiv(gx/e)") || (device == "HardCopyIV(E/GX)") || (device == "HARDCOPYIV(E/GX)") || (device == "hardcopyiv(e/gx)"))
    || ((device == "MAX 10") || (device == "max 10") || (device == "MAX 10 FPGA") || (device == "max 10 fpga") || (device == "Zippleback") || (device == "ZIPPLEBACK") || (device == "zippleback") || (device == "MAX10") || (device == "max10") || (device == "MAX 10 (DA/DF/DC/SA/SC)") || (device == "max 10 (da/df/dc/sa/sc)") || (device == "MAX10(DA/DF/DC/SA/SC)") || (device == "max10(da/df/dc/sa/sc)") || (device == "MAX 10 (DA)") || (device == "max 10 (da)") || (device == "MAX10(DA)") || (device == "max10(da)") || (device == "MAX 10 (DF)") || (device == "max 10 (df)") || (device == "MAX10(DF)") || (device == "max10(df)") || (device == "MAX 10 (DC)") || (device == "max 10 (dc)") || (device == "MAX10(DC)") || (device == "max10(dc)") || (device == "MAX 10 (SA)") || (device == "max 10 (sa)") || (device == "MAX10(SA)") || (device == "max10(sa)") || (device == "MAX 10 (SC)") || (device == "max 10 (sc)") || (device == "MAX10(SC)") || (device == "max10(sc)"))
    || ((device == "MAX II") || (device == "max ii") || (device == "MAXII") || (device == "maxii") || (device == "Tsunami") || (device == "TSUNAMI") || (device == "tsunami"))
    || ((device == "MAX V") || (device == "max v") || (device == "MAXV") || (device == "maxv") || (device == "Jade") || (device == "JADE") || (device == "jade"))
    || ((device == "MAX3000A") || (device == "max3000a") || (device == "MAX 3000A") || (device == "max 3000a"))
    || ((device == "MAX7000A") || (device == "max7000a") || (device == "MAX 7000A") || (device == "max 7000a"))
    || ((device == "MAX7000AE") || (device == "max7000ae") || (device == "MAX 7000AE") || (device == "max 7000ae"))
    || ((device == "MAX7000B") || (device == "max7000b") || (device == "MAX 7000B") || (device == "max 7000b"))
    || ((device == "MAX7000S") || (device == "max7000s") || (device == "MAX 7000S") || (device == "max 7000s"))
    || ((device == "Stratix 10") || (device == "STRATIX 10") || (device == "stratix 10") || (device == "Stratix10") || (device == "STRATIX10") || (device == "stratix10") || (device == "nadder") || (device == "NADDER") || (device == "Stratix 10 (GX/SX)") || (device == "STRATIX 10 (GX/SX)") || (device == "stratix 10 (gx/sx)") || (device == "Stratix10(GX/SX)") || (device == "STRATIX10(GX/SX)") || (device == "stratix10(gx/sx)") || (device == "Stratix 10 (GX)") || (device == "STRATIX 10 (GX)") || (device == "stratix 10 (gx)") || (device == "Stratix10(GX)") || (device == "STRATIX10(GX)") || (device == "stratix10(gx)") || (device == "Stratix 10 (SX)") || (device == "STRATIX 10 (SX)") || (device == "stratix 10 (sx)") || (device == "Stratix10(SX)") || (device == "STRATIX10(SX)") || (device == "stratix10(sx)"))
    || ((device == "Stratix GX") || (device == "STRATIX GX") || (device == "stratix gx") || (device == "Stratix-GX") || (device == "STRATIX-GX") || (device == "stratix-gx") || (device == "StratixGX") || (device == "STRATIXGX") || (device == "stratixgx") || (device == "Aurora") || (device == "AURORA") || (device == "aurora"))
    || ((device == "Stratix II GX") || (device == "STRATIX II GX") || (device == "stratix ii gx") || (device == "StratixIIGX") || (device == "STRATIXIIGX") || (device == "stratixiigx"))
    || ((device == "Stratix II") || (device == "STRATIX II") || (device == "stratix ii") || (device == "StratixII") || (device == "STRATIXII") || (device == "stratixii") || (device == "Armstrong") || (device == "ARMSTRONG") || (device == "armstrong"))
    || ((device == "Stratix III") || (device == "STRATIX III") || (device == "stratix iii") || (device == "StratixIII") || (device == "STRATIXIII") || (device == "stratixiii") || (device == "Titan") || (device == "TITAN") || (device == "titan") || (device == "SIII") || (device == "siii"))
    || ((device == "Stratix IV") || (device == "STRATIX IV") || (device == "stratix iv") || (device == "TGX") || (device == "tgx") || (device == "StratixIV") || (device == "STRATIXIV") || (device == "stratixiv") || (device == "Stratix IV (GT)") || (device == "STRATIX IV (GT)") || (device == "stratix iv (gt)") || (device == "Stratix IV (GX)") || (device == "STRATIX IV (GX)") || (device == "stratix iv (gx)") || (device == "Stratix IV (E)") || (device == "STRATIX IV (E)") || (device == "stratix iv (e)") || (device == "StratixIV(GT)") || (device == "STRATIXIV(GT)") || (device == "stratixiv(gt)") || (device == "StratixIV(GX)") || (device == "STRATIXIV(GX)") || (device == "stratixiv(gx)") || (device == "StratixIV(E)") || (device == "STRATIXIV(E)") || (device == "stratixiv(e)") || (device == "StratixIIIGX") || (device == "STRATIXIIIGX") || (device == "stratixiiigx") || (device == "Stratix IV (GT/GX/E)") || (device == "STRATIX IV (GT/GX/E)") || (device == "stratix iv (gt/gx/e)") || (device == "Stratix IV (GT/E/GX)") || (device == "STRATIX IV (GT/E/GX)") || (device == "stratix iv (gt/e/gx)") || (device == "Stratix IV (E/GT/GX)") || (device == "STRATIX IV (E/GT/GX)") || (device == "stratix iv (e/gt/gx)") || (device == "Stratix IV (E/GX/GT)") || (device == "STRATIX IV (E/GX/GT)") || (device == "stratix iv (e/gx/gt)") || (device == "StratixIV(GT/GX/E)") || (device == "STRATIXIV(GT/GX/E)") || (device == "stratixiv(gt/gx/e)") || (device == "StratixIV(GT/E/GX)") || (device == "STRATIXIV(GT/E/GX)") || (device == "stratixiv(gt/e/gx)") || (device == "StratixIV(E/GX/GT)") || (device == "STRATIXIV(E/GX/GT)") || (device == "stratixiv(e/gx/gt)") || (device == "StratixIV(E/GT/GX)") || (device == "STRATIXIV(E/GT/GX)") || (device == "stratixiv(e/gt/gx)") || (device == "Stratix IV (GX/E)") || (device == "STRATIX IV (GX/E)") || (device == "stratix iv (gx/e)") || (device == "StratixIV(GX/E)") || (device == "STRATIXIV(GX/E)") || (device == "stratixiv(gx/e)"))
    || ((device == "Stratix V") || (device == "STRATIX V") || (device == "stratix v") || (device == "StratixV") || (device == "STRATIXV") || (device == "stratixv") || (device == "Stratix V (GS)") || (device == "STRATIX V (GS)") || (device == "stratix v (gs)") || (device == "StratixV(GS)") || (device == "STRATIXV(GS)") || (device == "stratixv(gs)") || (device == "Stratix V (GT)") || (device == "STRATIX V (GT)") || (device == "stratix v (gt)") || (device == "StratixV(GT)") || (device == "STRATIXV(GT)") || (device == "stratixv(gt)") || (device == "Stratix V (GX)") || (device == "STRATIX V (GX)") || (device == "stratix v (gx)") || (device == "StratixV(GX)") || (device == "STRATIXV(GX)") || (device == "stratixv(gx)") || (device == "Stratix V (GS/GX)") || (device == "STRATIX V (GS/GX)") || (device == "stratix v (gs/gx)") || (device == "StratixV(GS/GX)") || (device == "STRATIXV(GS/GX)") || (device == "stratixv(gs/gx)") || (device == "Stratix V (GS/GT)") || (device == "STRATIX V (GS/GT)") || (device == "stratix v (gs/gt)") || (device == "StratixV(GS/GT)") || (device == "STRATIXV(GS/GT)") || (device == "stratixv(gs/gt)") || (device == "Stratix V (GT/GX)") || (device == "STRATIX V (GT/GX)") || (device == "stratix v (gt/gx)") || (device == "StratixV(GT/GX)") || (device == "STRATIXV(GT/GX)") || (device == "stratixv(gt/gx)") || (device == "Stratix V (GX/GS)") || (device == "STRATIX V (GX/GS)") || (device == "stratix v (gx/gs)") || (device == "StratixV(GX/GS)") || (device == "STRATIXV(GX/GS)") || (device == "stratixv(gx/gs)") || (device == "Stratix V (GT/GS)") || (device == "STRATIX V (GT/GS)") || (device == "stratix v (gt/gs)") || (device == "StratixV(GT/GS)") || (device == "STRATIXV(GT/GS)") || (device == "stratixv(gt/gs)") || (device == "Stratix V (GX/GT)") || (device == "STRATIX V (GX/GT)") || (device == "stratix v (gx/gt)") || (device == "StratixV(GX/GT)") || (device == "STRATIXV(GX/GT)") || (device == "stratixv(gx/gt)") || (device == "Stratix V (GS/GT/GX)") || (device == "STRATIX V (GS/GT/GX)") || (device == "stratix v (gs/gt/gx)") || (device == "Stratix V (GS/GX/GT)") || (device == "STRATIX V (GS/GX/GT)") || (device == "stratix v (gs/gx/gt)") || (device == "Stratix V (GT/GS/GX)") || (device == "STRATIX V (GT/GS/GX)") || (device == "stratix v (gt/gs/gx)") || (device == "Stratix V (GT/GX/GS)") || (device == "STRATIX V (GT/GX/GS)") || (device == "stratix v (gt/gx/gs)") || (device == "Stratix V (GX/GS/GT)") || (device == "STRATIX V (GX/GS/GT)") || (device == "stratix v (gx/gs/gt)") || (device == "Stratix V (GX/GT/GS)") || (device == "STRATIX V (GX/GT/GS)") || (device == "stratix v (gx/gt/gs)") || (device == "StratixV(GS/GT/GX)") || (device == "STRATIXV(GS/GT/GX)") || (device == "stratixv(gs/gt/gx)") || (device == "StratixV(GS/GX/GT)") || (device == "STRATIXV(GS/GX/GT)") || (device == "stratixv(gs/gx/gt)") || (device == "StratixV(GT/GS/GX)") || (device == "STRATIXV(GT/GS/GX)") || (device == "stratixv(gt/gs/gx)") || (device == "StratixV(GT/GX/GS)") || (device == "STRATIXV(GT/GX/GS)") || (device == "stratixv(gt/gx/gs)") || (device == "StratixV(GX/GS/GT)") || (device == "STRATIXV(GX/GS/GT)") || (device == "stratixv(gx/gs/gt)") || (device == "StratixV(GX/GT/GS)") || (device == "STRATIXV(GX/GT/GS)") || (device == "stratixv(gx/gt/gs)") || (device == "Stratix V (GS/GT/GX/E)") || (device == "STRATIX V (GS/GT/GX/E)") || (device == "stratix v (gs/gt/gx/e)") || (device == "StratixV(GS/GT/GX/E)") || (device == "STRATIXV(GS/GT/GX/E)") || (device == "stratixv(gs/gt/gx/e)") || (device == "Stratix V (E)") || (device == "STRATIX V (E)") || (device == "stratix v (e)") || (device == "StratixV(E)") || (device == "STRATIXV(E)") || (device == "stratixv(e)"))
    || ((device == "Stratix") || (device == "STRATIX") || (device == "stratix") || (device == "Yeager") || (device == "YEAGER") || (device == "yeager"))
    || ((device == "eFPGA 28 HPM") || (device == "EFPGA 28 HPM") || (device == "efpga 28 hpm") || (device == "eFPGA28HPM") || (device == "EFPGA28HPM") || (device == "efpga28hpm") || (device == "Bedrock") || (device == "BEDROCK") || (device == "bedrock")))
        is_valid = 1;
    else
        is_valid = 0;

    IS_VALID_FAMILY = is_valid;
end
endfunction // IS_VALID_FAMILY


endmodule // ALTERA_DEVICE_FAMILIES

module ALTERA_MF_HINT_EVALUATION;

// FUNCTON DECLARATION

// This function will search through the string (given string) to look for a match for the
// a given parameter(compare_param_name). It will return the value for the given parameter.
function [8*200:1] GET_PARAMETER_VALUE;
    input [8*200:1] given_string;  // string to be searched
    input [8*50:1] compare_param_name; // parameter name to be looking for in the given_string.
    integer param_value_char_count; // to indicate current character count in the param_value
    integer param_name_char_count;  // to indicate current character count in the param_name
    integer white_space_count;

    reg extract_param_value; // if 1 mean extracting parameters value from given string
    reg extract_param_name;  // if 1 mean extracting parameters name from given string
    reg param_found; // to indicate whether compare_param_name have been found in the given_string
    reg include_white_space; // if 1, include white space in the parameter value

    reg [8*200:1] reg_string; // to store the value of the given string
    reg [8*50:1] param_name;  // to store parameter name
    reg [8*20:1] param_value; // to store parameter value
    reg [8:1] tmp; // to get the value of the current byte
begin
    reg_string = given_string;
    param_value_char_count = 0;
    param_name_char_count =0;
    extract_param_value = 1;
    extract_param_name = 0;
    param_found = 0;
    include_white_space = 0;
    white_space_count = 0;

    tmp = reg_string[8:1];

    // checking every bytes of the reg_string from right to left.
    while ((tmp != 0 ) && (param_found != 1))
    begin
        tmp = reg_string[8:1];

        //if tmp != ' ' or should include white space (trailing white space are ignored)
        if((tmp != 32) || (include_white_space == 1))
        begin
            if(tmp == 32)
            begin
                white_space_count = 1;
            end
            else if(tmp == 61)  // if tmp = '='
            begin
                extract_param_value = 0;
                extract_param_name =  1;  // subsequent bytes should be part of param_name
                include_white_space = 0;  // ignore the white space (if any) between param_name and '='
                white_space_count = 0;
                param_value = param_value >> (8 * (20 - param_value_char_count));
                param_value_char_count = 0;
            end
            else if (tmp == 44) // if tmp = ','
            begin
                extract_param_value = 1; // subsequent bytes should be part of param_value
                extract_param_name =  0;
                param_name = param_name >> (8 * (50 - param_name_char_count));
                param_name_char_count = 0;
                if(param_name == compare_param_name)
                    param_found = 1;  // the compare_param_name have been found in the reg_string
            end
            else
            begin
                if(extract_param_value == 1)
                begin
                    param_value_char_count = param_value_char_count + white_space_count + 1;
                    include_white_space = 1;
                    if(white_space_count > 0)
                    begin
                        param_value = {8'b100000, param_value[20*8:9]};
                        white_space_count = 0;
                    end
                    param_value = {tmp, param_value[20*8:9]};
                end
                else if(extract_param_name == 1)
                begin
                    param_name = {tmp, param_name[50*8:9]};
                    param_name_char_count = param_name_char_count + 1;
                end
            end
        end
        reg_string = reg_string >> 8;  // shift 1 byte to the right
    end

    // for the case whether param_name is the left most part of the reg_string
    if(extract_param_name == 1)
    begin
        param_name = param_name >> (8 * (50 - param_name_char_count));

        if(param_name == compare_param_name)
            param_found = 1;
    end

    if (param_found == 1)
        GET_PARAMETER_VALUE = param_value;   // return the value of the parameter been looking for
    else
        GET_PARAMETER_VALUE = "";  // return empty string if parameter not found

end
endfunction

endmodule // ALTERA_MF_HINT_EVALUATION

//START_MODULE_NAME------------------------------------------------------------
//
// Module Name     :  dcfifo_dffpipe
//
// Description     :  Dual Clocks FIFO
//
// Limitation      :
//
// Results expected:
//
//END_MODULE_NAME--------------------------------------------------------------

// BEGINNING OF MODULE
`timescale 1 ps / 1 ps

// MODULE DECLARATION
module dcfifo_dffpipe ( d, clock, aclr,
                        q);

// GLOBAL PARAMETER DECLARATION
    parameter lpm_delay = 1;
    parameter lpm_width = 64;

// LOCAL PARAMETER DECLARATION
    parameter delay = (lpm_delay < 2) ? 1 : lpm_delay-1;

// INPUT PORT DECLARATION
    input [lpm_width-1:0] d;
    input clock;
    input aclr;

// OUTPUT PORT DECLARATION
    output [lpm_width-1:0] q;

// INTERNAL REGISTERS DECLARATION
    reg [(lpm_width*delay)-1:0] dffpipe;
    reg [lpm_width-1:0] q;

// LOCAL INTEGER DECLARATION

// INITIAL CONSTRUCT BLOCK
    initial
    begin
        dffpipe = {(lpm_width*delay){1'b0}};
        q <= 0;
    end

// ALWAYS CONSTRUCT BLOCK
    always @(posedge clock or posedge aclr)
    begin
        if (aclr)
        begin
            dffpipe <= {(lpm_width*delay){1'b0}};
            q <= 0;
        end
        else
        begin
            if ((lpm_delay > 0) && ($time > 0))
            begin
                if (lpm_delay > 1)
                begin
                    {q, dffpipe} <= {dffpipe, d};
                end
                else
                    q <= d;
            end
        end
    end // @(posedge aclr or posedge clock)

    always @(d)
    begin
        if (lpm_delay == 0)
            q <= d;
    end // @(d)

endmodule // dcfifo_dffpipe
// END OF MODULE

//START_MODULE_NAME------------------------------------------------------------
//
// Module Name     :  dcfifo_fefifo
//
// Description     :  Dual Clock FIFO
//
// Limitation      :
//
// Results expected:
//
//END_MODULE_NAME--------------------------------------------------------------

// BEGINNING OF MODULE
`timescale 1 ps / 1 ps

// MODULE DECLARATION
module dcfifo_fefifo  ( usedw_in, wreq, rreq, clock, aclr,
                        empty, full);

// GLOBAL PARAMETER DECLARATION
    parameter lpm_widthad = 1;
    parameter lpm_numwords = 1;
    parameter underflow_checking = "ON";
    parameter overflow_checking = "ON";
    parameter lpm_mode = "READ";

// INPUT PORT DECLARATION
    input [lpm_widthad-1:0] usedw_in;
    input wreq, rreq;
    input clock;
    input aclr;

// OUTPUT PORT DECLARATION
    output empty, full;

// INTERNAL REGISTERS DECLARATION
    reg [1:0] sm_empty;
    reg lrreq;
    reg i_empty, i_full;

// LOCAL INTEGER DECLARATION
    integer almostfull;

// INITIAL CONSTRUCT BLOCK
    initial
    begin
        if ((lpm_mode != "READ") && (lpm_mode != "WRITE"))
        begin
            $display ("Error! LPM_MODE must be READ or WRITE.");
            $display ("Time: %0t  Instance: %m", $time);
        end
        if ((underflow_checking != "ON") && (underflow_checking != "OFF"))
        begin
            $display ("Error! UNDERFLOW_CHECKING must be ON or OFF.");
            $display ("Time: %0t  Instance: %m", $time);
        end
        if ((overflow_checking != "ON") && (overflow_checking != "OFF"))
        begin
            $display ("Error! OVERFLOW_CHECKING must be ON or OFF.");
            $display ("Time: %0t  Instance: %m", $time);
        end

        sm_empty <= 2'b00;
        i_empty <= 1'b1;
        i_full <= 1'b0;

        if (lpm_numwords >= 3)
            almostfull <= lpm_numwords - 3;
        else
            almostfull <= 0;
    end

// ALWAYS CONSTRUCT BLOCK
    always @(posedge aclr)
    begin
        sm_empty <= 2'b00;
        i_empty <= 1'b1;
        i_full <= 1'b0;
        lrreq <= 1'b0;
    end // @(posedge aclr)

    always @(posedge clock)
    begin
        if (underflow_checking == "OFF")
            lrreq <= rreq;
        else
            lrreq <= rreq && ~i_empty;

        if (~aclr && $time > 0)
        begin
            if (lpm_mode == "READ")
            begin
                casex (sm_empty)
                    // state_empty
                    2'b00:
                        if (usedw_in != 0)
                            sm_empty <= 2'b01;
                    // state_non_empty
                    2'b01:
                        if (rreq && (((usedw_in == 1) && !lrreq) || ((usedw_in == 2) && lrreq)))
                            sm_empty <= 2'b10;
                    // state_emptywait
                    2'b10:
                        if (usedw_in > 1)
                            sm_empty <= 2'b01;
                        else
                            sm_empty <= 2'b00;
                    default:
                        $display ("Error! Invalid sm_empty state in read mode.");
                endcase
            end // if (lpm_mode == "READ")
            else if (lpm_mode == "WRITE")
            begin
                casex (sm_empty)
                    // state_empty
                    2'b00:
                        if (wreq)
                            sm_empty <= 2'b01;
                    // state_one
                    2'b01:
                        if (!wreq)
                            sm_empty <= 2'b11;
                    // state_non_empty
                    2'b11:
                        if (wreq)
                            sm_empty <= 2'b01;
                        else if (usedw_in == 0)
                            sm_empty <= 2'b00;
                    default:
                        $display ("Error! Invalid sm_empty state in write mode.");
                endcase
            end // if (lpm_mode == "WRITE")

            if (~aclr && (usedw_in >= almostfull) && ($time > 0))
                i_full <= 1'b1;
            else
                i_full <= 1'b0;
        end // if (~aclr && $time > 0)
    end // @(posedge clock)

    always @(sm_empty)
    begin
        i_empty <= !sm_empty[0];
    end
    // @(sm_empty)

// CONTINOUS ASSIGNMENT
    assign empty = i_empty;
    assign full = i_full;
endmodule // dcfifo_fefifo
// END OF MODULE

//START_MODULE_NAME------------------------------------------------------------
//
// Module Name     :  dcfifo_async
//
// Description     :  Asynchronous Dual Clocks FIFO
//
// Limitation      :
//
// Results expected:
//
//END_MODULE_NAME--------------------------------------------------------------

// BEGINNING OF MODULE
`timescale 1 ps / 1 ps

// MODULE DECLARATION
module dcfifo_async (data, rdclk, wrclk, aclr, rdreq, wrreq,
                    rdfull, wrfull, rdempty, wrempty, rdusedw, wrusedw, q);

// GLOBAL PARAMETER DECLARATION
    parameter lpm_width = 1;
    parameter lpm_widthu = 1;
    parameter lpm_numwords = 2;
    parameter delay_rdusedw = 1;
    parameter delay_wrusedw = 1;
    parameter rdsync_delaypipe = 0;
    parameter wrsync_delaypipe = 0;
    parameter intended_device_family = "Stratix";
    parameter lpm_showahead = "OFF";
    parameter underflow_checking = "ON";
    parameter overflow_checking = "ON";
	parameter read_aclr_synch = "OFF";
    parameter write_aclr_synch = "OFF";
    parameter use_eab = "ON";
    parameter add_ram_output_register = "OFF";

// INPUT PORT DECLARATION
    input [lpm_width-1:0] data;
    input rdclk;
    input wrclk;
    input aclr;
    input wrreq;
    input rdreq;

// OUTPUT PORT DECLARATION
    output rdfull;
    output wrfull;
    output rdempty;
    output wrempty;
    output [lpm_widthu-1:0] rdusedw;
    output [lpm_widthu-1:0] wrusedw;
    output [lpm_width-1:0] q;

// INTERNAL REGISTERS DECLARATION
    reg [lpm_width-1:0] mem_data [(1<<lpm_widthu)-1:0];
    reg [lpm_width-1:0] mem_data2 [(1<<lpm_widthu)-1:0];
    reg data_ready [(1<<lpm_widthu)-1:0];
    reg [2:0] data_delay_count [(1<<lpm_widthu)-1:0];
    reg [lpm_width-1:0] i_data_tmp;
    reg [lpm_widthu-1:0] i_rdptr;
    reg [lpm_widthu-1:0] i_wrptr;
    reg [lpm_widthu-1:0] i_wrptr_tmp;
    reg i_rdenclock;
    reg i_wren_tmp;
    reg i_showahead_flag;
    reg i_showahead_flag1;
    reg i_showahead_flag2;
    reg i_showahead_flag3;
    reg [lpm_widthu-1:0] i_wr_udwn;
    reg [lpm_widthu-1:0] i_rd_udwn;
    reg [lpm_widthu:0] i_rdusedw;
    reg [lpm_widthu-1:0] i_wrusedw;
    reg [lpm_width-1:0] i_q_tmp;
    reg feature_family_base_stratix;
    reg feature_family_base_cyclone;
	reg sync_rdaclr_pre;
    reg sync_rdaclr;
    reg sync_wraclr_pre;
    reg sync_wraclr;

// INTERNAL WIRE DECLARATION
    wire i_rden;
    wire i_wren;
    wire w_rdempty;
    wire w_wrempty;
    wire w_rdfull;
    wire w_wrfull;
    wire [lpm_widthu-1:0] w_rdptrrg;
    wire [lpm_widthu-1:0] w_wrdelaycycle;
    wire [lpm_widthu-1:0] w_ws_nbrp;
    wire [lpm_widthu-1:0] w_rs_nbwp;
    wire [lpm_widthu-1:0] w_ws_dbrp;
    wire [lpm_widthu-1:0] w_rs_dbwp;
    wire [lpm_widthu-1:0] w_rd_dbuw;
    wire [lpm_widthu-1:0] w_wr_dbuw;
    wire [lpm_widthu-1:0] w_rdusedw;
    wire [lpm_widthu-1:0] w_wrusedw;
    wire w_rdaclr;
    wire w_wraclr;
	wire r_on;
	wire r_off;
	wire w_on;
	wire w_off;
	
// INTERNAL TRI DECLARATION
    tri0 aclr;

// LOCAL INTEGER DECLARATION
    integer i;
    integer j;
    integer k;

// COMPONENT INSTANTIATION
    ALTERA_DEVICE_FAMILIES dev ();

// INITIAL CONSTRUCT BLOCK
    initial
    begin

    feature_family_base_stratix = dev.FEATURE_FAMILY_BASE_STRATIX(intended_device_family);
    feature_family_base_cyclone = dev.FEATURE_FAMILY_BASE_CYCLONE(intended_device_family);

        if((lpm_showahead != "ON") && (lpm_showahead != "OFF"))
            $display ("Error! lpm_showahead must be ON or OFF.");
        if((underflow_checking != "ON") && (underflow_checking != "OFF"))
            $display ("Error! underflow_checking must be ON or OFF.");
        if((overflow_checking != "ON") && (overflow_checking != "OFF"))
            $display ("Error! overflow_checking must be ON or OFF.");
        if((use_eab != "ON") && (use_eab != "OFF"))
            $display ("Error! use_eab must be ON or OFF.");
        if((add_ram_output_register != "ON") && (add_ram_output_register != "OFF"))
            $display ("Error! add_ram_output_register must be ON or OFF.");
        if (dev.IS_VALID_FAMILY(intended_device_family) == 0)
            $display ("Error! Unknown INTENDED_DEVICE_FAMILY=%s.", intended_device_family);

        for (i = 0; i < (1 << lpm_widthu); i = i + 1)
        begin
            mem_data[i] <= 0;
            mem_data2[i] <= 0;
            data_ready[i] <= 1'b0;
            data_delay_count[i] <= 0;
        end

        if ((add_ram_output_register == "OFF") &&
            ((feature_family_base_stratix == 1) || (feature_family_base_cyclone == 1)))
        begin
            for (i = 0; i < (1 << lpm_widthu); i = i + 1)
            begin
                mem_data2[i] <= {lpm_width{1'bx}};
            end
        end
        else
        begin
            for (i = 0; i < (1 << lpm_widthu); i = i + 1)
            begin
                mem_data2[i] <= 0;
            end
        end

        i_data_tmp <= 0;
        i_rdptr <= 0;
        i_wrptr <= 0;
        i_wrptr_tmp <= 0;
        i_wren_tmp <= 0;
        i_wr_udwn <= 0;
        i_rd_udwn <= 0;
        i_rdusedw <= 0;
        i_wrusedw <= 0;
        i_q_tmp <= 0;
        sync_rdaclr_pre <= 1'b1;
        sync_wraclr_pre <= 1'b1;
        sync_rdaclr <= 1'b1;
        sync_wraclr <= 1'b1;
    end

// COMPONENT INSTANTIATIONS
    // Delays & DFF Pipes
    dcfifo_dffpipe DP_RDPTR_D (
        .d (i_rdptr),
        .clock (i_rdenclock),
        .aclr (w_rdaclr),
        .q (w_rdptrrg));
    dcfifo_dffpipe DP_WRPTR_D (
        .d (i_wrptr),
        .clock (wrclk),
        .aclr (w_wraclr),
        .q (w_wrdelaycycle));
    defparam
        DP_RDPTR_D.lpm_delay = 0,
        DP_RDPTR_D.lpm_width = lpm_widthu,
        DP_WRPTR_D.lpm_delay = 1,
        DP_WRPTR_D.lpm_width = lpm_widthu;

    dcfifo_dffpipe DP_WS_NBRP (
        .d (w_rdptrrg),
        .clock (wrclk),
        .aclr (w_wraclr),
        .q (w_ws_nbrp));
    dcfifo_dffpipe DP_RS_NBWP (
        .d (w_wrdelaycycle),
        .clock (rdclk),
        .aclr (w_rdaclr),
        .q (w_rs_nbwp));
    dcfifo_dffpipe DP_WS_DBRP (
        .d (w_ws_nbrp),
        .clock (wrclk),
        .aclr (w_wraclr),
        .q (w_ws_dbrp));
    dcfifo_dffpipe DP_RS_DBWP (
        .d (w_rs_nbwp),
        .clock (rdclk),
        .aclr (w_rdaclr),
        .q (w_rs_dbwp));
    defparam
        DP_WS_NBRP.lpm_delay = wrsync_delaypipe,
        DP_WS_NBRP.lpm_width = lpm_widthu,
        DP_RS_NBWP.lpm_delay = rdsync_delaypipe,
        DP_RS_NBWP.lpm_width = lpm_widthu,
        DP_WS_DBRP.lpm_delay = 1,              // gray_delaypipe
        DP_WS_DBRP.lpm_width = lpm_widthu,
        DP_RS_DBWP.lpm_delay = 1,              // gray_delaypipe
        DP_RS_DBWP.lpm_width = lpm_widthu;

    dcfifo_dffpipe DP_WRUSEDW (
        .d (i_wr_udwn),
        .clock (wrclk),
        .aclr (w_wraclr),
        .q (w_wrusedw));
    dcfifo_dffpipe DP_RDUSEDW (
        .d (i_rd_udwn),
        .clock (rdclk),
        .aclr (w_rdaclr),
        .q (w_rdusedw));
    dcfifo_dffpipe DP_WR_DBUW (
        .d (i_wr_udwn),
        .clock (wrclk),
        .aclr (w_wraclr),
        .q (w_wr_dbuw));
    dcfifo_dffpipe DP_RD_DBUW (
        .d (i_rd_udwn),
        .clock (rdclk),
        .aclr (w_rdaclr),
        .q (w_rd_dbuw));
    defparam
        DP_WRUSEDW.lpm_delay = delay_wrusedw,
        DP_WRUSEDW.lpm_width = lpm_widthu,
        DP_RDUSEDW.lpm_delay = delay_rdusedw,
        DP_RDUSEDW.lpm_width = lpm_widthu,
        DP_WR_DBUW.lpm_delay = 1,              // wrusedw_delaypipe
        DP_WR_DBUW.lpm_width = lpm_widthu,
        DP_RD_DBUW.lpm_delay = 1,              // rdusedw_delaypipe
        DP_RD_DBUW.lpm_width = lpm_widthu;

    // Empty/Full
    dcfifo_fefifo WR_FE (
        .usedw_in (w_wr_dbuw),
        .wreq (wrreq),
        .rreq (rdreq),
        .clock (wrclk),
        .aclr (w_wraclr),
        .empty (w_wrempty),
        .full (w_wrfull));
    dcfifo_fefifo RD_FE (
        .usedw_in (w_rd_dbuw),
        .rreq (rdreq),
        .wreq(wrreq),
        .clock (rdclk),
        .aclr (w_rdaclr),
        .empty (w_rdempty),
        .full (w_rdfull));
    defparam
        WR_FE.lpm_widthad = lpm_widthu,
        WR_FE.lpm_numwords = lpm_numwords,
        WR_FE.underflow_checking = underflow_checking,
        WR_FE.overflow_checking = overflow_checking,
        WR_FE.lpm_mode = "WRITE",
        RD_FE.lpm_widthad = lpm_widthu,
        RD_FE.lpm_numwords = lpm_numwords,
        RD_FE.underflow_checking = underflow_checking,
        RD_FE.overflow_checking = overflow_checking,
        RD_FE.lpm_mode = "READ";

// ALWAYS CONSTRUCT BLOCK
    always @(posedge rdclk or posedge aclr)
    begin
        if ($time > 0)
        begin
            if (aclr)
            begin
                sync_rdaclr <= 1'b1;
                sync_rdaclr_pre <= 1'b1;
            end
            else
            begin
                sync_rdaclr <= sync_rdaclr_pre;
                sync_rdaclr_pre <= 1'b0;
            end
        end
    end

    always @(posedge wrclk or posedge aclr)
    begin
        if ($time > 0)
        begin
            if (aclr)
            begin
                sync_wraclr <= 1'b1;
                sync_wraclr_pre <= 1'b1;
            end
            else
            begin
                sync_wraclr <= sync_wraclr_pre;
                sync_wraclr_pre <= 1'b0;
            end
        end
    end
	
    always @(posedge aclr)
    begin
        i_rdptr <= 0;
        i_wrptr <= 0;
        if (!((feature_family_base_stratix == 1) ||
        (feature_family_base_cyclone == 1)) ||
        (use_eab == "OFF"))
        begin
            if (lpm_showahead == "ON")
                i_q_tmp <= mem_data[0];
            else
                i_q_tmp <= 0;
        end
        else if ((add_ram_output_register == "ON") &&
                ((feature_family_base_stratix == 1) ||
                (feature_family_base_cyclone == 1)))
        begin
            if (lpm_showahead == "OFF")
                i_q_tmp <= 0;
            else
            begin
                i_q_tmp <= {lpm_width{1'bx}};

                for (j = 0; j < (1<<lpm_widthu); j = j + 1)
                begin
                    data_ready[i_wrptr_tmp] <= 1'b0;
                    data_delay_count[k] <= 0;
                end
            end
        end
    end // @(posedge aclr)

    always @(posedge wrclk)
    begin
        if (aclr && (!((feature_family_base_stratix == 1) ||
            (feature_family_base_cyclone == 1)) ||
            (add_ram_output_register == "ON") || (use_eab == "OFF")))
        begin
            i_data_tmp <= 0;
            i_wrptr_tmp <= 0;
            i_wren_tmp <= 0;
        end
        else if (wrclk && ($time > 0))
        begin
            i_data_tmp <= data;
            i_wrptr_tmp <= i_wrptr;
            i_wren_tmp <= i_wren;

            if (i_wren)
            begin
                if (~aclr && ((i_wrptr < (1<<lpm_widthu)-1) || (overflow_checking == "OFF")))
                    i_wrptr <= i_wrptr + 1;
                else
                    i_wrptr <= 0;

                if (use_eab == "OFF")
                begin
                    mem_data[i_wrptr] <= data;

                    if (lpm_showahead == "ON")
                        i_showahead_flag3 <= 1'b1;
                end
            end
        end
    end // @(posedge wrclk)

    always @(negedge wrclk)
    begin
        if ((~wrclk && (use_eab == "ON")) && ($time > 0))
        begin
            if (i_wren_tmp)
            begin
                mem_data[i_wrptr_tmp] <= i_data_tmp;
                data_ready[i_wrptr_tmp] <= 1'b0;
            end

            if ((lpm_showahead == "ON") &&
                (!((feature_family_base_stratix == 1) ||
                (feature_family_base_cyclone == 1))))
                i_showahead_flag3 <= 1'b1;
        end
    end // @(negedge wrclk)

    always @(posedge rdclk)
    begin

        if (rdclk && ($time > 0))
        begin
            if ((lpm_showahead == "ON") && (add_ram_output_register == "ON") &&
                ((feature_family_base_stratix == 1) ||
                (feature_family_base_cyclone == 1)))
            begin
                for (k = 0; k < (1<<lpm_widthu); k = k + 1)
                begin
                    if (data_ready[k] == 1'b0)
                        data_delay_count[k] <= data_delay_count[k] + 1;

                    if (data_delay_count[k] == (rdsync_delaypipe+2))
                    begin
                        data_ready[k] <= 1'b1;
                        data_delay_count[k] <= 0;
                    end
                end

                if (~aclr)
                begin
                    i_showahead_flag3 <= 1'b1;
                end
            end

        end

        if (aclr && (!((feature_family_base_stratix == 1) ||
        (feature_family_base_cyclone == 1)) ||
        (use_eab == "OFF")))
        begin
            if (lpm_showahead == "ON")
                i_q_tmp <= mem_data[0];
            else
                i_q_tmp <= 0;
        end
        else if (aclr && (add_ram_output_register == "ON") &&
                ((feature_family_base_stratix == 1) ||
                (feature_family_base_cyclone == 1)))
        begin
            if (lpm_showahead == "ON")
                i_q_tmp <= {lpm_width{1'bx}};
            else
                i_q_tmp <= 0;
        end
        else if (rdclk && i_rden && ($time > 0))
        begin
            if (~aclr && ((i_rdptr < (1<<lpm_widthu)-1) || (underflow_checking == "OFF")))
                i_rdptr <= i_rdptr + 1;
            else
                i_rdptr <= 0;

            if (lpm_showahead == "ON")
                i_showahead_flag3 <= 1'b1;
            else
                i_q_tmp <= mem_data[i_rdptr];
        end
    end // @(posedge rdclk)

    always @(i_showahead_flag3)
    begin
        i_showahead_flag2 <= i_showahead_flag3;
    end

    always @(i_showahead_flag2)
    begin
        i_showahead_flag1 <= i_showahead_flag2;
    end

    always @(i_showahead_flag1)
    begin
        i_showahead_flag <= i_showahead_flag1;
    end


    always @(posedge i_showahead_flag)
    begin
        if ((lpm_showahead == "ON") && (add_ram_output_register == "ON") &&
            ((feature_family_base_stratix == 1) ||
            (feature_family_base_cyclone == 1)))
        begin
            if (w_rdempty == 1'b0)
            begin
                if (data_ready[i_rdptr] == 1'b1)
                begin
                    i_q_tmp <= mem_data[i_rdptr];
                    mem_data2[i_rdptr] <= mem_data[i_rdptr];
                end
                else
                i_q_tmp <= mem_data2[i_rdptr];
            end
        end
        else
            i_q_tmp <= mem_data[i_rdptr];
        i_showahead_flag3 <= 1'b0;
    end // @(posedge i_showahead_flag)

    // Delays & DFF Pipes
    always @(negedge rdclk)
    begin
        i_rdenclock <= 0;
    end // @(negedge rdclk)

    always @(posedge rdclk)
    begin
        if (i_rden)
            i_rdenclock <= 1;
    end // @(posedge rdclk)

    always @(i_wrptr or w_ws_dbrp)
    begin
        i_wr_udwn = i_wrptr - w_ws_dbrp;
    end // @(i_wrptr or w_ws_dbrp)

    always @(i_rdptr or w_rs_dbwp)
    begin
        i_rd_udwn = w_rs_dbwp - i_rdptr;
    end // @(i_rdptr or w_rs_dbwp)


// CONTINOUS ASSIGNMENT
	assign r_off = (read_aclr_synch == "ON") ? rdreq && !sync_rdaclr : rdreq;
	assign r_on  = (read_aclr_synch == "ON") ? rdreq && !(w_rdempty || sync_rdaclr) : (rdreq && !w_rdempty);
	assign i_rden = (underflow_checking == "OFF") ? r_off: r_on;
	assign w_off = (write_aclr_synch == "ON") ? wrreq && !sync_wraclr : wrreq;
	assign w_on  = (write_aclr_synch == "ON") ? wrreq && !(w_wrfull || sync_wraclr) : (wrreq && !w_wrfull);
	assign i_wren = (overflow_checking == "OFF") ? w_off: w_on;
    assign q = i_q_tmp;
    assign wrfull = (write_aclr_synch == "OFF") ? w_wrfull : (w_wrfull || sync_wraclr) ;
    assign rdfull = w_rdfull;
    assign wrempty = w_wrempty;
    assign rdempty = w_rdempty;
    assign wrusedw = w_wrusedw;
    assign rdusedw = w_rdusedw;
	assign w_rdaclr = (read_aclr_synch == "ON") ? sync_rdaclr : aclr ;
	assign w_wraclr = (write_aclr_synch == "ON") ? sync_wraclr : aclr ;

endmodule // dcfifo_async
// END OF MODULE

//START_MODULE_NAME------------------------------------------------------------
//
// Module Name     :  dcfifo_sync
//
// Description     :  Synchronous Dual Clock FIFO
//
// Limitation      :
//
// Results expected:
//
//END_MODULE_NAME--------------------------------------------------------------

// BEGINNING OF MODULE
`timescale 1 ps / 1 ps

// MODULE DECLARATION
module dcfifo_sync (data, rdclk, wrclk, aclr, rdreq, wrreq,
                    rdfull, wrfull, rdempty, wrempty, rdusedw, wrusedw, q);

// GLOBAL PARAMETER DECLARATION
    parameter lpm_width = 1;
    parameter lpm_widthu = 1;
    parameter lpm_numwords = 2;
    parameter intended_device_family = "Stratix";
    parameter lpm_showahead = "OFF";
    parameter underflow_checking = "ON";
    parameter overflow_checking = "ON";
    parameter use_eab = "ON";
    parameter add_ram_output_register = "OFF";

// INPUT PORT DECLARATION
    input [lpm_width-1:0] data;
    input rdclk;
    input wrclk;
    input aclr;
    input rdreq;
    input wrreq;

// OUTPUT PORT DECLARATION
    output rdfull;
    output wrfull;
    output rdempty;
    output wrempty;
    output [lpm_widthu-1:0] rdusedw;
    output [lpm_widthu-1:0] wrusedw;
    output [lpm_width-1:0] q;

// INTERNAL REGISTERS DECLARATION
    reg [lpm_width-1:0] mem_data [(1<<lpm_widthu)-1:0];
    reg [lpm_width-1:0] i_data_tmp;
    reg [lpm_widthu:0] i_rdptr;
    reg [lpm_widthu:0] i_wrptr;
    reg [lpm_widthu-1:0] i_wrptr_tmp;
    reg i_wren_tmp;
    reg i_showahead_flag;
    reg i_showahead_flag2;
    reg [lpm_widthu:0] i_rdusedw;
    reg [lpm_widthu:0] i_wrusedw;
    reg [lpm_width-1:0] i_q_tmp;
    reg feature_family_base_stratix;
    reg feature_family_base_cyclone;
    reg feature_family_stratixii;
    reg feature_family_cycloneii;
    reg feature_family_stratixiii;
    reg feature_family_cycloneiii;

// INTERNAL WIRE DECLARATION
    wire [lpm_widthu:0] w_rdptr_s;
    wire [lpm_widthu:0] w_wrptr_s;
    wire [lpm_widthu:0] w_wrptr_r;
    wire i_rden;
    wire i_wren;
    wire i_rdempty;
    wire i_wrempty;
    wire i_rdfull;
    wire i_wrfull;

// LOCAL INTEGER DECLARATION
    integer cnt_mod;
    integer i;

// COMPONENT INSTANTIATION
    ALTERA_DEVICE_FAMILIES dev ();

// INITIAL CONSTRUCT BLOCK
    initial
    begin

    feature_family_base_stratix = dev.FEATURE_FAMILY_BASE_STRATIX(intended_device_family);
    feature_family_base_cyclone = dev.FEATURE_FAMILY_BASE_CYCLONE(intended_device_family);
    feature_family_stratixii = dev.FEATURE_FAMILY_STRATIXII(intended_device_family);
    feature_family_cycloneii = dev.FEATURE_FAMILY_CYCLONEII(intended_device_family);
    feature_family_stratixiii = dev.FEATURE_FAMILY_STRATIXIII(intended_device_family);
    feature_family_cycloneiii = dev.FEATURE_FAMILY_CYCLONEIII(intended_device_family);

        if ((lpm_showahead != "ON") && (lpm_showahead != "OFF"))
            $display ("Error! LPM_SHOWAHEAD must be ON or OFF.");
        if ((underflow_checking != "ON") && (underflow_checking != "OFF"))
            $display ("Error! UNDERFLOW_CHECKING must be ON or OFF.");
        if ((overflow_checking != "ON") && (overflow_checking != "OFF"))
            $display ("Error! OVERFLOW_CHECKING must be ON or OFF.");
        if ((use_eab != "ON") && (use_eab != "OFF"))
            $display ("Error! USE_EAB must be ON or OFF.");
        if (lpm_numwords > (1 << lpm_widthu))
            $display ("Error! LPM_NUMWORDS must be less than or equal to 2**LPM_WIDTHU.");
        if((add_ram_output_register != "ON") && (add_ram_output_register != "OFF"))
            $display ("Error! add_ram_output_register must be ON or OFF.");
        if (dev.IS_VALID_FAMILY(intended_device_family) == 0)
            $display ("Error! Unknown INTENDED_DEVICE_FAMILY=%s.", intended_device_family);

        for (i = 0; i < (1 << lpm_widthu); i = i + 1)
            mem_data[i] <= 0;
        i_data_tmp <= 0;
        i_rdptr <= 0;
        i_wrptr <= 0;
        i_wrptr_tmp <= 0;
        i_wren_tmp <= 0;

        i_rdusedw <= 0;
        i_wrusedw <= 0;
        i_q_tmp <= 0;

        if (lpm_numwords == (1 << lpm_widthu))
            cnt_mod <= 1 << (lpm_widthu + 1);
        else
            cnt_mod <= 1 << lpm_widthu;
    end

// COMPONENT INSTANTIATIONS
    dcfifo_dffpipe RDPTR_D (
        .d (i_rdptr),
        .clock (wrclk),
        .aclr (aclr),
        .q (w_rdptr_s));
    dcfifo_dffpipe WRPTR_D (
        .d (i_wrptr),
        .clock (wrclk),
        .aclr (aclr),
        .q (w_wrptr_r));
    dcfifo_dffpipe WRPTR_E (
        .d (w_wrptr_r),
        .clock (rdclk),
        .aclr (aclr),
        .q (w_wrptr_s));
    defparam
        RDPTR_D.lpm_delay = 1,
        RDPTR_D.lpm_width = lpm_widthu + 1,
        WRPTR_D.lpm_delay = 1,
        WRPTR_D.lpm_width = lpm_widthu + 1,
        WRPTR_E.lpm_delay = 1,
        WRPTR_E.lpm_width = lpm_widthu + 1;

// ALWAYS CONSTRUCT BLOCK
    always @(posedge aclr)
    begin
        i_rdptr <= 0;
        i_wrptr <= 0;
        if (!((feature_family_base_stratix == 1) ||
        (feature_family_base_cyclone == 1)) ||
        ((add_ram_output_register == "ON") && (use_eab == "OFF")))
            if (lpm_showahead == "ON")
            begin
                if ((feature_family_stratixii == 1) ||
                (feature_family_cycloneii == 1))
                    i_q_tmp <= {lpm_width{1'bX}};
                else
                    i_q_tmp <= mem_data[0];
            end
            else
                i_q_tmp <= 0;
    end // @(posedge aclr)

    always @(posedge wrclk)
    begin
        if (aclr && (!((feature_family_base_stratix == 1) ||
        (feature_family_base_cyclone == 1)) ||
        ((add_ram_output_register == "ON") && (use_eab == "OFF"))))
        begin
            i_data_tmp <= 0;
            i_wrptr_tmp <= 0;
            i_wren_tmp <= 0;
        end
        else if (wrclk && ($time > 0))
        begin
            i_data_tmp <= data;
            i_wrptr_tmp <= i_wrptr[lpm_widthu-1:0];
            i_wren_tmp <= i_wren;

            if (i_wren)
            begin
                if (~aclr && (i_wrptr < cnt_mod - 1))
                    i_wrptr <= i_wrptr + 1;
                else
                    i_wrptr <= 0;

                if (use_eab == "OFF")
                begin
                    mem_data[i_wrptr[lpm_widthu-1:0]] <= data;

                    if (lpm_showahead == "ON")
                        i_showahead_flag2 <= 1'b1;
                end
            end
        end
    end // @(posedge wrclk)

    always @(negedge wrclk)
    begin
        if ((~wrclk && (use_eab == "ON")) && ($time > 0))
        begin
            if (i_wren_tmp)
            begin
                mem_data[i_wrptr_tmp] <= i_data_tmp;
            end

            if ((lpm_showahead == "ON") &&
                (!((feature_family_base_stratix == 1) ||
                (feature_family_base_cyclone == 1))))
                i_showahead_flag2 <= 1'b1;
        end
    end // @(negedge wrclk)

    always @(posedge rdclk)
    begin
        if (aclr && (!((feature_family_base_stratix == 1) ||
        (feature_family_base_cyclone == 1)) ||
        ((add_ram_output_register == "ON") && (use_eab == "OFF"))))
        begin
            if (lpm_showahead == "ON")
            begin
                if ((feature_family_stratixii == 1) ||
                (feature_family_cycloneii == 1))
                    i_q_tmp <= {lpm_width{1'bX}};
                else
                    i_q_tmp <= mem_data[0];
            end
            else
                i_q_tmp <= 0;
        end
        else if (rdclk && i_rden && ($time > 0))
        begin
            if (~aclr && (i_rdptr < cnt_mod - 1))
                i_rdptr <= i_rdptr + 1;
            else
                i_rdptr <= 0;

            if ((lpm_showahead == "ON") && (!((use_eab == "ON") &&
                ((feature_family_base_stratix == 1) ||
                (feature_family_base_cyclone == 1)))))
                i_showahead_flag2 <= 1'b1;
            else
                i_q_tmp <= mem_data[i_rdptr[lpm_widthu-1:0]];
        end
    end // @(rdclk)

    always @(posedge i_showahead_flag)
    begin
        i_q_tmp <= mem_data[i_rdptr[lpm_widthu-1:0]];
        i_showahead_flag2 <= 1'b0;
    end // @(posedge i_showahead_flag)

    always @(i_showahead_flag2)
    begin
        i_showahead_flag <= i_showahead_flag2;
    end // @(i_showahead_flag2)

    // Usedw, Empty, Full
    always @(i_rdptr or w_wrptr_s or cnt_mod)
    begin
        if (w_wrptr_s >= i_rdptr)
            i_rdusedw <= w_wrptr_s - i_rdptr;
        else
            i_rdusedw <= w_wrptr_s + cnt_mod - i_rdptr;
    end // @(i_rdptr or w_wrptr_s)

    always @(i_wrptr or w_rdptr_s or cnt_mod)
    begin
        if (i_wrptr >= w_rdptr_s)
            i_wrusedw <= i_wrptr - w_rdptr_s;
        else
            i_wrusedw <= i_wrptr + cnt_mod - w_rdptr_s;
    end // @(i_wrptr or w_rdptr_s)


// CONTINOUS ASSIGNMENT
    assign i_rden = (underflow_checking == "OFF") ? rdreq : (rdreq && !i_rdempty);
    assign i_wren = (overflow_checking == "OFF")  ? wrreq : (wrreq && !i_wrfull);
    assign i_rdempty = (i_rdusedw == 0) ? 1'b1 : 1'b0;
    assign i_wrempty = (i_wrusedw == 0) ? 1'b1 : 1'b0;
    assign i_rdfull = (((lpm_numwords == (1 << lpm_widthu)) && i_rdusedw[lpm_widthu]) ||
                    ((lpm_numwords < (1 << lpm_widthu)) && (i_rdusedw == lpm_numwords)))
                    ? 1'b1 : 1'b0;
    assign i_wrfull = (((lpm_numwords == (1 << lpm_widthu)) && i_wrusedw[lpm_widthu]) ||
                    ((lpm_numwords < (1 << lpm_widthu)) && (i_wrusedw == lpm_numwords)))
                    ? 1'b1 : 1'b0;
    assign rdempty = i_rdempty;
    assign wrempty = i_wrempty;
    assign rdfull = i_rdfull;
    assign wrfull = i_wrfull;
    assign wrusedw = i_wrusedw[lpm_widthu-1:0];
    assign rdusedw = i_rdusedw[lpm_widthu-1:0];
    assign q = i_q_tmp;

endmodule // dcfifo_sync
// END OF MODULE

//START_MODULE_NAME------------------------------------------------------------
//
// Module Name     :  dcfifo_low_latency
//
// Description     :  Dual Clocks FIFO with lowest latency. This fifo implements
//                    the fifo behavior for Stratix II, Cyclone II, Stratix III,
//                    Cyclone III and Stratix showahead area mode (LPM_SHOWAHEAD=
//                    ON, ADD_RAM_OUTPUT_REGISTER=OFF)
//
// Limitation      :
//
// Results expected:
//
//END_MODULE_NAME--------------------------------------------------------------

// BEGINNING OF MODULE
`timescale 1 ps / 1 ps

// MODULE DECLARATION
module dcfifo_low_latency (data, rdclk, wrclk, aclr, rdreq, wrreq,
                    rdfull, wrfull, rdempty, wrempty, rdusedw, wrusedw, q);

// GLOBAL PARAMETER DECLARATION
    parameter lpm_width = 1;
    parameter lpm_widthu = 1;
    parameter lpm_width_r = lpm_width;
    parameter lpm_widthu_r = lpm_widthu;
    parameter lpm_numwords = 2;
    parameter delay_rdusedw = 2;
    parameter delay_wrusedw = 2;
    parameter rdsync_delaypipe = 0;
    parameter wrsync_delaypipe = 0;
    parameter intended_device_family = "Stratix";
    parameter lpm_showahead = "OFF";
    parameter underflow_checking = "ON";
    parameter overflow_checking = "ON";
    parameter add_usedw_msb_bit = "OFF";
    parameter read_aclr_synch = "OFF";
    parameter write_aclr_synch = "OFF";
    parameter use_eab = "ON";
    parameter clocks_are_synchronized = "FALSE";
    parameter add_ram_output_register = "OFF";
    parameter lpm_hint = "USE_EAB=ON";

// LOCAL PARAMETER DECLARATION
    parameter WIDTH_RATIO = (lpm_width > lpm_width_r) ? lpm_width / lpm_width_r :
                            lpm_width_r / lpm_width;
    parameter FIFO_DEPTH = (add_usedw_msb_bit == "OFF") ? lpm_widthu_r : lpm_widthu_r -1;

// INPUT PORT DECLARATION
    input [lpm_width-1:0] data;
    input rdclk;
    input wrclk;
    input aclr;
    input rdreq;
    input wrreq;

// OUTPUT PORT DECLARATION
    output rdfull;
    output wrfull;
    output rdempty;
    output wrempty;
    output [lpm_widthu_r-1:0] rdusedw;
    output [lpm_widthu-1:0] wrusedw;
    output [lpm_width_r-1:0] q;

// INTERNAL REGISTERS DECLARATION
    reg [lpm_width_r-1:0] mem_data [(1<<FIFO_DEPTH) + WIDTH_RATIO : 0];
    reg [lpm_widthu_r:0] i_rdptr_g;
    reg [lpm_widthu:0] i_wrptr_g;
    reg [lpm_widthu:0] i_wrptr_g1;
    reg [lpm_widthu_r:0] i_rdptr_g1p;
    reg [lpm_widthu:0] i_delayed_wrptr_g;

    reg i_rdempty;
    reg i_wrempty_area;
    reg i_wrempty_speed;
    reg i_rdempty_rreg;
    reg i_rdfull_speed;
    reg i_rdfull_area;
    reg i_wrfull;
    reg i_wrfull_wreg;
    reg [lpm_widthu_r:0] i_rdusedw_tmp;
    reg [lpm_widthu:0] i_wrusedw_tmp;
    reg [lpm_width_r-1:0] i_q;
    reg i_q_is_registered;
    reg use_wrempty_speed;
    reg use_rdfull_speed;
    reg sync_rdaclr_pre;
    reg sync_rdaclr;
    reg sync_wraclr_pre;
    reg sync_wraclr;
    reg is_underflow;
    reg is_overflow;
    reg no_warn;
    reg feature_family_has_stratixiii_style_ram;
    reg feature_family_has_stratixii_style_ram;
    reg feature_family_stratixii;
    reg feature_family_cycloneii;
    reg feature_family_stratixiii;
    reg feature_family_cycloneiii;
    reg feature_family_stratix;

// INTERNAL WIRE DECLARATION
    wire [lpm_widthu:0] i_rs_dgwp;
    wire [lpm_widthu_r:0] i_ws_dgrp;
    wire [lpm_widthu_r:0] i_rdusedw;
    wire [lpm_widthu:0] i_wrusedw;
    wire i_rden;
    wire i_wren;
    wire read_aclr;
    wire write_aclr;

// INTERNAL TRI DECLARATION
    tri0 aclr;

// LOCAL INTEGER DECLARATION
    integer cnt_mod;
    integer cnt_mod_r;
    integer i;
    integer i_maximize_speed;
    integer i_mem_address;
    integer i_first_bit_position;

// COMPONENT INSTANTIATION
    ALTERA_DEVICE_FAMILIES dev ();
    ALTERA_MF_HINT_EVALUATION eva();

// FUNCTION DELCRARATION
    // Convert string to integer
    function integer str_to_int;
        input [8*16:1] s;

        reg [8*16:1] reg_s;
        reg [8:1] digit;
        reg [8:1] tmp;
        integer m, ivalue;

        begin
            ivalue = 0;
            reg_s = s;
            for (m=1; m<=16; m=m+1)
            begin
                tmp = reg_s[128:121];
                digit = tmp & 8'b00001111;
                reg_s = reg_s << 8;
                ivalue = ivalue * 10 + digit;
            end
            str_to_int = ivalue;
        end
    endfunction

// INITIAL CONSTRUCT BLOCK
    initial
    begin

    feature_family_has_stratixiii_style_ram = dev.FEATURE_FAMILY_HAS_STRATIXIII_STYLE_RAM(intended_device_family);
    feature_family_has_stratixii_style_ram = dev.FEATURE_FAMILY_HAS_STRATIXII_STYLE_RAM(intended_device_family);
    feature_family_stratixiii = dev.FEATURE_FAMILY_STRATIXIII(intended_device_family);
    feature_family_cycloneiii = dev.FEATURE_FAMILY_CYCLONEIII(intended_device_family);
    feature_family_stratixii = dev.FEATURE_FAMILY_STRATIXII(intended_device_family);
    feature_family_cycloneii = dev.FEATURE_FAMILY_CYCLONEII(intended_device_family);
    feature_family_stratix = dev.FEATURE_FAMILY_STRATIX(intended_device_family);

        if ((lpm_showahead != "ON") && (lpm_showahead != "OFF"))
            $display ("Error! LPM_SHOWAHEAD must be ON or OFF.");
        if ((underflow_checking != "ON") && (underflow_checking != "OFF"))
            $display ("Error! UNDERFLOW_CHECKING must be ON or OFF.");
        if ((overflow_checking != "ON") && (overflow_checking != "OFF"))
            $display ("Error! OVERFLOW_CHECKING must be ON or OFF.");
        if (lpm_numwords > (1 << lpm_widthu))
            $display ("Error! LPM_NUMWORDS must be less than or equal to 2**LPM_WIDTHU.");
        if (dev.IS_VALID_FAMILY(intended_device_family) == 0)
            $display ("Error! Unknown INTENDED_DEVICE_FAMILY=%s.", intended_device_family);

        for (i = 0; i < (1 << lpm_widthu_r) + WIDTH_RATIO; i = i + 1)
            mem_data[i] <= {lpm_width_r{1'b0}};
        i_rdptr_g <= 0;
        i_rdptr_g1p <= 1;
        i_wrptr_g <= 0;
        i_wrptr_g1 <= 1;
        i_delayed_wrptr_g <= 0;
        i_rdempty <= 1;
        i_wrempty_area <= 1;
        i_wrempty_speed <= 1;
        i_rdempty_rreg <= 1;
        i_rdfull_speed <= 0;
        i_rdfull_area  <= 0;
        i_wrfull <= 0;
        i_wrfull_wreg <= 0;
        sync_rdaclr_pre <= 1'b1;
        sync_wraclr_pre <= 1'b1;
        sync_rdaclr <= 1'b1;
        sync_wraclr <= 1'b1;
        i_q <= {lpm_width_r{1'b0}};
        is_underflow <= 0;
        is_overflow <= 0;
        no_warn <= 0;
        i_mem_address <= 0;
        i_first_bit_position <= 0;

        i_maximize_speed = str_to_int(eva.GET_PARAMETER_VALUE(lpm_hint, "MAXIMIZE_SPEED"));

        if (feature_family_has_stratixiii_style_ram == 1)
        begin
            use_wrempty_speed <= 1;
            use_rdfull_speed <= 1;
        end
        else if (feature_family_has_stratixii_style_ram == 1)
        begin
            use_wrempty_speed <= ((i_maximize_speed > 5) || (wrsync_delaypipe >= 2)) ? 1 : 0;
            use_rdfull_speed <= ((i_maximize_speed > 5) || (rdsync_delaypipe >= 2)) ? 1 : 0;
        end
        else
        begin
            use_wrempty_speed <= 0;
            use_rdfull_speed <= 0;
        end

        if (feature_family_has_stratixii_style_ram == 1)
        begin
            if (add_usedw_msb_bit == "OFF")
            begin
                if (lpm_width_r > lpm_width)
                begin
                    cnt_mod <= (1 << lpm_widthu) + WIDTH_RATIO;
                    cnt_mod_r <= (1 << lpm_widthu_r) + 1;
                end
                else
                begin
                    cnt_mod <= (1 << lpm_widthu) + 1;
                    cnt_mod_r <= (1 << lpm_widthu_r) + WIDTH_RATIO;
                end
            end
            else
            begin
                if (lpm_width_r > lpm_width)
                begin
                    cnt_mod <= (1 << (lpm_widthu-1)) + WIDTH_RATIO;
                    cnt_mod_r <= (1 << (lpm_widthu_r-1)) + 1;
                end
                else
                begin
                    cnt_mod <= (1 << (lpm_widthu-1)) + 1;
                    cnt_mod_r <= (1 << (lpm_widthu_r-1)) + WIDTH_RATIO;
                end
            end
        end
        else
        begin
            cnt_mod <= 1 << lpm_widthu;
            cnt_mod_r <= 1 << lpm_widthu_r;
        end

        if ((lpm_showahead == "OFF") &&
        ((feature_family_stratixii == 1) ||
        ((feature_family_cycloneii == 1))))
            i_q_is_registered = 1'b1;
        else
            i_q_is_registered = 1'b0;
    end

// COMPONENT INSTANTIATIONS
    dcfifo_dffpipe DP_WS_DGRP (
        .d (i_rdptr_g),
        .clock (wrclk),
        .aclr (aclr),
        .q (i_ws_dgrp));
    defparam
        DP_WS_DGRP.lpm_delay = wrsync_delaypipe,
        DP_WS_DGRP.lpm_width = lpm_widthu_r + 1;

    dcfifo_dffpipe DP_RS_DGWP (
        .d (i_delayed_wrptr_g),
        .clock (rdclk),
        .aclr (aclr),
        .q (i_rs_dgwp));
    defparam
        DP_RS_DGWP.lpm_delay = rdsync_delaypipe,
        DP_RS_DGWP.lpm_width = lpm_widthu + 1;

    dcfifo_dffpipe DP_RDUSEDW (
        .d (i_rdusedw_tmp),
        .clock (rdclk),
        .aclr (aclr),
        .q (i_rdusedw));
    dcfifo_dffpipe DP_WRUSEDW (
        .d (i_wrusedw_tmp),
        .clock (wrclk),
        .aclr (aclr),
        .q (i_wrusedw));
    defparam
        DP_RDUSEDW.lpm_delay = (delay_rdusedw > 2) ? 2 : delay_rdusedw,
        DP_RDUSEDW.lpm_width = lpm_widthu_r + 1,
        DP_WRUSEDW.lpm_delay = (delay_wrusedw > 2) ? 2 : delay_wrusedw,
        DP_WRUSEDW.lpm_width = lpm_widthu + 1;

// ALWAYS CONSTRUCT BLOCK
    always @(posedge rdclk or posedge aclr)
    begin
        if ($time > 0)
        begin
            if (aclr)
            begin
                sync_rdaclr <= 1'b1;
                sync_rdaclr_pre <= 1'b1;
            end
            else
            begin
                sync_rdaclr <= sync_rdaclr_pre;
                sync_rdaclr_pre <= 1'b0;
            end
        end
    end

    always @(posedge wrclk or posedge aclr)
    begin
        if ($time > 0)
        begin
            if (aclr)
            begin
                sync_wraclr <= 1'b1;
                sync_wraclr_pre <= 1'b1;
            end
            else
            begin
                sync_wraclr <= sync_wraclr_pre;
                sync_wraclr_pre <= 1'b0;
            end
        end
    end

    always @(posedge wrclk or posedge aclr)
    begin
        if (aclr)
        begin
            i_wrptr_g <= 0;
            i_wrptr_g1 <= 1;
            i_delayed_wrptr_g <= 0;
            i_wrempty_area <= 1;
            i_wrempty_speed <= 1;
            i_wrfull <= 0;
            i_wrfull_wreg <= 0;
            is_overflow <= 0;
            no_warn <= 0;
	        i_mem_address <= 0;
	        i_first_bit_position <= 0;
        end
        else if (~write_aclr && ($time > 0))
        begin
            if (i_wren)
            begin
                if (i_wrfull && (overflow_checking == "OFF"))
                begin
                    if (((feature_family_has_stratixii_style_ram == 1) &&
                        ((use_eab == "ON") || ((use_eab == "OFF") && (lpm_width != lpm_width_r) && (lpm_width_r != 0)) ||
                        ((lpm_numwords < 16) && (clocks_are_synchronized == "FALSE")))) ||
                        ((feature_family_stratix == 1) && (use_eab == "ON") &&
                        (((lpm_showahead == "ON") && (add_ram_output_register == "OFF")) ||
                        (clocks_are_synchronized == "FALSE_LOW_LATENCY"))))
                    begin
                        if (no_warn == 1'b0)
                        begin
                            $display("Warning : Overflow occurred! Fifo output is unknown until the next reset is asserted.");
                            $display("Time: %0t  Instance: %m", $time);
                            no_warn <= 1'b1;
                        end
                        is_overflow <= 1'b1;
                    end
                end
                else
                begin
                    if (i_wrptr_g1 < cnt_mod - 1)
                        i_wrptr_g1 <= i_wrptr_g1 + 1;
                    else
                        i_wrptr_g1 <= 0;

                    i_wrptr_g <= i_wrptr_g1;

                    if (lpm_width > lpm_width_r)
                    begin
                        for (i = 0; i < WIDTH_RATIO; i = i+1)
                            mem_data[i_wrptr_g*WIDTH_RATIO+i] <= data >> (lpm_width_r*i);
                    end
                    else if (lpm_width < lpm_width_r)
                    begin
                        i_mem_address <= i_wrptr_g1 /WIDTH_RATIO;
                        i_first_bit_position <= (i_wrptr_g1 % WIDTH_RATIO) *lpm_width;
                        for(i = 0; i < lpm_width; i = i+1)
                            mem_data[i_mem_address][i_first_bit_position + i] <= data[i];
                    end
                    else
                        mem_data[i_wrptr_g] <= data;
                end
            end
            i_delayed_wrptr_g <= i_wrptr_g;
        end
    end // @(wrclk)

    always @(posedge rdclk or posedge aclr)
    begin
        if (aclr)
        begin
            i_rdptr_g <= 0;
            i_rdptr_g1p <= 1;
            i_rdempty <= 1;
            i_rdempty_rreg <= 1;
            i_rdfull_speed <= 0;
            i_rdfull_area <= 0;
            is_underflow <= 0;
            no_warn <= 0;

            if(i_q_is_registered)
                i_q <= 0;
            else if ((feature_family_stratixii == 1) || (feature_family_cycloneii == 1))
                i_q <= {lpm_width_r{1'bx}};

        end
        else if (~read_aclr && ($time > 0))
        begin
            if (i_rden && ($time > 0))
            begin
                if (i_rdempty && (underflow_checking == "OFF"))
                begin
                    if (((feature_family_has_stratixii_style_ram == 1) &&
                        ((use_eab == "ON") || ((use_eab == "OFF") && (lpm_width != lpm_width_r) && (lpm_width_r != 0)) ||
                        ((lpm_numwords < 16) && (clocks_are_synchronized == "FALSE")))) ||
                        ((feature_family_stratix == 1) && (use_eab == "ON") &&
                        (((lpm_showahead == "ON") && (add_ram_output_register == "OFF")) ||
                        (clocks_are_synchronized == "FALSE_LOW_LATENCY"))))
                    begin
                        if (no_warn == 1'b0)
                        begin
                            $display("Warning : Underflow occurred! Fifo output is unknown until the next reset is asserted.");
                            $display("Time: %0t  Instance: %m", $time);
                            no_warn <= 1'b1;
                        end
                        is_underflow <= 1'b1;
                    end
                end
                else
                begin
                    if (i_rdptr_g1p < cnt_mod_r - 1)
                        i_rdptr_g1p <= i_rdptr_g1p + 1;
                    else
                        i_rdptr_g1p <= 0;

                    i_rdptr_g <= i_rdptr_g1p;
                end
            end
        end
    end

    always @(posedge rdclk)
    begin
        if (is_underflow || is_overflow)
            i_q <= {lpm_width_r{1'bx}};
        else
        begin
            if ((! i_q_is_registered) && ($time > 0))
            begin
                if (aclr && ((feature_family_stratixii == 1) ||
                (feature_family_cycloneii == 1)))
                    i_q <= {lpm_width_r{1'bx}};
                else
                begin
                    if (i_rdempty == 1'b1)
                        i_q <= mem_data[i_rdptr_g];
                    else if (i_rden)
                        i_q <= mem_data[i_rdptr_g1p];
                end
            end
            else if (~aclr && i_rden && ($time > 0))
                i_q <= mem_data[i_rdptr_g];
        end
    end

    // Usedw, Empty, Full
    always @(i_wrptr_g or i_ws_dgrp or cnt_mod)
    begin
        if (i_wrptr_g < (i_ws_dgrp*lpm_width_r/lpm_width))
            i_wrusedw_tmp <= cnt_mod + i_wrptr_g - i_ws_dgrp*lpm_width_r/lpm_width;
        else
            i_wrusedw_tmp <= i_wrptr_g - i_ws_dgrp*lpm_width_r/lpm_width;

        if (lpm_width > lpm_width_r)
        begin
            if (i_wrptr_g == (i_ws_dgrp/WIDTH_RATIO))
                i_wrempty_speed <= 1;
            else
                i_wrempty_speed <= 0;
        end
        else
        begin
            if ((i_wrptr_g/WIDTH_RATIO) == i_ws_dgrp)
                i_wrempty_speed <= 1;
            else
                i_wrempty_speed <= 0;
        end
    end // @(i_wrptr_g or i_ws_dgrp)

    always @(i_rdptr_g or i_rs_dgwp or cnt_mod)
    begin
        if ((i_rs_dgwp*lpm_width/lpm_width_r) < i_rdptr_g)
            i_rdusedw_tmp <= (cnt_mod + i_rs_dgwp)*lpm_width/lpm_width_r - i_rdptr_g;
        else
            i_rdusedw_tmp <= i_rs_dgwp*lpm_width/lpm_width_r - i_rdptr_g;

        if (lpm_width < lpm_width_r)
        begin
            if ((i_rdptr_g*lpm_width_r/lpm_width) == (i_rs_dgwp + WIDTH_RATIO) %cnt_mod)
                i_rdfull_speed <= 1;
            else
                i_rdfull_speed <= 0;
        end
        else
        begin
            if (i_rdptr_g == ((i_rs_dgwp +1) % cnt_mod)*lpm_width/lpm_width_r)
                i_rdfull_speed <= 1;
            else
                i_rdfull_speed <= 0;
        end
    end // @(i_wrptr_g or i_rs_dgwp)

    always @(i_wrptr_g1 or i_ws_dgrp or cnt_mod)
    begin
        if (lpm_width < lpm_width_r)
        begin
            if ((i_wrptr_g1 + WIDTH_RATIO -1) % cnt_mod == (i_ws_dgrp*lpm_width_r/lpm_width))
                i_wrfull <= 1;
            else
                i_wrfull <= 0;
        end
        else
        begin
            if (i_wrptr_g1 == (i_ws_dgrp*lpm_width_r/lpm_width))
                i_wrfull <= 1;
            else
                i_wrfull <= 0;
        end
    end // @(i_wrptr_g1 or i_ws_dgrp)

    always @(i_rdptr_g or i_rs_dgwp)
    begin
        if (lpm_width > lpm_width_r)
        begin
            if ((i_rdptr_g/WIDTH_RATIO) == i_rs_dgwp)
                i_rdempty <= 1;
            else
                i_rdempty <= 0;
        end
        else
        begin
            if (i_rdptr_g == i_rs_dgwp/WIDTH_RATIO)
                i_rdempty <= 1;
            else
                i_rdempty <= 0;
        end
    end // @(i_rdptr_g or i_rs_dgwp)

    always @(posedge rdclk)
    begin
        i_rdfull_area <= i_wrfull_wreg;
        if ((~aclr) && (read_aclr_synch == "ON") && ((feature_family_stratixiii == 1) ||
            (feature_family_cycloneiii == 1)))
            i_rdempty_rreg <= (i_rdempty | read_aclr);
        else
        i_rdempty_rreg <= i_rdempty;
    end // @(posedge rdclk)

    always @(posedge wrclk)
    begin
        i_wrempty_area <= i_rdempty_rreg;

        if ((~aclr) && (write_aclr_synch == "ON") && ((feature_family_stratixii == 1) ||
            (feature_family_cycloneii == 1)))
            i_wrfull_wreg <= (i_wrfull | write_aclr);
        else
            i_wrfull_wreg <= i_wrfull;
    end // @(posedge wrclk)

// CONTINOUS ASSIGNMENT
    assign i_rden = (((feature_family_stratixiii == 1) ||
                      (feature_family_cycloneiii == 1)) &&
                      (read_aclr_synch == "ON")) ?
                     ((underflow_checking == "OFF") ?  rdreq && (!sync_rdaclr)
                                                    : (rdreq && !(i_rdempty | sync_rdaclr))) :
                      (underflow_checking == "OFF") ?  rdreq : (rdreq && !i_rdempty);
    assign i_wren = (((feature_family_stratixii == 1) ||
                      (feature_family_cycloneii == 1)) &&
                      (write_aclr_synch == "ON")) ?
                     ((overflow_checking == "OFF") ?  wrreq && (!sync_wraclr)
                                                   : (wrreq && !(i_wrfull | sync_wraclr))) :
                      (overflow_checking == "OFF") ?  wrreq : (wrreq && !i_wrfull);     
    assign rdempty = (is_underflow || is_overflow) ? 1'bx :
                     (((feature_family_stratixiii == 1) ||
                       (feature_family_cycloneiii == 1)) &&
                       (read_aclr_synch == "ON")) ? (i_rdempty | read_aclr) : i_rdempty;
    assign wrempty = (is_underflow || is_overflow) ? 1'bx :
                     (use_wrempty_speed) ? i_wrempty_speed : i_wrempty_area;
    assign rdfull = (is_underflow || is_overflow) ? 1'bx :
                    (use_rdfull_speed)  ? i_rdfull_speed : i_rdfull_area;
    assign wrfull = (is_underflow || is_overflow) ? 1'bx :
                     (((feature_family_stratixii == 1) ||
                       (feature_family_cycloneii == 1)) &&
                       (write_aclr_synch == "ON")) ? (i_wrfull | write_aclr) : i_wrfull;
    assign wrusedw = (is_underflow || is_overflow) ? {lpm_widthu{1'bx}} :
                        i_wrusedw[lpm_widthu-1:0];
    assign rdusedw = (is_underflow || is_overflow) ? {lpm_widthu_r{1'bx}} :
                        i_rdusedw[lpm_widthu_r-1:0];
    assign q = (is_underflow || is_overflow) ? {lpm_width_r{1'bx}} : i_q;
    assign read_aclr = (((feature_family_stratixiii == 1) ||
                         (feature_family_cycloneiii == 1)) &&
                         (read_aclr_synch == "ON")) ? sync_rdaclr : aclr;
    assign write_aclr = (((feature_family_stratixii == 1) ||
                          (feature_family_cycloneii == 1)) &&
                          (write_aclr_synch == "ON")) ? sync_wraclr : aclr;

endmodule // dcfifo_low_latency
// END OF MODULE

//START_MODULE_NAME------------------------------------------------------------
//
// Module Name     :  dcfifo_mixed_widths
//
// Description     :  Mixed widths Dual Clocks FIFO
//
// Limitation      :
//
// Results expected:
//
//END_MODULE_NAME--------------------------------------------------------------

// BEGINNING OF MODULE
`timescale 1 ps / 1 ps

// MODULE DECLARATION
module dcfifo_mixed_widths ( data, rdclk, wrclk, aclr, rdreq, wrreq,
                eccstatus, rdfull, wrfull, rdempty, wrempty, rdusedw, wrusedw, q);

// GLOBAL PARAMETER DECLARATION
    parameter lpm_width = 1;
    parameter lpm_widthu = 1;
    parameter lpm_width_r = lpm_width;
    parameter lpm_widthu_r = lpm_widthu;
    parameter lpm_numwords = 2;
    parameter delay_rdusedw = 1;
    parameter delay_wrusedw = 1;
    parameter rdsync_delaypipe = 0;
    parameter wrsync_delaypipe = 0;
    parameter intended_device_family = "Stratix";
    parameter lpm_showahead = "OFF";
    parameter underflow_checking = "ON";
    parameter overflow_checking = "ON";
    parameter clocks_are_synchronized = "FALSE";
    parameter use_eab = "ON";
    parameter add_ram_output_register = "OFF";
    parameter lpm_hint = "USE_EAB=ON";
    parameter lpm_type = "dcfifo_mixed_widths";
    parameter add_usedw_msb_bit = "OFF";
    parameter read_aclr_synch = "OFF";
    parameter write_aclr_synch = "OFF";
    parameter enable_ecc = "FALSE";

// LOCAL_PARAMETERS_BEGIN

    parameter add_width = 1;
    parameter ram_block_type = "AUTO";

    parameter FAMILY_HAS_STRATIXII_STYLE_RAM = (((((intended_device_family == "Stratix II") || (intended_device_family == "STRATIX II") || (intended_device_family == "stratix ii") || (intended_device_family == "StratixII") || (intended_device_family == "STRATIXII") || (intended_device_family == "stratixii") || (intended_device_family == "Armstrong") || (intended_device_family == "ARMSTRONG") || (intended_device_family == "armstrong"))
                                || ((intended_device_family == "HardCopy II") || (intended_device_family == "HARDCOPY II") || (intended_device_family == "hardcopy ii") || (intended_device_family == "HardCopyII") || (intended_device_family == "HARDCOPYII") || (intended_device_family == "hardcopyii") || (intended_device_family == "Fusion") || (intended_device_family == "FUSION") || (intended_device_family == "fusion"))
                                || (((intended_device_family == "Stratix II GX") || (intended_device_family == "STRATIX II GX") || (intended_device_family == "stratix ii gx") || (intended_device_family == "StratixIIGX") || (intended_device_family == "STRATIXIIGX") || (intended_device_family == "stratixiigx"))
                                || ((intended_device_family == "Arria GX") || (intended_device_family == "ARRIA GX") || (intended_device_family == "arria gx") || (intended_device_family == "ArriaGX") || (intended_device_family == "ARRIAGX") || (intended_device_family == "arriagx") || (intended_device_family == "Stratix II GX Lite") || (intended_device_family == "STRATIX II GX LITE") || (intended_device_family == "stratix ii gx lite") || (intended_device_family == "StratixIIGXLite") || (intended_device_family == "STRATIXIIGXLITE") || (intended_device_family == "stratixiigxlite"))
                                ) || (((intended_device_family == "Stratix III") || (intended_device_family == "STRATIX III") || (intended_device_family == "stratix iii") || (intended_device_family == "StratixIII") || (intended_device_family == "STRATIXIII") || (intended_device_family == "stratixiii") || (intended_device_family == "Titan") || (intended_device_family == "TITAN") || (intended_device_family == "titan") || (intended_device_family == "SIII") || (intended_device_family == "siii"))
                                || (((intended_device_family == "Stratix IV") || (intended_device_family == "STRATIX IV") || (intended_device_family == "stratix iv") || (intended_device_family == "TGX") || (intended_device_family == "tgx") || (intended_device_family == "StratixIV") || (intended_device_family == "STRATIXIV") || (intended_device_family == "stratixiv") || (intended_device_family == "Stratix IV (GT)") || (intended_device_family == "STRATIX IV (GT)") || (intended_device_family == "stratix iv (gt)") || (intended_device_family == "Stratix IV (GX)") || (intended_device_family == "STRATIX IV (GX)") || (intended_device_family == "stratix iv (gx)") || (intended_device_family == "Stratix IV (E)") || (intended_device_family == "STRATIX IV (E)") || (intended_device_family == "stratix iv (e)") || (intended_device_family == "StratixIV(GT)") || (intended_device_family == "STRATIXIV(GT)") || (intended_device_family == "stratixiv(gt)") || (intended_device_family == "StratixIV(GX)") || (intended_device_family == "STRATIXIV(GX)") || (intended_device_family == "stratixiv(gx)") || (intended_device_family == "StratixIV(E)") || (intended_device_family == "STRATIXIV(E)") || (intended_device_family == "stratixiv(e)") || (intended_device_family == "StratixIIIGX") || (intended_device_family == "STRATIXIIIGX") || (intended_device_family == "stratixiiigx") || (intended_device_family == "Stratix IV (GT/GX/E)") || (intended_device_family == "STRATIX IV (GT/GX/E)") || (intended_device_family == "stratix iv (gt/gx/e)") || (intended_device_family == "Stratix IV (GT/E/GX)") || (intended_device_family == "STRATIX IV (GT/E/GX)") || (intended_device_family == "stratix iv (gt/e/gx)") || (intended_device_family == "Stratix IV (E/GT/GX)") || (intended_device_family == "STRATIX IV (E/GT/GX)") || (intended_device_family == "stratix iv (e/gt/gx)") || (intended_device_family == "Stratix IV (E/GX/GT)") || (intended_device_family == "STRATIX IV (E/GX/GT)") || (intended_device_family == "stratix iv (e/gx/gt)") || (intended_device_family == "StratixIV(GT/GX/E)") || (intended_device_family == "STRATIXIV(GT/GX/E)") || (intended_device_family == "stratixiv(gt/gx/e)") || (intended_device_family == "StratixIV(GT/E/GX)") || (intended_device_family == "STRATIXIV(GT/E/GX)") || (intended_device_family == "stratixiv(gt/e/gx)") || (intended_device_family == "StratixIV(E/GX/GT)") || (intended_device_family == "STRATIXIV(E/GX/GT)") || (intended_device_family == "stratixiv(e/gx/gt)") || (intended_device_family == "StratixIV(E/GT/GX)") || (intended_device_family == "STRATIXIV(E/GT/GX)") || (intended_device_family == "stratixiv(e/gt/gx)") || (intended_device_family == "Stratix IV (GX/E)") || (intended_device_family == "STRATIX IV (GX/E)") || (intended_device_family == "stratix iv (gx/e)") || (intended_device_family == "StratixIV(GX/E)") || (intended_device_family == "STRATIXIV(GX/E)") || (intended_device_family == "stratixiv(gx/e)"))
                                || ((intended_device_family == "Arria II GX") || (intended_device_family == "ARRIA II GX") || (intended_device_family == "arria ii gx") || (intended_device_family == "ArriaIIGX") || (intended_device_family == "ARRIAIIGX") || (intended_device_family == "arriaiigx") || (intended_device_family == "Arria IIGX") || (intended_device_family == "ARRIA IIGX") || (intended_device_family == "arria iigx") || (intended_device_family == "ArriaII GX") || (intended_device_family == "ARRIAII GX") || (intended_device_family == "arriaii gx") || (intended_device_family == "Arria II") || (intended_device_family == "ARRIA II") || (intended_device_family == "arria ii") || (intended_device_family == "ArriaII") || (intended_device_family == "ARRIAII") || (intended_device_family == "arriaii") || (intended_device_family == "Arria II (GX/E)") || (intended_device_family == "ARRIA II (GX/E)") || (intended_device_family == "arria ii (gx/e)") || (intended_device_family == "ArriaII(GX/E)") || (intended_device_family == "ARRIAII(GX/E)") || (intended_device_family == "arriaii(gx/e)") || (intended_device_family == "PIRANHA") || (intended_device_family == "piranha"))
                                || (((intended_device_family == "HardCopy IV") || (intended_device_family == "HARDCOPY IV") || (intended_device_family == "hardcopy iv") || (intended_device_family == "HardCopyIV") || (intended_device_family == "HARDCOPYIV") || (intended_device_family == "hardcopyiv") || (intended_device_family == "HardCopy IV (GX)") || (intended_device_family == "HARDCOPY IV (GX)") || (intended_device_family == "hardcopy iv (gx)") || (intended_device_family == "HardCopy IV (E)") || (intended_device_family == "HARDCOPY IV (E)") || (intended_device_family == "hardcopy iv (e)") || (intended_device_family == "HardCopyIV(GX)") || (intended_device_family == "HARDCOPYIV(GX)") || (intended_device_family == "hardcopyiv(gx)") || (intended_device_family == "HardCopyIV(E)") || (intended_device_family == "HARDCOPYIV(E)") || (intended_device_family == "hardcopyiv(e)") || (intended_device_family == "HCXIV") || (intended_device_family == "hcxiv") || (intended_device_family == "HardCopy IV (GX/E)") || (intended_device_family == "HARDCOPY IV (GX/E)") || (intended_device_family == "hardcopy iv (gx/e)") || (intended_device_family == "HardCopy IV (E/GX)") || (intended_device_family == "HARDCOPY IV (E/GX)") || (intended_device_family == "hardcopy iv (e/gx)") || (intended_device_family == "HardCopyIV(GX/E)") || (intended_device_family == "HARDCOPYIV(GX/E)") || (intended_device_family == "hardcopyiv(gx/e)") || (intended_device_family == "HardCopyIV(E/GX)") || (intended_device_family == "HARDCOPYIV(E/GX)") || (intended_device_family == "hardcopyiv(e/gx)"))
                                || ((intended_device_family == "HardCopy IV") || (intended_device_family == "HARDCOPY IV") || (intended_device_family == "hardcopy iv") || (intended_device_family == "HardCopyIV") || (intended_device_family == "HARDCOPYIV") || (intended_device_family == "hardcopyiv") || (intended_device_family == "HardCopy IV (GX)") || (intended_device_family == "HARDCOPY IV (GX)") || (intended_device_family == "hardcopy iv (gx)") || (intended_device_family == "HardCopy IV (E)") || (intended_device_family == "HARDCOPY IV (E)") || (intended_device_family == "hardcopy iv (e)") || (intended_device_family == "HardCopyIV(GX)") || (intended_device_family == "HARDCOPYIV(GX)") || (intended_device_family == "hardcopyiv(gx)") || (intended_device_family == "HardCopyIV(E)") || (intended_device_family == "HARDCOPYIV(E)") || (intended_device_family == "hardcopyiv(e)") || (intended_device_family == "HCXIV") || (intended_device_family == "hcxiv") || (intended_device_family == "HardCopy IV (GX/E)") || (intended_device_family == "HARDCOPY IV (GX/E)") || (intended_device_family == "hardcopy iv (gx/e)") || (intended_device_family == "HardCopy IV (E/GX)") || (intended_device_family == "HARDCOPY IV (E/GX)") || (intended_device_family == "hardcopy iv (e/gx)") || (intended_device_family == "HardCopyIV(GX/E)") || (intended_device_family == "HARDCOPYIV(GX/E)") || (intended_device_family == "hardcopyiv(gx/e)") || (intended_device_family == "HardCopyIV(E/GX)") || (intended_device_family == "HARDCOPYIV(E/GX)") || (intended_device_family == "hardcopyiv(e/gx)"))
                                ) || (((intended_device_family == "Stratix V") || (intended_device_family == "STRATIX V") || (intended_device_family == "stratix v") || (intended_device_family == "StratixV") || (intended_device_family == "STRATIXV") || (intended_device_family == "stratixv") || (intended_device_family == "Stratix V (GS)") || (intended_device_family == "STRATIX V (GS)") || (intended_device_family == "stratix v (gs)") || (intended_device_family == "StratixV(GS)") || (intended_device_family == "STRATIXV(GS)") || (intended_device_family == "stratixv(gs)") || (intended_device_family == "Stratix V (GT)") || (intended_device_family == "STRATIX V (GT)") || (intended_device_family == "stratix v (gt)") || (intended_device_family == "StratixV(GT)") || (intended_device_family == "STRATIXV(GT)") || (intended_device_family == "stratixv(gt)") || (intended_device_family == "Stratix V (GX)") || (intended_device_family == "STRATIX V (GX)") || (intended_device_family == "stratix v (gx)") || (intended_device_family == "StratixV(GX)") || (intended_device_family == "STRATIXV(GX)") || (intended_device_family == "stratixv(gx)") || (intended_device_family == "Stratix V (GS/GX)") || (intended_device_family == "STRATIX V (GS/GX)") || (intended_device_family == "stratix v (gs/gx)") || (intended_device_family == "StratixV(GS/GX)") || (intended_device_family == "STRATIXV(GS/GX)") || (intended_device_family == "stratixv(gs/gx)") || (intended_device_family == "Stratix V (GS/GT)") || (intended_device_family == "STRATIX V (GS/GT)") || (intended_device_family == "stratix v (gs/gt)") || (intended_device_family == "StratixV(GS/GT)") || (intended_device_family == "STRATIXV(GS/GT)") || (intended_device_family == "stratixv(gs/gt)") || (intended_device_family == "Stratix V (GT/GX)") || (intended_device_family == "STRATIX V (GT/GX)") || (intended_device_family == "stratix v (gt/gx)") || (intended_device_family == "StratixV(GT/GX)") || (intended_device_family == "STRATIXV(GT/GX)") || (intended_device_family == "stratixv(gt/gx)") || (intended_device_family == "Stratix V (GX/GS)") || (intended_device_family == "STRATIX V (GX/GS)") || (intended_device_family == "stratix v (gx/gs)") || (intended_device_family == "StratixV(GX/GS)") || (intended_device_family == "STRATIXV(GX/GS)") || (intended_device_family == "stratixv(gx/gs)") || (intended_device_family == "Stratix V (GT/GS)") || (intended_device_family == "STRATIX V (GT/GS)") || (intended_device_family == "stratix v (gt/gs)") || (intended_device_family == "StratixV(GT/GS)") || (intended_device_family == "STRATIXV(GT/GS)") || (intended_device_family == "stratixv(gt/gs)") || (intended_device_family == "Stratix V (GX/GT)") || (intended_device_family == "STRATIX V (GX/GT)") || (intended_device_family == "stratix v (gx/gt)") || (intended_device_family == "StratixV(GX/GT)") || (intended_device_family == "STRATIXV(GX/GT)") || (intended_device_family == "stratixv(gx/gt)") || (intended_device_family == "Stratix V (GS/GT/GX)") || (intended_device_family == "STRATIX V (GS/GT/GX)") || (intended_device_family == "stratix v (gs/gt/gx)") || (intended_device_family == "Stratix V (GS/GX/GT)") || (intended_device_family == "STRATIX V (GS/GX/GT)") || (intended_device_family == "stratix v (gs/gx/gt)") || (intended_device_family == "Stratix V (GT/GS/GX)") || (intended_device_family == "STRATIX V (GT/GS/GX)") || (intended_device_family == "stratix v (gt/gs/gx)") || (intended_device_family == "Stratix V (GT/GX/GS)") || (intended_device_family == "STRATIX V (GT/GX/GS)") || (intended_device_family == "stratix v (gt/gx/gs)") || (intended_device_family == "Stratix V (GX/GS/GT)") || (intended_device_family == "STRATIX V (GX/GS/GT)") || (intended_device_family == "stratix v (gx/gs/gt)") || (intended_device_family == "Stratix V (GX/GT/GS)") || (intended_device_family == "STRATIX V (GX/GT/GS)") || (intended_device_family == "stratix v (gx/gt/gs)") || (intended_device_family == "StratixV(GS/GT/GX)") || (intended_device_family == "STRATIXV(GS/GT/GX)") || (intended_device_family == "stratixv(gs/gt/gx)") || (intended_device_family == "StratixV(GS/GX/GT)") || (intended_device_family == "STRATIXV(GS/GX/GT)") || (intended_device_family == "stratixv(gs/gx/gt)") || (intended_device_family == "StratixV(GT/GS/GX)") || (intended_device_family == "STRATIXV(GT/GS/GX)") || (intended_device_family == "stratixv(gt/gs/gx)") || (intended_device_family == "StratixV(GT/GX/GS)") || (intended_device_family == "STRATIXV(GT/GX/GS)") || (intended_device_family == "stratixv(gt/gx/gs)") || (intended_device_family == "StratixV(GX/GS/GT)") || (intended_device_family == "STRATIXV(GX/GS/GT)") || (intended_device_family == "stratixv(gx/gs/gt)") || (intended_device_family == "StratixV(GX/GT/GS)") || (intended_device_family == "STRATIXV(GX/GT/GS)") || (intended_device_family == "stratixv(gx/gt/gs)") || (intended_device_family == "Stratix V (GS/GT/GX/E)") || (intended_device_family == "STRATIX V (GS/GT/GX/E)") || (intended_device_family == "stratix v (gs/gt/gx/e)") || (intended_device_family == "StratixV(GS/GT/GX/E)") || (intended_device_family == "STRATIXV(GS/GT/GX/E)") || (intended_device_family == "stratixv(gs/gt/gx/e)") || (intended_device_family == "Stratix V (E)") || (intended_device_family == "STRATIX V (E)") || (intended_device_family == "stratix v (e)") || (intended_device_family == "StratixV(E)") || (intended_device_family == "STRATIXV(E)") || (intended_device_family == "stratixv(e)"))
                                || (((intended_device_family == "Arria V GZ") || (intended_device_family == "ARRIA V GZ") || (intended_device_family == "arria v gz") || (intended_device_family == "ArriaVGZ") || (intended_device_family == "ARRIAVGZ") || (intended_device_family == "arriavgz"))
                                ) ) || (((intended_device_family == "Arria V") || (intended_device_family == "ARRIA V") || (intended_device_family == "arria v") || (intended_device_family == "Arria V (GT/GX)") || (intended_device_family == "ARRIA V (GT/GX)") || (intended_device_family == "arria v (gt/gx)") || (intended_device_family == "ArriaV(GT/GX)") || (intended_device_family == "ARRIAV(GT/GX)") || (intended_device_family == "arriav(gt/gx)") || (intended_device_family == "ArriaV") || (intended_device_family == "ARRIAV") || (intended_device_family == "arriav") || (intended_device_family == "Arria V (GT/GX/ST/SX)") || (intended_device_family == "ARRIA V (GT/GX/ST/SX)") || (intended_device_family == "arria v (gt/gx/st/sx)") || (intended_device_family == "ArriaV(GT/GX/ST/SX)") || (intended_device_family == "ARRIAV(GT/GX/ST/SX)") || (intended_device_family == "arriav(gt/gx/st/sx)") || (intended_device_family == "Arria V (GT)") || (intended_device_family == "ARRIA V (GT)") || (intended_device_family == "arria v (gt)") || (intended_device_family == "ArriaV(GT)") || (intended_device_family == "ARRIAV(GT)") || (intended_device_family == "arriav(gt)") || (intended_device_family == "Arria V (GX)") || (intended_device_family == "ARRIA V (GX)") || (intended_device_family == "arria v (gx)") || (intended_device_family == "ArriaV(GX)") || (intended_device_family == "ARRIAV(GX)") || (intended_device_family == "arriav(gx)") || (intended_device_family == "Arria V (ST)") || (intended_device_family == "ARRIA V (ST)") || (intended_device_family == "arria v (st)") || (intended_device_family == "ArriaV(ST)") || (intended_device_family == "ARRIAV(ST)") || (intended_device_family == "arriav(st)") || (intended_device_family == "Arria V (SX)") || (intended_device_family == "ARRIA V (SX)") || (intended_device_family == "arria v (sx)") || (intended_device_family == "ArriaV(SX)") || (intended_device_family == "ARRIAV(SX)") || (intended_device_family == "arriav(sx)"))
                                || (((intended_device_family == "Cyclone V") || (intended_device_family == "CYCLONE V") || (intended_device_family == "cyclone v") || (intended_device_family == "CycloneV") || (intended_device_family == "CYCLONEV") || (intended_device_family == "cyclonev") || (intended_device_family == "Cyclone V (GT/GX/E/SX)") || (intended_device_family == "CYCLONE V (GT/GX/E/SX)") || (intended_device_family == "cyclone v (gt/gx/e/sx)") || (intended_device_family == "CycloneV(GT/GX/E/SX)") || (intended_device_family == "CYCLONEV(GT/GX/E/SX)") || (intended_device_family == "cyclonev(gt/gx/e/sx)") || (intended_device_family == "Cyclone V (E/GX/GT/SX/SE/ST)") || (intended_device_family == "CYCLONE V (E/GX/GT/SX/SE/ST)") || (intended_device_family == "cyclone v (e/gx/gt/sx/se/st)") || (intended_device_family == "CycloneV(E/GX/GT/SX/SE/ST)") || (intended_device_family == "CYCLONEV(E/GX/GT/SX/SE/ST)") || (intended_device_family == "cyclonev(e/gx/gt/sx/se/st)") || (intended_device_family == "Cyclone V (E)") || (intended_device_family == "CYCLONE V (E)") || (intended_device_family == "cyclone v (e)") || (intended_device_family == "CycloneV(E)") || (intended_device_family == "CYCLONEV(E)") || (intended_device_family == "cyclonev(e)") || (intended_device_family == "Cyclone V (GX)") || (intended_device_family == "CYCLONE V (GX)") || (intended_device_family == "cyclone v (gx)") || (intended_device_family == "CycloneV(GX)") || (intended_device_family == "CYCLONEV(GX)") || (intended_device_family == "cyclonev(gx)") || (intended_device_family == "Cyclone V (GT)") || (intended_device_family == "CYCLONE V (GT)") || (intended_device_family == "cyclone v (gt)") || (intended_device_family == "CycloneV(GT)") || (intended_device_family == "CYCLONEV(GT)") || (intended_device_family == "cyclonev(gt)") || (intended_device_family == "Cyclone V (SX)") || (intended_device_family == "CYCLONE V (SX)") || (intended_device_family == "cyclone v (sx)") || (intended_device_family == "CycloneV(SX)") || (intended_device_family == "CYCLONEV(SX)") || (intended_device_family == "cyclonev(sx)") || (intended_device_family == "Cyclone V (SE)") || (intended_device_family == "CYCLONE V (SE)") || (intended_device_family == "cyclone v (se)") || (intended_device_family == "CycloneV(SE)") || (intended_device_family == "CYCLONEV(SE)") || (intended_device_family == "cyclonev(se)") || (intended_device_family == "Cyclone V (ST)") || (intended_device_family == "CYCLONE V (ST)") || (intended_device_family == "cyclone v (st)") || (intended_device_family == "CycloneV(ST)") || (intended_device_family == "CYCLONEV(ST)") || (intended_device_family == "cyclonev(st)"))
                                ) ) || (((intended_device_family == "Arria II GZ") || (intended_device_family == "ARRIA II GZ") || (intended_device_family == "arria ii gz") || (intended_device_family == "ArriaII GZ") || (intended_device_family == "ARRIAII GZ") || (intended_device_family == "arriaii gz") || (intended_device_family == "Arria IIGZ") || (intended_device_family == "ARRIA IIGZ") || (intended_device_family == "arria iigz") || (intended_device_family == "ArriaIIGZ") || (intended_device_family == "ARRIAIIGZ") || (intended_device_family == "arriaiigz"))
                                ) || (((intended_device_family == "Arria 10") || (intended_device_family == "ARRIA 10") || (intended_device_family == "arria 10") || (intended_device_family == "Arria10") || (intended_device_family == "ARRIA10") || (intended_device_family == "arria10") || (intended_device_family == "Arria VI") || (intended_device_family == "ARRIA VI") || (intended_device_family == "arria vi") || (intended_device_family == "ArriaVI") || (intended_device_family == "ARRIAVI") || (intended_device_family == "arriavi") || (intended_device_family == "Night Fury") || (intended_device_family == "NIGHT FURY") || (intended_device_family == "night fury") || (intended_device_family == "nightfury") || (intended_device_family == "NIGHTFURY") || (intended_device_family == "Arria 10 (GX/SX/GT)") || (intended_device_family == "ARRIA 10 (GX/SX/GT)") || (intended_device_family == "arria 10 (gx/sx/gt)") || (intended_device_family == "Arria10(GX/SX/GT)") || (intended_device_family == "ARRIA10(GX/SX/GT)") || (intended_device_family == "arria10(gx/sx/gt)") || (intended_device_family == "Arria 10 (GX)") || (intended_device_family == "ARRIA 10 (GX)") || (intended_device_family == "arria 10 (gx)") || (intended_device_family == "Arria10(GX)") || (intended_device_family == "ARRIA10(GX)") || (intended_device_family == "arria10(gx)") || (intended_device_family == "Arria 10 (SX)") || (intended_device_family == "ARRIA 10 (SX)") || (intended_device_family == "arria 10 (sx)") || (intended_device_family == "Arria10(SX)") || (intended_device_family == "ARRIA10(SX)") || (intended_device_family == "arria10(sx)") || (intended_device_family == "Arria 10 (GT)") || (intended_device_family == "ARRIA 10 (GT)") || (intended_device_family == "arria 10 (gt)") || (intended_device_family == "Arria10(GT)") || (intended_device_family == "ARRIA10(GT)") || (intended_device_family == "arria10(gt)"))
                                || ((intended_device_family == "Arria 10") || (intended_device_family == "ARRIA 10") || (intended_device_family == "arria 10") || (intended_device_family == "Arria10") || (intended_device_family == "ARRIA10") || (intended_device_family == "arria10") || (intended_device_family == "Arria VI") || (intended_device_family == "ARRIA VI") || (intended_device_family == "arria vi") || (intended_device_family == "ArriaVI") || (intended_device_family == "ARRIAVI") || (intended_device_family == "arriavi") || (intended_device_family == "Night Fury") || (intended_device_family == "NIGHT FURY") || (intended_device_family == "night fury") || (intended_device_family == "nightfury") || (intended_device_family == "NIGHTFURY") || (intended_device_family == "Arria 10 (GX/SX/GT)") || (intended_device_family == "ARRIA 10 (GX/SX/GT)") || (intended_device_family == "arria 10 (gx/sx/gt)") || (intended_device_family == "Arria10(GX/SX/GT)") || (intended_device_family == "ARRIA10(GX/SX/GT)") || (intended_device_family == "arria10(gx/sx/gt)") || (intended_device_family == "Arria 10 (GX)") || (intended_device_family == "ARRIA 10 (GX)") || (intended_device_family == "arria 10 (gx)") || (intended_device_family == "Arria10(GX)") || (intended_device_family == "ARRIA10(GX)") || (intended_device_family == "arria10(gx)") || (intended_device_family == "Arria 10 (SX)") || (intended_device_family == "ARRIA 10 (SX)") || (intended_device_family == "arria 10 (sx)") || (intended_device_family == "Arria10(SX)") || (intended_device_family == "ARRIA10(SX)") || (intended_device_family == "arria10(sx)") || (intended_device_family == "Arria 10 (GT)") || (intended_device_family == "ARRIA 10 (GT)") || (intended_device_family == "arria 10 (gt)") || (intended_device_family == "Arria10(GT)") || (intended_device_family == "ARRIA10(GT)") || (intended_device_family == "arria10(gt)"))
                                ) || (((intended_device_family == "Stratix 10") || (intended_device_family == "STRATIX 10") || (intended_device_family == "stratix 10") || (intended_device_family == "Stratix10") || (intended_device_family == "STRATIX10") || (intended_device_family == "stratix10") || (intended_device_family == "nadder") || (intended_device_family == "NADDER") || (intended_device_family == "Stratix 10 (GX/SX)") || (intended_device_family == "STRATIX 10 (GX/SX)") || (intended_device_family == "stratix 10 (gx/sx)") || (intended_device_family == "Stratix10(GX/SX)") || (intended_device_family == "STRATIX10(GX/SX)") || (intended_device_family == "stratix10(gx/sx)") || (intended_device_family == "Stratix 10 (GX)") || (intended_device_family == "STRATIX 10 (GX)") || (intended_device_family == "stratix 10 (gx)") || (intended_device_family == "Stratix10(GX)") || (intended_device_family == "STRATIX10(GX)") || (intended_device_family == "stratix10(gx)") || (intended_device_family == "Stratix 10 (SX)") || (intended_device_family == "STRATIX 10 (SX)") || (intended_device_family == "stratix 10 (sx)") || (intended_device_family == "Stratix10(SX)") || (intended_device_family == "STRATIX10(SX)") || (intended_device_family == "stratix10(sx)"))
                                || ((intended_device_family == "Stratix 10") || (intended_device_family == "STRATIX 10") || (intended_device_family == "stratix 10") || (intended_device_family == "Stratix10") || (intended_device_family == "STRATIX10") || (intended_device_family == "stratix10") || (intended_device_family == "nadder") || (intended_device_family == "NADDER") || (intended_device_family == "Stratix 10 (GX/SX)") || (intended_device_family == "STRATIX 10 (GX/SX)") || (intended_device_family == "stratix 10 (gx/sx)") || (intended_device_family == "Stratix10(GX/SX)") || (intended_device_family == "STRATIX10(GX/SX)") || (intended_device_family == "stratix10(gx/sx)") || (intended_device_family == "Stratix 10 (GX)") || (intended_device_family == "STRATIX 10 (GX)") || (intended_device_family == "stratix 10 (gx)") || (intended_device_family == "Stratix10(GX)") || (intended_device_family == "STRATIX10(GX)") || (intended_device_family == "stratix10(gx)") || (intended_device_family == "Stratix 10 (SX)") || (intended_device_family == "STRATIX 10 (SX)") || (intended_device_family == "stratix 10 (sx)") || (intended_device_family == "Stratix10(SX)") || (intended_device_family == "STRATIX10(SX)") || (intended_device_family == "stratix10(sx)"))
                                ) ) || (((intended_device_family == "HardCopy III") || (intended_device_family == "HARDCOPY III") || (intended_device_family == "hardcopy iii") || (intended_device_family == "HardCopyIII") || (intended_device_family == "HARDCOPYIII") || (intended_device_family == "hardcopyiii") || (intended_device_family == "HCX") || (intended_device_family == "hcx"))
                                || ((intended_device_family == "HardCopy III") || (intended_device_family == "HARDCOPY III") || (intended_device_family == "hardcopy iii") || (intended_device_family == "HardCopyIII") || (intended_device_family == "HARDCOPYIII") || (intended_device_family == "hardcopyiii") || (intended_device_family == "HCX") || (intended_device_family == "hcx"))
                                ) ) ) || (((intended_device_family == "Cyclone II") || (intended_device_family == "CYCLONE II") || (intended_device_family == "cyclone ii") || (intended_device_family == "Cycloneii") || (intended_device_family == "CYCLONEII") || (intended_device_family == "cycloneii") || (intended_device_family == "Magellan") || (intended_device_family == "MAGELLAN") || (intended_device_family == "magellan") || (intended_device_family == "CycloneII") || (intended_device_family == "CYCLONEII") || (intended_device_family == "cycloneii"))
                                || (((intended_device_family == "Cyclone III") || (intended_device_family == "CYCLONE III") || (intended_device_family == "cyclone iii") || (intended_device_family == "CycloneIII") || (intended_device_family == "CYCLONEIII") || (intended_device_family == "cycloneiii") || (intended_device_family == "Barracuda") || (intended_device_family == "BARRACUDA") || (intended_device_family == "barracuda") || (intended_device_family == "Cuda") || (intended_device_family == "CUDA") || (intended_device_family == "cuda") || (intended_device_family == "CIII") || (intended_device_family == "ciii"))
                                || ((intended_device_family == "Cyclone III LS") || (intended_device_family == "CYCLONE III LS") || (intended_device_family == "cyclone iii ls") || (intended_device_family == "CycloneIIILS") || (intended_device_family == "CYCLONEIIILS") || (intended_device_family == "cycloneiiils") || (intended_device_family == "Cyclone III LPS") || (intended_device_family == "CYCLONE III LPS") || (intended_device_family == "cyclone iii lps") || (intended_device_family == "Cyclone LPS") || (intended_device_family == "CYCLONE LPS") || (intended_device_family == "cyclone lps") || (intended_device_family == "CycloneLPS") || (intended_device_family == "CYCLONELPS") || (intended_device_family == "cyclonelps") || (intended_device_family == "Tarpon") || (intended_device_family == "TARPON") || (intended_device_family == "tarpon") || (intended_device_family == "Cyclone IIIE") || (intended_device_family == "CYCLONE IIIE") || (intended_device_family == "cyclone iiie"))
                                || (((intended_device_family == "Cyclone IV GX") || (intended_device_family == "CYCLONE IV GX") || (intended_device_family == "cyclone iv gx") || (intended_device_family == "Cyclone IVGX") || (intended_device_family == "CYCLONE IVGX") || (intended_device_family == "cyclone ivgx") || (intended_device_family == "CycloneIV GX") || (intended_device_family == "CYCLONEIV GX") || (intended_device_family == "cycloneiv gx") || (intended_device_family == "CycloneIVGX") || (intended_device_family == "CYCLONEIVGX") || (intended_device_family == "cycloneivgx") || (intended_device_family == "Cyclone IV") || (intended_device_family == "CYCLONE IV") || (intended_device_family == "cyclone iv") || (intended_device_family == "CycloneIV") || (intended_device_family == "CYCLONEIV") || (intended_device_family == "cycloneiv") || (intended_device_family == "Cyclone IV (GX)") || (intended_device_family == "CYCLONE IV (GX)") || (intended_device_family == "cyclone iv (gx)") || (intended_device_family == "CycloneIV(GX)") || (intended_device_family == "CYCLONEIV(GX)") || (intended_device_family == "cycloneiv(gx)") || (intended_device_family == "Cyclone III GX") || (intended_device_family == "CYCLONE III GX") || (intended_device_family == "cyclone iii gx") || (intended_device_family == "CycloneIII GX") || (intended_device_family == "CYCLONEIII GX") || (intended_device_family == "cycloneiii gx") || (intended_device_family == "Cyclone IIIGX") || (intended_device_family == "CYCLONE IIIGX") || (intended_device_family == "cyclone iiigx") || (intended_device_family == "CycloneIIIGX") || (intended_device_family == "CYCLONEIIIGX") || (intended_device_family == "cycloneiiigx") || (intended_device_family == "Cyclone III GL") || (intended_device_family == "CYCLONE III GL") || (intended_device_family == "cyclone iii gl") || (intended_device_family == "CycloneIII GL") || (intended_device_family == "CYCLONEIII GL") || (intended_device_family == "cycloneiii gl") || (intended_device_family == "Cyclone IIIGL") || (intended_device_family == "CYCLONE IIIGL") || (intended_device_family == "cyclone iiigl") || (intended_device_family == "CycloneIIIGL") || (intended_device_family == "CYCLONEIIIGL") || (intended_device_family == "cycloneiiigl") || (intended_device_family == "Stingray") || (intended_device_family == "STINGRAY") || (intended_device_family == "stingray"))
                                || ((intended_device_family == "Cyclone IV GX") || (intended_device_family == "CYCLONE IV GX") || (intended_device_family == "cyclone iv gx") || (intended_device_family == "Cyclone IVGX") || (intended_device_family == "CYCLONE IVGX") || (intended_device_family == "cyclone ivgx") || (intended_device_family == "CycloneIV GX") || (intended_device_family == "CYCLONEIV GX") || (intended_device_family == "cycloneiv gx") || (intended_device_family == "CycloneIVGX") || (intended_device_family == "CYCLONEIVGX") || (intended_device_family == "cycloneivgx") || (intended_device_family == "Cyclone IV") || (intended_device_family == "CYCLONE IV") || (intended_device_family == "cyclone iv") || (intended_device_family == "CycloneIV") || (intended_device_family == "CYCLONEIV") || (intended_device_family == "cycloneiv") || (intended_device_family == "Cyclone IV (GX)") || (intended_device_family == "CYCLONE IV (GX)") || (intended_device_family == "cyclone iv (gx)") || (intended_device_family == "CycloneIV(GX)") || (intended_device_family == "CYCLONEIV(GX)") || (intended_device_family == "cycloneiv(gx)") || (intended_device_family == "Cyclone III GX") || (intended_device_family == "CYCLONE III GX") || (intended_device_family == "cyclone iii gx") || (intended_device_family == "CycloneIII GX") || (intended_device_family == "CYCLONEIII GX") || (intended_device_family == "cycloneiii gx") || (intended_device_family == "Cyclone IIIGX") || (intended_device_family == "CYCLONE IIIGX") || (intended_device_family == "cyclone iiigx") || (intended_device_family == "CycloneIIIGX") || (intended_device_family == "CYCLONEIIIGX") || (intended_device_family == "cycloneiiigx") || (intended_device_family == "Cyclone III GL") || (intended_device_family == "CYCLONE III GL") || (intended_device_family == "cyclone iii gl") || (intended_device_family == "CycloneIII GL") || (intended_device_family == "CYCLONEIII GL") || (intended_device_family == "cycloneiii gl") || (intended_device_family == "Cyclone IIIGL") || (intended_device_family == "CYCLONE IIIGL") || (intended_device_family == "cyclone iiigl") || (intended_device_family == "CycloneIIIGL") || (intended_device_family == "CYCLONEIIIGL") || (intended_device_family == "cycloneiiigl") || (intended_device_family == "Stingray") || (intended_device_family == "STINGRAY") || (intended_device_family == "stingray"))
                                ) || (((intended_device_family == "Cyclone IV E") || (intended_device_family == "CYCLONE IV E") || (intended_device_family == "cyclone iv e") || (intended_device_family == "CycloneIV E") || (intended_device_family == "CYCLONEIV E") || (intended_device_family == "cycloneiv e") || (intended_device_family == "Cyclone IVE") || (intended_device_family == "CYCLONE IVE") || (intended_device_family == "cyclone ive") || (intended_device_family == "CycloneIVE") || (intended_device_family == "CYCLONEIVE") || (intended_device_family == "cycloneive"))
                                || (((intended_device_family == "Cyclone 10 LP") || (intended_device_family == "CYCLONE 10 LP") || (intended_device_family == "cyclone 10 lp") || (intended_device_family == "cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "Cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp") || (intended_device_family == "C10LP") || (intended_device_family == "c10lp") || (intended_device_family == "Cyclone10LP") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp"))
                                || ((intended_device_family == "Cyclone 10 LP") || (intended_device_family == "CYCLONE 10 LP") || (intended_device_family == "cyclone 10 lp") || (intended_device_family == "cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "Cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp") || (intended_device_family == "C10LP") || (intended_device_family == "c10lp") || (intended_device_family == "Cyclone10LP") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp"))
                                ) ) || (((intended_device_family == "MAX 10") || (intended_device_family == "max 10") || (intended_device_family == "MAX 10 FPGA") || (intended_device_family == "max 10 fpga") || (intended_device_family == "Zippleback") || (intended_device_family == "ZIPPLEBACK") || (intended_device_family == "zippleback") || (intended_device_family == "MAX10") || (intended_device_family == "max10") || (intended_device_family == "MAX 10 (DA/DF/DC/SA/SC)") || (intended_device_family == "max 10 (da/df/dc/sa/sc)") || (intended_device_family == "MAX10(DA/DF/DC/SA/SC)") || (intended_device_family == "max10(da/df/dc/sa/sc)") || (intended_device_family == "MAX 10 (DA)") || (intended_device_family == "max 10 (da)") || (intended_device_family == "MAX10(DA)") || (intended_device_family == "max10(da)") || (intended_device_family == "MAX 10 (DF)") || (intended_device_family == "max 10 (df)") || (intended_device_family == "MAX10(DF)") || (intended_device_family == "max10(df)") || (intended_device_family == "MAX 10 (DC)") || (intended_device_family == "max 10 (dc)") || (intended_device_family == "MAX10(DC)") || (intended_device_family == "max10(dc)") || (intended_device_family == "MAX 10 (SA)") || (intended_device_family == "max 10 (sa)") || (intended_device_family == "MAX10(SA)") || (intended_device_family == "max10(sa)") || (intended_device_family == "MAX 10 (SC)") || (intended_device_family == "max 10 (sc)") || (intended_device_family == "MAX10(SC)") || (intended_device_family == "max10(sc)"))
                                ) || (((intended_device_family == "Cyclone 10 LP") || (intended_device_family == "CYCLONE 10 LP") || (intended_device_family == "cyclone 10 lp") || (intended_device_family == "cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "Cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp") || (intended_device_family == "C10LP") || (intended_device_family == "c10lp") || (intended_device_family == "Cyclone10LP") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp"))
                                || ((intended_device_family == "Cyclone 10 LP") || (intended_device_family == "CYCLONE 10 LP") || (intended_device_family == "cyclone 10 lp") || (intended_device_family == "cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "Cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp") || (intended_device_family == "C10LP") || (intended_device_family == "c10lp") || (intended_device_family == "Cyclone10LP") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp"))
                                ) ) ) ))
                                ? 1 : 0;

    parameter FAMILY_HAS_STRATIXIII_STYLE_RAM = (((((intended_device_family == "Stratix III") || (intended_device_family == "STRATIX III") || (intended_device_family == "stratix iii") || (intended_device_family == "StratixIII") || (intended_device_family == "STRATIXIII") || (intended_device_family == "stratixiii") || (intended_device_family == "Titan") || (intended_device_family == "TITAN") || (intended_device_family == "titan") || (intended_device_family == "SIII") || (intended_device_family == "siii"))
                                || (((intended_device_family == "Stratix IV") || (intended_device_family == "STRATIX IV") || (intended_device_family == "stratix iv") || (intended_device_family == "TGX") || (intended_device_family == "tgx") || (intended_device_family == "StratixIV") || (intended_device_family == "STRATIXIV") || (intended_device_family == "stratixiv") || (intended_device_family == "Stratix IV (GT)") || (intended_device_family == "STRATIX IV (GT)") || (intended_device_family == "stratix iv (gt)") || (intended_device_family == "Stratix IV (GX)") || (intended_device_family == "STRATIX IV (GX)") || (intended_device_family == "stratix iv (gx)") || (intended_device_family == "Stratix IV (E)") || (intended_device_family == "STRATIX IV (E)") || (intended_device_family == "stratix iv (e)") || (intended_device_family == "StratixIV(GT)") || (intended_device_family == "STRATIXIV(GT)") || (intended_device_family == "stratixiv(gt)") || (intended_device_family == "StratixIV(GX)") || (intended_device_family == "STRATIXIV(GX)") || (intended_device_family == "stratixiv(gx)") || (intended_device_family == "StratixIV(E)") || (intended_device_family == "STRATIXIV(E)") || (intended_device_family == "stratixiv(e)") || (intended_device_family == "StratixIIIGX") || (intended_device_family == "STRATIXIIIGX") || (intended_device_family == "stratixiiigx") || (intended_device_family == "Stratix IV (GT/GX/E)") || (intended_device_family == "STRATIX IV (GT/GX/E)") || (intended_device_family == "stratix iv (gt/gx/e)") || (intended_device_family == "Stratix IV (GT/E/GX)") || (intended_device_family == "STRATIX IV (GT/E/GX)") || (intended_device_family == "stratix iv (gt/e/gx)") || (intended_device_family == "Stratix IV (E/GT/GX)") || (intended_device_family == "STRATIX IV (E/GT/GX)") || (intended_device_family == "stratix iv (e/gt/gx)") || (intended_device_family == "Stratix IV (E/GX/GT)") || (intended_device_family == "STRATIX IV (E/GX/GT)") || (intended_device_family == "stratix iv (e/gx/gt)") || (intended_device_family == "StratixIV(GT/GX/E)") || (intended_device_family == "STRATIXIV(GT/GX/E)") || (intended_device_family == "stratixiv(gt/gx/e)") || (intended_device_family == "StratixIV(GT/E/GX)") || (intended_device_family == "STRATIXIV(GT/E/GX)") || (intended_device_family == "stratixiv(gt/e/gx)") || (intended_device_family == "StratixIV(E/GX/GT)") || (intended_device_family == "STRATIXIV(E/GX/GT)") || (intended_device_family == "stratixiv(e/gx/gt)") || (intended_device_family == "StratixIV(E/GT/GX)") || (intended_device_family == "STRATIXIV(E/GT/GX)") || (intended_device_family == "stratixiv(e/gt/gx)") || (intended_device_family == "Stratix IV (GX/E)") || (intended_device_family == "STRATIX IV (GX/E)") || (intended_device_family == "stratix iv (gx/e)") || (intended_device_family == "StratixIV(GX/E)") || (intended_device_family == "STRATIXIV(GX/E)") || (intended_device_family == "stratixiv(gx/e)"))
                                || ((intended_device_family == "Arria II GX") || (intended_device_family == "ARRIA II GX") || (intended_device_family == "arria ii gx") || (intended_device_family == "ArriaIIGX") || (intended_device_family == "ARRIAIIGX") || (intended_device_family == "arriaiigx") || (intended_device_family == "Arria IIGX") || (intended_device_family == "ARRIA IIGX") || (intended_device_family == "arria iigx") || (intended_device_family == "ArriaII GX") || (intended_device_family == "ARRIAII GX") || (intended_device_family == "arriaii gx") || (intended_device_family == "Arria II") || (intended_device_family == "ARRIA II") || (intended_device_family == "arria ii") || (intended_device_family == "ArriaII") || (intended_device_family == "ARRIAII") || (intended_device_family == "arriaii") || (intended_device_family == "Arria II (GX/E)") || (intended_device_family == "ARRIA II (GX/E)") || (intended_device_family == "arria ii (gx/e)") || (intended_device_family == "ArriaII(GX/E)") || (intended_device_family == "ARRIAII(GX/E)") || (intended_device_family == "arriaii(gx/e)") || (intended_device_family == "PIRANHA") || (intended_device_family == "piranha"))
                                || (((intended_device_family == "HardCopy IV") || (intended_device_family == "HARDCOPY IV") || (intended_device_family == "hardcopy iv") || (intended_device_family == "HardCopyIV") || (intended_device_family == "HARDCOPYIV") || (intended_device_family == "hardcopyiv") || (intended_device_family == "HardCopy IV (GX)") || (intended_device_family == "HARDCOPY IV (GX)") || (intended_device_family == "hardcopy iv (gx)") || (intended_device_family == "HardCopy IV (E)") || (intended_device_family == "HARDCOPY IV (E)") || (intended_device_family == "hardcopy iv (e)") || (intended_device_family == "HardCopyIV(GX)") || (intended_device_family == "HARDCOPYIV(GX)") || (intended_device_family == "hardcopyiv(gx)") || (intended_device_family == "HardCopyIV(E)") || (intended_device_family == "HARDCOPYIV(E)") || (intended_device_family == "hardcopyiv(e)") || (intended_device_family == "HCXIV") || (intended_device_family == "hcxiv") || (intended_device_family == "HardCopy IV (GX/E)") || (intended_device_family == "HARDCOPY IV (GX/E)") || (intended_device_family == "hardcopy iv (gx/e)") || (intended_device_family == "HardCopy IV (E/GX)") || (intended_device_family == "HARDCOPY IV (E/GX)") || (intended_device_family == "hardcopy iv (e/gx)") || (intended_device_family == "HardCopyIV(GX/E)") || (intended_device_family == "HARDCOPYIV(GX/E)") || (intended_device_family == "hardcopyiv(gx/e)") || (intended_device_family == "HardCopyIV(E/GX)") || (intended_device_family == "HARDCOPYIV(E/GX)") || (intended_device_family == "hardcopyiv(e/gx)"))
                                || ((intended_device_family == "HardCopy IV") || (intended_device_family == "HARDCOPY IV") || (intended_device_family == "hardcopy iv") || (intended_device_family == "HardCopyIV") || (intended_device_family == "HARDCOPYIV") || (intended_device_family == "hardcopyiv") || (intended_device_family == "HardCopy IV (GX)") || (intended_device_family == "HARDCOPY IV (GX)") || (intended_device_family == "hardcopy iv (gx)") || (intended_device_family == "HardCopy IV (E)") || (intended_device_family == "HARDCOPY IV (E)") || (intended_device_family == "hardcopy iv (e)") || (intended_device_family == "HardCopyIV(GX)") || (intended_device_family == "HARDCOPYIV(GX)") || (intended_device_family == "hardcopyiv(gx)") || (intended_device_family == "HardCopyIV(E)") || (intended_device_family == "HARDCOPYIV(E)") || (intended_device_family == "hardcopyiv(e)") || (intended_device_family == "HCXIV") || (intended_device_family == "hcxiv") || (intended_device_family == "HardCopy IV (GX/E)") || (intended_device_family == "HARDCOPY IV (GX/E)") || (intended_device_family == "hardcopy iv (gx/e)") || (intended_device_family == "HardCopy IV (E/GX)") || (intended_device_family == "HARDCOPY IV (E/GX)") || (intended_device_family == "hardcopy iv (e/gx)") || (intended_device_family == "HardCopyIV(GX/E)") || (intended_device_family == "HARDCOPYIV(GX/E)") || (intended_device_family == "hardcopyiv(gx/e)") || (intended_device_family == "HardCopyIV(E/GX)") || (intended_device_family == "HARDCOPYIV(E/GX)") || (intended_device_family == "hardcopyiv(e/gx)"))
                                ) || (((intended_device_family == "Stratix V") || (intended_device_family == "STRATIX V") || (intended_device_family == "stratix v") || (intended_device_family == "StratixV") || (intended_device_family == "STRATIXV") || (intended_device_family == "stratixv") || (intended_device_family == "Stratix V (GS)") || (intended_device_family == "STRATIX V (GS)") || (intended_device_family == "stratix v (gs)") || (intended_device_family == "StratixV(GS)") || (intended_device_family == "STRATIXV(GS)") || (intended_device_family == "stratixv(gs)") || (intended_device_family == "Stratix V (GT)") || (intended_device_family == "STRATIX V (GT)") || (intended_device_family == "stratix v (gt)") || (intended_device_family == "StratixV(GT)") || (intended_device_family == "STRATIXV(GT)") || (intended_device_family == "stratixv(gt)") || (intended_device_family == "Stratix V (GX)") || (intended_device_family == "STRATIX V (GX)") || (intended_device_family == "stratix v (gx)") || (intended_device_family == "StratixV(GX)") || (intended_device_family == "STRATIXV(GX)") || (intended_device_family == "stratixv(gx)") || (intended_device_family == "Stratix V (GS/GX)") || (intended_device_family == "STRATIX V (GS/GX)") || (intended_device_family == "stratix v (gs/gx)") || (intended_device_family == "StratixV(GS/GX)") || (intended_device_family == "STRATIXV(GS/GX)") || (intended_device_family == "stratixv(gs/gx)") || (intended_device_family == "Stratix V (GS/GT)") || (intended_device_family == "STRATIX V (GS/GT)") || (intended_device_family == "stratix v (gs/gt)") || (intended_device_family == "StratixV(GS/GT)") || (intended_device_family == "STRATIXV(GS/GT)") || (intended_device_family == "stratixv(gs/gt)") || (intended_device_family == "Stratix V (GT/GX)") || (intended_device_family == "STRATIX V (GT/GX)") || (intended_device_family == "stratix v (gt/gx)") || (intended_device_family == "StratixV(GT/GX)") || (intended_device_family == "STRATIXV(GT/GX)") || (intended_device_family == "stratixv(gt/gx)") || (intended_device_family == "Stratix V (GX/GS)") || (intended_device_family == "STRATIX V (GX/GS)") || (intended_device_family == "stratix v (gx/gs)") || (intended_device_family == "StratixV(GX/GS)") || (intended_device_family == "STRATIXV(GX/GS)") || (intended_device_family == "stratixv(gx/gs)") || (intended_device_family == "Stratix V (GT/GS)") || (intended_device_family == "STRATIX V (GT/GS)") || (intended_device_family == "stratix v (gt/gs)") || (intended_device_family == "StratixV(GT/GS)") || (intended_device_family == "STRATIXV(GT/GS)") || (intended_device_family == "stratixv(gt/gs)") || (intended_device_family == "Stratix V (GX/GT)") || (intended_device_family == "STRATIX V (GX/GT)") || (intended_device_family == "stratix v (gx/gt)") || (intended_device_family == "StratixV(GX/GT)") || (intended_device_family == "STRATIXV(GX/GT)") || (intended_device_family == "stratixv(gx/gt)") || (intended_device_family == "Stratix V (GS/GT/GX)") || (intended_device_family == "STRATIX V (GS/GT/GX)") || (intended_device_family == "stratix v (gs/gt/gx)") || (intended_device_family == "Stratix V (GS/GX/GT)") || (intended_device_family == "STRATIX V (GS/GX/GT)") || (intended_device_family == "stratix v (gs/gx/gt)") || (intended_device_family == "Stratix V (GT/GS/GX)") || (intended_device_family == "STRATIX V (GT/GS/GX)") || (intended_device_family == "stratix v (gt/gs/gx)") || (intended_device_family == "Stratix V (GT/GX/GS)") || (intended_device_family == "STRATIX V (GT/GX/GS)") || (intended_device_family == "stratix v (gt/gx/gs)") || (intended_device_family == "Stratix V (GX/GS/GT)") || (intended_device_family == "STRATIX V (GX/GS/GT)") || (intended_device_family == "stratix v (gx/gs/gt)") || (intended_device_family == "Stratix V (GX/GT/GS)") || (intended_device_family == "STRATIX V (GX/GT/GS)") || (intended_device_family == "stratix v (gx/gt/gs)") || (intended_device_family == "StratixV(GS/GT/GX)") || (intended_device_family == "STRATIXV(GS/GT/GX)") || (intended_device_family == "stratixv(gs/gt/gx)") || (intended_device_family == "StratixV(GS/GX/GT)") || (intended_device_family == "STRATIXV(GS/GX/GT)") || (intended_device_family == "stratixv(gs/gx/gt)") || (intended_device_family == "StratixV(GT/GS/GX)") || (intended_device_family == "STRATIXV(GT/GS/GX)") || (intended_device_family == "stratixv(gt/gs/gx)") || (intended_device_family == "StratixV(GT/GX/GS)") || (intended_device_family == "STRATIXV(GT/GX/GS)") || (intended_device_family == "stratixv(gt/gx/gs)") || (intended_device_family == "StratixV(GX/GS/GT)") || (intended_device_family == "STRATIXV(GX/GS/GT)") || (intended_device_family == "stratixv(gx/gs/gt)") || (intended_device_family == "StratixV(GX/GT/GS)") || (intended_device_family == "STRATIXV(GX/GT/GS)") || (intended_device_family == "stratixv(gx/gt/gs)") || (intended_device_family == "Stratix V (GS/GT/GX/E)") || (intended_device_family == "STRATIX V (GS/GT/GX/E)") || (intended_device_family == "stratix v (gs/gt/gx/e)") || (intended_device_family == "StratixV(GS/GT/GX/E)") || (intended_device_family == "STRATIXV(GS/GT/GX/E)") || (intended_device_family == "stratixv(gs/gt/gx/e)") || (intended_device_family == "Stratix V (E)") || (intended_device_family == "STRATIX V (E)") || (intended_device_family == "stratix v (e)") || (intended_device_family == "StratixV(E)") || (intended_device_family == "STRATIXV(E)") || (intended_device_family == "stratixv(e)"))
                                || (((intended_device_family == "Arria V GZ") || (intended_device_family == "ARRIA V GZ") || (intended_device_family == "arria v gz") || (intended_device_family == "ArriaVGZ") || (intended_device_family == "ARRIAVGZ") || (intended_device_family == "arriavgz"))
                                ) ) || (((intended_device_family == "Arria V") || (intended_device_family == "ARRIA V") || (intended_device_family == "arria v") || (intended_device_family == "Arria V (GT/GX)") || (intended_device_family == "ARRIA V (GT/GX)") || (intended_device_family == "arria v (gt/gx)") || (intended_device_family == "ArriaV(GT/GX)") || (intended_device_family == "ARRIAV(GT/GX)") || (intended_device_family == "arriav(gt/gx)") || (intended_device_family == "ArriaV") || (intended_device_family == "ARRIAV") || (intended_device_family == "arriav") || (intended_device_family == "Arria V (GT/GX/ST/SX)") || (intended_device_family == "ARRIA V (GT/GX/ST/SX)") || (intended_device_family == "arria v (gt/gx/st/sx)") || (intended_device_family == "ArriaV(GT/GX/ST/SX)") || (intended_device_family == "ARRIAV(GT/GX/ST/SX)") || (intended_device_family == "arriav(gt/gx/st/sx)") || (intended_device_family == "Arria V (GT)") || (intended_device_family == "ARRIA V (GT)") || (intended_device_family == "arria v (gt)") || (intended_device_family == "ArriaV(GT)") || (intended_device_family == "ARRIAV(GT)") || (intended_device_family == "arriav(gt)") || (intended_device_family == "Arria V (GX)") || (intended_device_family == "ARRIA V (GX)") || (intended_device_family == "arria v (gx)") || (intended_device_family == "ArriaV(GX)") || (intended_device_family == "ARRIAV(GX)") || (intended_device_family == "arriav(gx)") || (intended_device_family == "Arria V (ST)") || (intended_device_family == "ARRIA V (ST)") || (intended_device_family == "arria v (st)") || (intended_device_family == "ArriaV(ST)") || (intended_device_family == "ARRIAV(ST)") || (intended_device_family == "arriav(st)") || (intended_device_family == "Arria V (SX)") || (intended_device_family == "ARRIA V (SX)") || (intended_device_family == "arria v (sx)") || (intended_device_family == "ArriaV(SX)") || (intended_device_family == "ARRIAV(SX)") || (intended_device_family == "arriav(sx)"))
                                || (((intended_device_family == "Cyclone V") || (intended_device_family == "CYCLONE V") || (intended_device_family == "cyclone v") || (intended_device_family == "CycloneV") || (intended_device_family == "CYCLONEV") || (intended_device_family == "cyclonev") || (intended_device_family == "Cyclone V (GT/GX/E/SX)") || (intended_device_family == "CYCLONE V (GT/GX/E/SX)") || (intended_device_family == "cyclone v (gt/gx/e/sx)") || (intended_device_family == "CycloneV(GT/GX/E/SX)") || (intended_device_family == "CYCLONEV(GT/GX/E/SX)") || (intended_device_family == "cyclonev(gt/gx/e/sx)") || (intended_device_family == "Cyclone V (E/GX/GT/SX/SE/ST)") || (intended_device_family == "CYCLONE V (E/GX/GT/SX/SE/ST)") || (intended_device_family == "cyclone v (e/gx/gt/sx/se/st)") || (intended_device_family == "CycloneV(E/GX/GT/SX/SE/ST)") || (intended_device_family == "CYCLONEV(E/GX/GT/SX/SE/ST)") || (intended_device_family == "cyclonev(e/gx/gt/sx/se/st)") || (intended_device_family == "Cyclone V (E)") || (intended_device_family == "CYCLONE V (E)") || (intended_device_family == "cyclone v (e)") || (intended_device_family == "CycloneV(E)") || (intended_device_family == "CYCLONEV(E)") || (intended_device_family == "cyclonev(e)") || (intended_device_family == "Cyclone V (GX)") || (intended_device_family == "CYCLONE V (GX)") || (intended_device_family == "cyclone v (gx)") || (intended_device_family == "CycloneV(GX)") || (intended_device_family == "CYCLONEV(GX)") || (intended_device_family == "cyclonev(gx)") || (intended_device_family == "Cyclone V (GT)") || (intended_device_family == "CYCLONE V (GT)") || (intended_device_family == "cyclone v (gt)") || (intended_device_family == "CycloneV(GT)") || (intended_device_family == "CYCLONEV(GT)") || (intended_device_family == "cyclonev(gt)") || (intended_device_family == "Cyclone V (SX)") || (intended_device_family == "CYCLONE V (SX)") || (intended_device_family == "cyclone v (sx)") || (intended_device_family == "CycloneV(SX)") || (intended_device_family == "CYCLONEV(SX)") || (intended_device_family == "cyclonev(sx)") || (intended_device_family == "Cyclone V (SE)") || (intended_device_family == "CYCLONE V (SE)") || (intended_device_family == "cyclone v (se)") || (intended_device_family == "CycloneV(SE)") || (intended_device_family == "CYCLONEV(SE)") || (intended_device_family == "cyclonev(se)") || (intended_device_family == "Cyclone V (ST)") || (intended_device_family == "CYCLONE V (ST)") || (intended_device_family == "cyclone v (st)") || (intended_device_family == "CycloneV(ST)") || (intended_device_family == "CYCLONEV(ST)") || (intended_device_family == "cyclonev(st)"))
                                ) ) || (((intended_device_family == "Arria II GZ") || (intended_device_family == "ARRIA II GZ") || (intended_device_family == "arria ii gz") || (intended_device_family == "ArriaII GZ") || (intended_device_family == "ARRIAII GZ") || (intended_device_family == "arriaii gz") || (intended_device_family == "Arria IIGZ") || (intended_device_family == "ARRIA IIGZ") || (intended_device_family == "arria iigz") || (intended_device_family == "ArriaIIGZ") || (intended_device_family == "ARRIAIIGZ") || (intended_device_family == "arriaiigz"))
                                ) || (((intended_device_family == "Arria 10") || (intended_device_family == "ARRIA 10") || (intended_device_family == "arria 10") || (intended_device_family == "Arria10") || (intended_device_family == "ARRIA10") || (intended_device_family == "arria10") || (intended_device_family == "Arria VI") || (intended_device_family == "ARRIA VI") || (intended_device_family == "arria vi") || (intended_device_family == "ArriaVI") || (intended_device_family == "ARRIAVI") || (intended_device_family == "arriavi") || (intended_device_family == "Night Fury") || (intended_device_family == "NIGHT FURY") || (intended_device_family == "night fury") || (intended_device_family == "nightfury") || (intended_device_family == "NIGHTFURY") || (intended_device_family == "Arria 10 (GX/SX/GT)") || (intended_device_family == "ARRIA 10 (GX/SX/GT)") || (intended_device_family == "arria 10 (gx/sx/gt)") || (intended_device_family == "Arria10(GX/SX/GT)") || (intended_device_family == "ARRIA10(GX/SX/GT)") || (intended_device_family == "arria10(gx/sx/gt)") || (intended_device_family == "Arria 10 (GX)") || (intended_device_family == "ARRIA 10 (GX)") || (intended_device_family == "arria 10 (gx)") || (intended_device_family == "Arria10(GX)") || (intended_device_family == "ARRIA10(GX)") || (intended_device_family == "arria10(gx)") || (intended_device_family == "Arria 10 (SX)") || (intended_device_family == "ARRIA 10 (SX)") || (intended_device_family == "arria 10 (sx)") || (intended_device_family == "Arria10(SX)") || (intended_device_family == "ARRIA10(SX)") || (intended_device_family == "arria10(sx)") || (intended_device_family == "Arria 10 (GT)") || (intended_device_family == "ARRIA 10 (GT)") || (intended_device_family == "arria 10 (gt)") || (intended_device_family == "Arria10(GT)") || (intended_device_family == "ARRIA10(GT)") || (intended_device_family == "arria10(gt)"))
                                || ((intended_device_family == "Arria 10") || (intended_device_family == "ARRIA 10") || (intended_device_family == "arria 10") || (intended_device_family == "Arria10") || (intended_device_family == "ARRIA10") || (intended_device_family == "arria10") || (intended_device_family == "Arria VI") || (intended_device_family == "ARRIA VI") || (intended_device_family == "arria vi") || (intended_device_family == "ArriaVI") || (intended_device_family == "ARRIAVI") || (intended_device_family == "arriavi") || (intended_device_family == "Night Fury") || (intended_device_family == "NIGHT FURY") || (intended_device_family == "night fury") || (intended_device_family == "nightfury") || (intended_device_family == "NIGHTFURY") || (intended_device_family == "Arria 10 (GX/SX/GT)") || (intended_device_family == "ARRIA 10 (GX/SX/GT)") || (intended_device_family == "arria 10 (gx/sx/gt)") || (intended_device_family == "Arria10(GX/SX/GT)") || (intended_device_family == "ARRIA10(GX/SX/GT)") || (intended_device_family == "arria10(gx/sx/gt)") || (intended_device_family == "Arria 10 (GX)") || (intended_device_family == "ARRIA 10 (GX)") || (intended_device_family == "arria 10 (gx)") || (intended_device_family == "Arria10(GX)") || (intended_device_family == "ARRIA10(GX)") || (intended_device_family == "arria10(gx)") || (intended_device_family == "Arria 10 (SX)") || (intended_device_family == "ARRIA 10 (SX)") || (intended_device_family == "arria 10 (sx)") || (intended_device_family == "Arria10(SX)") || (intended_device_family == "ARRIA10(SX)") || (intended_device_family == "arria10(sx)") || (intended_device_family == "Arria 10 (GT)") || (intended_device_family == "ARRIA 10 (GT)") || (intended_device_family == "arria 10 (gt)") || (intended_device_family == "Arria10(GT)") || (intended_device_family == "ARRIA10(GT)") || (intended_device_family == "arria10(gt)"))
                                ) || (((intended_device_family == "Stratix 10") || (intended_device_family == "STRATIX 10") || (intended_device_family == "stratix 10") || (intended_device_family == "Stratix10") || (intended_device_family == "STRATIX10") || (intended_device_family == "stratix10") || (intended_device_family == "nadder") || (intended_device_family == "NADDER") || (intended_device_family == "Stratix 10 (GX/SX)") || (intended_device_family == "STRATIX 10 (GX/SX)") || (intended_device_family == "stratix 10 (gx/sx)") || (intended_device_family == "Stratix10(GX/SX)") || (intended_device_family == "STRATIX10(GX/SX)") || (intended_device_family == "stratix10(gx/sx)") || (intended_device_family == "Stratix 10 (GX)") || (intended_device_family == "STRATIX 10 (GX)") || (intended_device_family == "stratix 10 (gx)") || (intended_device_family == "Stratix10(GX)") || (intended_device_family == "STRATIX10(GX)") || (intended_device_family == "stratix10(gx)") || (intended_device_family == "Stratix 10 (SX)") || (intended_device_family == "STRATIX 10 (SX)") || (intended_device_family == "stratix 10 (sx)") || (intended_device_family == "Stratix10(SX)") || (intended_device_family == "STRATIX10(SX)") || (intended_device_family == "stratix10(sx)"))
                                || ((intended_device_family == "Stratix 10") || (intended_device_family == "STRATIX 10") || (intended_device_family == "stratix 10") || (intended_device_family == "Stratix10") || (intended_device_family == "STRATIX10") || (intended_device_family == "stratix10") || (intended_device_family == "nadder") || (intended_device_family == "NADDER") || (intended_device_family == "Stratix 10 (GX/SX)") || (intended_device_family == "STRATIX 10 (GX/SX)") || (intended_device_family == "stratix 10 (gx/sx)") || (intended_device_family == "Stratix10(GX/SX)") || (intended_device_family == "STRATIX10(GX/SX)") || (intended_device_family == "stratix10(gx/sx)") || (intended_device_family == "Stratix 10 (GX)") || (intended_device_family == "STRATIX 10 (GX)") || (intended_device_family == "stratix 10 (gx)") || (intended_device_family == "Stratix10(GX)") || (intended_device_family == "STRATIX10(GX)") || (intended_device_family == "stratix10(gx)") || (intended_device_family == "Stratix 10 (SX)") || (intended_device_family == "STRATIX 10 (SX)") || (intended_device_family == "stratix 10 (sx)") || (intended_device_family == "Stratix10(SX)") || (intended_device_family == "STRATIX10(SX)") || (intended_device_family == "stratix10(sx)"))
                                ) ) || (((intended_device_family == "HardCopy III") || (intended_device_family == "HARDCOPY III") || (intended_device_family == "hardcopy iii") || (intended_device_family == "HardCopyIII") || (intended_device_family == "HARDCOPYIII") || (intended_device_family == "hardcopyiii") || (intended_device_family == "HCX") || (intended_device_family == "hcx"))
                                || ((intended_device_family == "HardCopy III") || (intended_device_family == "HARDCOPY III") || (intended_device_family == "hardcopy iii") || (intended_device_family == "HardCopyIII") || (intended_device_family == "HARDCOPYIII") || (intended_device_family == "hardcopyiii") || (intended_device_family == "HCX") || (intended_device_family == "hcx"))
                                ) ) || (((intended_device_family == "Cyclone III") || (intended_device_family == "CYCLONE III") || (intended_device_family == "cyclone iii") || (intended_device_family == "CycloneIII") || (intended_device_family == "CYCLONEIII") || (intended_device_family == "cycloneiii") || (intended_device_family == "Barracuda") || (intended_device_family == "BARRACUDA") || (intended_device_family == "barracuda") || (intended_device_family == "Cuda") || (intended_device_family == "CUDA") || (intended_device_family == "cuda") || (intended_device_family == "CIII") || (intended_device_family == "ciii"))
                                || ((intended_device_family == "Cyclone III LS") || (intended_device_family == "CYCLONE III LS") || (intended_device_family == "cyclone iii ls") || (intended_device_family == "CycloneIIILS") || (intended_device_family == "CYCLONEIIILS") || (intended_device_family == "cycloneiiils") || (intended_device_family == "Cyclone III LPS") || (intended_device_family == "CYCLONE III LPS") || (intended_device_family == "cyclone iii lps") || (intended_device_family == "Cyclone LPS") || (intended_device_family == "CYCLONE LPS") || (intended_device_family == "cyclone lps") || (intended_device_family == "CycloneLPS") || (intended_device_family == "CYCLONELPS") || (intended_device_family == "cyclonelps") || (intended_device_family == "Tarpon") || (intended_device_family == "TARPON") || (intended_device_family == "tarpon") || (intended_device_family == "Cyclone IIIE") || (intended_device_family == "CYCLONE IIIE") || (intended_device_family == "cyclone iiie"))
                                || (((intended_device_family == "Cyclone IV GX") || (intended_device_family == "CYCLONE IV GX") || (intended_device_family == "cyclone iv gx") || (intended_device_family == "Cyclone IVGX") || (intended_device_family == "CYCLONE IVGX") || (intended_device_family == "cyclone ivgx") || (intended_device_family == "CycloneIV GX") || (intended_device_family == "CYCLONEIV GX") || (intended_device_family == "cycloneiv gx") || (intended_device_family == "CycloneIVGX") || (intended_device_family == "CYCLONEIVGX") || (intended_device_family == "cycloneivgx") || (intended_device_family == "Cyclone IV") || (intended_device_family == "CYCLONE IV") || (intended_device_family == "cyclone iv") || (intended_device_family == "CycloneIV") || (intended_device_family == "CYCLONEIV") || (intended_device_family == "cycloneiv") || (intended_device_family == "Cyclone IV (GX)") || (intended_device_family == "CYCLONE IV (GX)") || (intended_device_family == "cyclone iv (gx)") || (intended_device_family == "CycloneIV(GX)") || (intended_device_family == "CYCLONEIV(GX)") || (intended_device_family == "cycloneiv(gx)") || (intended_device_family == "Cyclone III GX") || (intended_device_family == "CYCLONE III GX") || (intended_device_family == "cyclone iii gx") || (intended_device_family == "CycloneIII GX") || (intended_device_family == "CYCLONEIII GX") || (intended_device_family == "cycloneiii gx") || (intended_device_family == "Cyclone IIIGX") || (intended_device_family == "CYCLONE IIIGX") || (intended_device_family == "cyclone iiigx") || (intended_device_family == "CycloneIIIGX") || (intended_device_family == "CYCLONEIIIGX") || (intended_device_family == "cycloneiiigx") || (intended_device_family == "Cyclone III GL") || (intended_device_family == "CYCLONE III GL") || (intended_device_family == "cyclone iii gl") || (intended_device_family == "CycloneIII GL") || (intended_device_family == "CYCLONEIII GL") || (intended_device_family == "cycloneiii gl") || (intended_device_family == "Cyclone IIIGL") || (intended_device_family == "CYCLONE IIIGL") || (intended_device_family == "cyclone iiigl") || (intended_device_family == "CycloneIIIGL") || (intended_device_family == "CYCLONEIIIGL") || (intended_device_family == "cycloneiiigl") || (intended_device_family == "Stingray") || (intended_device_family == "STINGRAY") || (intended_device_family == "stingray"))
                                || ((intended_device_family == "Cyclone IV GX") || (intended_device_family == "CYCLONE IV GX") || (intended_device_family == "cyclone iv gx") || (intended_device_family == "Cyclone IVGX") || (intended_device_family == "CYCLONE IVGX") || (intended_device_family == "cyclone ivgx") || (intended_device_family == "CycloneIV GX") || (intended_device_family == "CYCLONEIV GX") || (intended_device_family == "cycloneiv gx") || (intended_device_family == "CycloneIVGX") || (intended_device_family == "CYCLONEIVGX") || (intended_device_family == "cycloneivgx") || (intended_device_family == "Cyclone IV") || (intended_device_family == "CYCLONE IV") || (intended_device_family == "cyclone iv") || (intended_device_family == "CycloneIV") || (intended_device_family == "CYCLONEIV") || (intended_device_family == "cycloneiv") || (intended_device_family == "Cyclone IV (GX)") || (intended_device_family == "CYCLONE IV (GX)") || (intended_device_family == "cyclone iv (gx)") || (intended_device_family == "CycloneIV(GX)") || (intended_device_family == "CYCLONEIV(GX)") || (intended_device_family == "cycloneiv(gx)") || (intended_device_family == "Cyclone III GX") || (intended_device_family == "CYCLONE III GX") || (intended_device_family == "cyclone iii gx") || (intended_device_family == "CycloneIII GX") || (intended_device_family == "CYCLONEIII GX") || (intended_device_family == "cycloneiii gx") || (intended_device_family == "Cyclone IIIGX") || (intended_device_family == "CYCLONE IIIGX") || (intended_device_family == "cyclone iiigx") || (intended_device_family == "CycloneIIIGX") || (intended_device_family == "CYCLONEIIIGX") || (intended_device_family == "cycloneiiigx") || (intended_device_family == "Cyclone III GL") || (intended_device_family == "CYCLONE III GL") || (intended_device_family == "cyclone iii gl") || (intended_device_family == "CycloneIII GL") || (intended_device_family == "CYCLONEIII GL") || (intended_device_family == "cycloneiii gl") || (intended_device_family == "Cyclone IIIGL") || (intended_device_family == "CYCLONE IIIGL") || (intended_device_family == "cyclone iiigl") || (intended_device_family == "CycloneIIIGL") || (intended_device_family == "CYCLONEIIIGL") || (intended_device_family == "cycloneiiigl") || (intended_device_family == "Stingray") || (intended_device_family == "STINGRAY") || (intended_device_family == "stingray"))
                                ) || (((intended_device_family == "Cyclone IV E") || (intended_device_family == "CYCLONE IV E") || (intended_device_family == "cyclone iv e") || (intended_device_family == "CycloneIV E") || (intended_device_family == "CYCLONEIV E") || (intended_device_family == "cycloneiv e") || (intended_device_family == "Cyclone IVE") || (intended_device_family == "CYCLONE IVE") || (intended_device_family == "cyclone ive") || (intended_device_family == "CycloneIVE") || (intended_device_family == "CYCLONEIVE") || (intended_device_family == "cycloneive"))
                                || (((intended_device_family == "Cyclone 10 LP") || (intended_device_family == "CYCLONE 10 LP") || (intended_device_family == "cyclone 10 lp") || (intended_device_family == "cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "Cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp") || (intended_device_family == "C10LP") || (intended_device_family == "c10lp") || (intended_device_family == "Cyclone10LP") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp"))
                                || ((intended_device_family == "Cyclone 10 LP") || (intended_device_family == "CYCLONE 10 LP") || (intended_device_family == "cyclone 10 lp") || (intended_device_family == "cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "Cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp") || (intended_device_family == "C10LP") || (intended_device_family == "c10lp") || (intended_device_family == "Cyclone10LP") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp"))
                                ) ) || (((intended_device_family == "MAX 10") || (intended_device_family == "max 10") || (intended_device_family == "MAX 10 FPGA") || (intended_device_family == "max 10 fpga") || (intended_device_family == "Zippleback") || (intended_device_family == "ZIPPLEBACK") || (intended_device_family == "zippleback") || (intended_device_family == "MAX10") || (intended_device_family == "max10") || (intended_device_family == "MAX 10 (DA/DF/DC/SA/SC)") || (intended_device_family == "max 10 (da/df/dc/sa/sc)") || (intended_device_family == "MAX10(DA/DF/DC/SA/SC)") || (intended_device_family == "max10(da/df/dc/sa/sc)") || (intended_device_family == "MAX 10 (DA)") || (intended_device_family == "max 10 (da)") || (intended_device_family == "MAX10(DA)") || (intended_device_family == "max10(da)") || (intended_device_family == "MAX 10 (DF)") || (intended_device_family == "max 10 (df)") || (intended_device_family == "MAX10(DF)") || (intended_device_family == "max10(df)") || (intended_device_family == "MAX 10 (DC)") || (intended_device_family == "max 10 (dc)") || (intended_device_family == "MAX10(DC)") || (intended_device_family == "max10(dc)") || (intended_device_family == "MAX 10 (SA)") || (intended_device_family == "max 10 (sa)") || (intended_device_family == "MAX10(SA)") || (intended_device_family == "max10(sa)") || (intended_device_family == "MAX 10 (SC)") || (intended_device_family == "max 10 (sc)") || (intended_device_family == "MAX10(SC)") || (intended_device_family == "max10(sc)"))
                                ) || (((intended_device_family == "Cyclone 10 LP") || (intended_device_family == "CYCLONE 10 LP") || (intended_device_family == "cyclone 10 lp") || (intended_device_family == "cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "Cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp") || (intended_device_family == "C10LP") || (intended_device_family == "c10lp") || (intended_device_family == "Cyclone10LP") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp"))
                                || ((intended_device_family == "Cyclone 10 LP") || (intended_device_family == "CYCLONE 10 LP") || (intended_device_family == "cyclone 10 lp") || (intended_device_family == "cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "Cyclone10lp") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp") || (intended_device_family == "C10LP") || (intended_device_family == "c10lp") || (intended_device_family == "Cyclone10LP") || (intended_device_family == "CYCLONE10LP") || (intended_device_family == "cyclone10lp"))
                                ) ) ))
                                ? 1 : 0;

    parameter WRITE_SIDE_SYNCHRONIZERS = (wrsync_delaypipe != 0) ? wrsync_delaypipe :
                                (((FAMILY_HAS_STRATIXII_STYLE_RAM == 1) || (FAMILY_HAS_STRATIXIII_STYLE_RAM == 1))
                                && (clocks_are_synchronized == "FALSE"))
                                ?  4 : 3;

    parameter READ_SIDE_SYNCHRONIZERS = (rdsync_delaypipe != 0) ? rdsync_delaypipe :
                                (((FAMILY_HAS_STRATIXII_STYLE_RAM == 1) || (FAMILY_HAS_STRATIXIII_STYLE_RAM == 1))
                                && (clocks_are_synchronized == "FALSE"))
                                ?  4 : 3;

// LOCAL_PARAMETERS_END

// INPUT PORT DECLARATION
    input [lpm_width-1:0] data;
    input rdclk;
    input wrclk;
    input aclr;
    input rdreq;
    input wrreq;

// OUTPUT PORT DECLARATION
    output rdfull;
    output wrfull;
    output rdempty;
    output wrempty;
    output [lpm_widthu_r-1:0] rdusedw;
    output [lpm_widthu-1:0] wrusedw;
    output [lpm_width_r-1:0] q;
    output [1:0] eccstatus;

// INTERNAL WIRE DECLARATION
    wire w_rdfull_s;
    wire w_wrfull_s;
    wire w_rdempty_s;
    wire w_wrempty_s;
    wire w_rdfull_a;
    wire w_wrfull_a;
    wire w_rdempty_a;
    wire w_wrempty_a;
    wire w_rdfull_l;
    wire w_wrfull_l;
    wire w_rdempty_l;
    wire w_wrempty_l;
    wire [lpm_widthu-1:0] w_rdusedw_s;
    wire [lpm_widthu-1:0] w_wrusedw_s;
    wire [lpm_widthu-1:0] w_rdusedw_a;
    wire [lpm_widthu-1:0] w_wrusedw_a;
    wire [lpm_widthu_r-1:0] w_rdusedw_l;
    wire [lpm_widthu-1:0] w_wrusedw_l;
    wire [lpm_width-1:0] w_q_s;
    wire [lpm_width-1:0] w_q_a;
    wire [lpm_width_r-1:0] w_q_l;

// INTERNAL REGISTER DECLARATION
    reg feature_family_has_stratixii_style_ram;
    reg feature_family_stratix;
    reg use_low_latency_fifo;

// INTERNAL TRI DECLARATION
    tri0 aclr;

// COMPONENT INSTANTIATIONS
    ALTERA_DEVICE_FAMILIES dev ();

    initial
    begin
        feature_family_has_stratixii_style_ram = dev.FEATURE_FAMILY_HAS_STRATIXII_STYLE_RAM(intended_device_family);
        feature_family_stratix = dev.FEATURE_FAMILY_STRATIX(intended_device_family);

        use_low_latency_fifo = (((feature_family_has_stratixii_style_ram == 1) &&
                                ((use_eab == "ON") || ((use_eab == "OFF") && (lpm_width != lpm_width_r) && (lpm_width_r != 0)) ||
                                ((lpm_numwords < 16) && (clocks_are_synchronized == "FALSE")))) ||
                                ((feature_family_stratix == 1) && (use_eab == "ON") &&
                                (((lpm_showahead == "ON") && (add_ram_output_register == "OFF")) ||
                                (clocks_are_synchronized == "FALSE_LOW_LATENCY"))));
    end

    generate
    if (clocks_are_synchronized == "TRUE")
    begin : dcfifo_sync
    dcfifo_sync #(
        .lpm_width (lpm_width),
        .lpm_widthu (lpm_widthu),
        .lpm_numwords (lpm_numwords),
        .intended_device_family (intended_device_family),
        .lpm_showahead (lpm_showahead),
        .underflow_checking (underflow_checking),
        .overflow_checking (overflow_checking),
        .use_eab (use_eab),
        .add_ram_output_register (add_ram_output_register))
        SYNC (
        .data (data),
        .rdclk (rdclk),
        .wrclk (wrclk),
        .aclr (aclr),
        .rdreq (rdreq),
        .wrreq (wrreq),
        .rdfull (w_rdfull_s),
        .wrfull (w_wrfull_s),
        .rdempty (w_rdempty_s),
        .wrempty (w_wrempty_s),
        .rdusedw (w_rdusedw_s),
        .wrusedw (w_wrusedw_s),
        .q (w_q_s));
    end
    endgenerate

    generate
    if (clocks_are_synchronized != "TRUE")
    begin : dcfifo_async
    dcfifo_async #(
        .lpm_width (lpm_width),
        .lpm_widthu (lpm_widthu),
        .lpm_numwords (lpm_numwords),
        .delay_rdusedw (delay_rdusedw),
        .delay_wrusedw (delay_wrusedw),
        .rdsync_delaypipe (READ_SIDE_SYNCHRONIZERS),
        .wrsync_delaypipe (WRITE_SIDE_SYNCHRONIZERS),
        .intended_device_family (intended_device_family),
        .lpm_showahead (lpm_showahead),
        .underflow_checking (underflow_checking),
        .overflow_checking (overflow_checking),
		.read_aclr_synch (read_aclr_synch),
		.write_aclr_synch (write_aclr_synch),
        .use_eab (use_eab),
        .add_ram_output_register (add_ram_output_register))
    ASYNC (
        .data (data),
        .rdclk (rdclk),
        .wrclk (wrclk),
        .aclr (aclr),
        .rdreq (rdreq),
        .wrreq (wrreq),
        .rdfull (w_rdfull_a),
        .wrfull (w_wrfull_a),
        .rdempty (w_rdempty_a),
        .wrempty (w_wrempty_a),
        .rdusedw (w_rdusedw_a),
        .wrusedw (w_wrusedw_a),
        .q (w_q_a) );
    end
    endgenerate

    dcfifo_low_latency LOWLATENCY (
        .data (data),
        .rdclk (rdclk),
        .wrclk (wrclk),
        .aclr (aclr),
        .rdreq (rdreq),
        .wrreq (wrreq),
        .rdfull (w_rdfull_l),
        .wrfull (w_wrfull_l),
        .rdempty (w_rdempty_l),
        .wrempty (w_wrempty_l),
        .rdusedw (w_rdusedw_l),
        .wrusedw (w_wrusedw_l),
        .q (w_q_l) );
    defparam
        LOWLATENCY.lpm_width = lpm_width,
        LOWLATENCY.lpm_widthu = lpm_widthu,
        LOWLATENCY.lpm_width_r = lpm_width_r,
        LOWLATENCY.lpm_widthu_r = lpm_widthu_r,
        LOWLATENCY.lpm_numwords = lpm_numwords,
        LOWLATENCY.delay_rdusedw = delay_rdusedw,
        LOWLATENCY.delay_wrusedw = delay_wrusedw,
        LOWLATENCY.rdsync_delaypipe = (READ_SIDE_SYNCHRONIZERS > 3 ? READ_SIDE_SYNCHRONIZERS - 2 : 1),
        LOWLATENCY.wrsync_delaypipe = (WRITE_SIDE_SYNCHRONIZERS > 3 ? WRITE_SIDE_SYNCHRONIZERS - 2 : 1),
        LOWLATENCY.intended_device_family = intended_device_family,
        LOWLATENCY.lpm_showahead = lpm_showahead,
        LOWLATENCY.underflow_checking = underflow_checking,
        LOWLATENCY.overflow_checking = overflow_checking,
        LOWLATENCY.add_usedw_msb_bit = add_usedw_msb_bit,
        LOWLATENCY.read_aclr_synch = read_aclr_synch,
        LOWLATENCY.write_aclr_synch = write_aclr_synch,
        LOWLATENCY.use_eab = use_eab,
        LOWLATENCY.clocks_are_synchronized = clocks_are_synchronized,
        LOWLATENCY.add_ram_output_register = add_ram_output_register,
        LOWLATENCY.lpm_hint = lpm_hint;

// INITIAL CONSTRUCT BLOCK
    initial
    begin
        if(((wrsync_delaypipe == 0) || (rdsync_delaypipe == 0)) && (clocks_are_synchronized == "FALSE"))
        begin
            if ((FAMILY_HAS_STRATIXII_STYLE_RAM == 1) || (FAMILY_HAS_STRATIXIII_STYLE_RAM == 1))
            begin
                $display ("Warning! Number of metastability protection registers is not specified. Based on the parameter value CLOCKS_ARE_SYNCHRONIZED=FALSE, the synchronization register chain length between read and write clock domains will be 2.");
                $display("Time: %0t  Instance: %m", $time);
            end
        end
    end

// CONTINOUS ASSIGNMENT
    assign  rdfull = (use_low_latency_fifo == 1) ? w_rdfull_l :
                    (clocks_are_synchronized == "TRUE")  ? w_rdfull_s : w_rdfull_a;

    assign  wrfull = (use_low_latency_fifo == 1) ? w_wrfull_l :
                    (clocks_are_synchronized == "TRUE")  ? w_wrfull_s : w_wrfull_a;

    assign rdempty = (use_low_latency_fifo == 1) ? w_rdempty_l :
                    (clocks_are_synchronized == "TRUE")  ? w_rdempty_s : w_rdempty_a;

    assign wrempty = (use_low_latency_fifo == 1) ? w_wrempty_l :
                    (clocks_are_synchronized == "TRUE")  ? w_wrempty_s : w_wrempty_a;

    assign rdusedw = (use_low_latency_fifo == 1) ? w_rdusedw_l :
                    (clocks_are_synchronized == "TRUE")  ? w_rdusedw_s : w_rdusedw_a;

    assign wrusedw = (use_low_latency_fifo == 1) ? w_wrusedw_l :
                    (clocks_are_synchronized == "TRUE")  ? w_wrusedw_s : w_wrusedw_a;

    assign       q = (use_low_latency_fifo == 1) ? w_q_l :
                    (clocks_are_synchronized == "TRUE")  ? w_q_s : w_q_a;
// ECC status
    assign eccstatus = {2'b0};
    
endmodule // dcfifo_mixed_widths
// END OF MODULE

//START_MODULE_NAME------------------------------------------------------------
//
// Module Name     :  dcfifo
//
// Description     :  Dual Clocks FIFO
//
// Limitation      :
//
// Results expected:
//
//END_MODULE_NAME--------------------------------------------------------------

// BEGINNING OF MODULE
`timescale 1 ps / 1 ps

// MODULE DECLARATION
module dcfifo ( data, rdclk, wrclk, aclr, rdreq, wrreq,
                eccstatus, rdfull, wrfull, rdempty, wrempty, rdusedw, wrusedw, q);

// GLOBAL PARAMETER DECLARATION
    parameter lpm_width = 1;
    parameter lpm_widthu = 1;
    parameter lpm_numwords = 2;
    parameter delay_rdusedw = 1;
    parameter delay_wrusedw = 1;
    parameter rdsync_delaypipe = 0;
    parameter wrsync_delaypipe = 0;
    parameter intended_device_family = "Stratix";
    parameter lpm_showahead = "OFF";
    parameter underflow_checking = "ON";
    parameter overflow_checking = "ON";
    parameter clocks_are_synchronized = "FALSE";
    parameter use_eab = "ON";
    parameter add_ram_output_register = "OFF";
    parameter lpm_hint = "USE_EAB=ON";
    parameter lpm_type = "dcfifo";
    parameter add_usedw_msb_bit = "OFF";
    parameter read_aclr_synch = "OFF";
    parameter write_aclr_synch = "OFF";
    parameter enable_ecc = "FALSE";

// LOCAL_PARAMETERS_BEGIN

    parameter add_width = 1;
    parameter ram_block_type = "AUTO";

// LOCAL_PARAMETERS_END

// INPUT PORT DECLARATION
    input [lpm_width-1:0] data;
    input rdclk;
    input wrclk;
    input aclr;
    input rdreq;
    input wrreq;

// OUTPUT PORT DECLARATION
    output rdfull;
    output wrfull;
    output rdempty;
    output wrempty;
    output [lpm_widthu-1:0] rdusedw;
    output [lpm_widthu-1:0] wrusedw;
    output [lpm_width-1:0] q;
    output [1:0] eccstatus;

// INTERNAL WIRE DECLARATION
    wire w_rdfull;
    wire w_wrfull;
    wire w_rdempty;
    wire w_wrempty;
    wire [lpm_widthu-1:0] w_rdusedw;
    wire [lpm_widthu-1:0] w_wrusedw;
    wire [lpm_width-1:0] w_q;

// INTERNAL TRI DECLARATION
    tri0 aclr;

    dcfifo_mixed_widths DCFIFO_MW (
        .data (data),
        .rdclk (rdclk),
        .wrclk (wrclk),
        .aclr (aclr),
        .rdreq (rdreq),
        .wrreq (wrreq),
        .rdfull (w_rdfull),
        .wrfull (w_wrfull),
        .rdempty (w_rdempty),
        .wrempty (w_wrempty),
        .rdusedw (w_rdusedw),
        .wrusedw (w_wrusedw),
        .q (w_q) );
    defparam
        DCFIFO_MW.lpm_width = lpm_width,
        DCFIFO_MW.lpm_widthu = lpm_widthu,
        DCFIFO_MW.lpm_width_r = lpm_width,
        DCFIFO_MW.lpm_widthu_r = lpm_widthu,
        DCFIFO_MW.lpm_numwords = lpm_numwords,
        DCFIFO_MW.delay_rdusedw = delay_rdusedw,
        DCFIFO_MW.delay_wrusedw = delay_wrusedw,
        DCFIFO_MW.rdsync_delaypipe = rdsync_delaypipe,
        DCFIFO_MW.wrsync_delaypipe = wrsync_delaypipe,
        DCFIFO_MW.intended_device_family = intended_device_family,
        DCFIFO_MW.lpm_showahead = lpm_showahead,
        DCFIFO_MW.underflow_checking = underflow_checking,
        DCFIFO_MW.overflow_checking = overflow_checking,
        DCFIFO_MW.clocks_are_synchronized = clocks_are_synchronized,
        DCFIFO_MW.use_eab = use_eab,
        DCFIFO_MW.add_ram_output_register = add_ram_output_register,
        DCFIFO_MW.add_width = add_width,
        DCFIFO_MW.ram_block_type = ram_block_type,
        DCFIFO_MW.add_usedw_msb_bit = add_usedw_msb_bit,
        DCFIFO_MW.read_aclr_synch = read_aclr_synch,
        DCFIFO_MW.write_aclr_synch = write_aclr_synch,
        DCFIFO_MW.lpm_hint = lpm_hint;

// CONTINOUS ASSIGNMENT
    assign  rdfull = w_rdfull;
    assign  wrfull = w_wrfull;
    assign rdempty = w_rdempty;
    assign wrempty = w_wrempty;
    assign rdusedw = w_rdusedw;
    assign wrusedw = w_wrusedw;
    assign       q = w_q;

// ECC status
    assign eccstatus = {2'b0};

endmodule // dcfifo
// END OF MODULE

