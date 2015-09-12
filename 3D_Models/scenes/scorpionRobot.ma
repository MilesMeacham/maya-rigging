//Maya ASCII 2016 scene
//Name: scorpionRobot.ma
//Last modified: Sat, Sep 12, 2015 01:12:06 AM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "721A9AC8-4089-F270-BC63-3FABB6718047";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.0199931512766121 6.8677868552897028 4.5076148008706163 ;
	setAttr ".r" -type "double3" -33.338352628819543 -1026.6000000001891 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DB47549A-4646-7906-AAD1-21B4834644EE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.888169798819627;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.7676030549447318 -0.55221348185596719 0.66042346967732213 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "709BEDF3-4375-F2A4-895C-398F028D15E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.29695535333614 100.1 0.49972945476745478 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BBDD758E-41C2-26D5-20A8-348715AAD5C5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 6.3222601880856679;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B8B0527C-4C5B-DC16-6C3B-6088DEC104E8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.6243280658309827 -0.43308396835335061 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F8CAEA4B-4051-72F0-44DB-9DB7970AE26A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.9335121715893575;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "22DD2FB7-41BE-E884-C682-FAAF5181BFA6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 -0.47527495860625457 0.020755873913324313 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C61E7510-44AB-148C-584D-9AA71DC1A2B4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.4166890945168058;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "bodyFrontJoint";
	rename -uid "13E5FA6D-4EA6-660A-692F-8EB6765778DF";
	setAttr ".t" -type "double3" 0 0.15972305797357511 -0.0034751950215442507 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".radi" 0.50495564425690675;
createNode joint -n "bodyMidJoint" -p "bodyFrontJoint";
	rename -uid "65470CA5-4EF1-55BB-7F39-E0875FE40CB4";
	setAttr ".t" -type "double3" 1.0027746431477491 0 -2.2266069946658116e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "bodyBackJoint" -p "bodyMidJoint";
	rename -uid "0D6D1343-43B2-F6CA-AEBB-2582FF2ED860";
	setAttr ".t" -type "double3" 1.0184429969469322 0 -2.2613977289574638e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.50541132462978156;
createNode joint -n "tailFrontJoint" -p "bodyBackJoint";
	rename -uid "08C22A67-44A8-944D-FE14-E09960AEEF4E";
	setAttr ".t" -type "double3" 1.1046189428424424 0 -2.4527467675615582e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "tailFront2Joint" -p "tailFrontJoint";
	rename -uid "91E780BA-4A0C-D237-2D9E-F4A4504361CC";
	setAttr ".t" -type "double3" 0.90093034345305356 0 -2.00046722177006e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "tailMidJoint" -p "tailFront2Joint";
	rename -uid "94D309D3-4C02-EDAF-0954-FBB2C907FB5E";
	setAttr ".t" -type "double3" 0.79908604375836334 0 -1.7743274488743202e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "tailMid2Joint" -p "tailMidJoint";
	rename -uid "8E54FFDA-4997-0D8F-F24D-3E82D0218B8F";
	setAttr ".t" -type "double3" 0.79125186685877158 0 -1.7569320817284936e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "tailEndJoint" -p "tailMid2Joint";
	rename -uid "8A44D7DF-4D75-40D9-0055-2B8337204AB9";
	setAttr ".t" -type "double3" 0.6972417440636659 0 -1.5481876759785646e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "backArmLeft_UpperJoint" -p "bodyMidJoint";
	rename -uid "F72DA42C-44FC-C3E1-6741-A9A6778976D1";
	setAttr ".t" -type "double3" 1.1449755829785089 -0.50405473297920367 0.51259813261273435 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -76.915180586970706 0 ;
	setAttr ".radi" 0.5547001026270697;
createNode joint -n "backArmLeft_MidJoint" -p "backArmLeft_UpperJoint";
	rename -uid "3082BCCA-4635-F10E-BC13-BF99CA5524D5";
	setAttr ".t" -type "double3" 2.0575353174566819 0 -8.8817841970012523e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55877097521672403;
createNode joint -n "backArmLeft_EndJoint" -p "backArmLeft_MidJoint";
	rename -uid "3A7BF7FD-4E0D-AC95-319F-A4A4BF003E16";
	setAttr ".t" -type "double3" 2.136238854189997 -1.6653345369377348e-016 -1.0547118733938987e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.53609039936007885;
createNode joint -n "midArmLeft_UpperJoint" -p "bodyMidJoint";
	rename -uid "8934E32E-49B2-5536-4834-9A962539F9F4";
	setAttr ".t" -type "double3" 0.40808835612946037 -0.50405473297920367 0.63883342518978448 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".radi" 0.55470010262706981;
createNode joint -n "midArmLeft_MidJoint" -p "midArmLeft_UpperJoint";
	rename -uid "665C4C9D-4489-CC00-774D-D6BBCFBB1EF9";
	setAttr ".t" -type "double3" 2.0575353174566819 0 4.5686461668396772e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55877097521672403;
createNode joint -n "midArmLeft_EndJoint" -p "midArmLeft_MidJoint";
	rename -uid "33A5F110-4633-7865-A447-048B15BFC88B";
	setAttr ".t" -type "double3" 2.1362388541899979 1.1102230246251565e-016 2.522957074790882e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.53609039936007885;
createNode joint -n "frontArmLeft_UpperJoint" -p "bodyMidJoint";
	rename -uid "0D4F9081-4BA5-7FB0-0BB8-DBA699B7269E";
	setAttr ".t" -type "double3" -0.2927495615165141 -0.50405473297920367 0.53063174583802641 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 259.91306820966867 0 ;
	setAttr ".radi" 0.55470010262706981;
createNode joint -n "frontArmLeft_MidJoint" -p "frontArmLeft_UpperJoint";
	rename -uid "76597B8F-4D00-22D2-331F-758CCABB9588";
	setAttr ".t" -type "double3" 2.0575353174566824 0 1.6653345369377348e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55877097521672403;
createNode joint -n "frontArmLeft_EndJoint" -p "frontArmLeft_MidJoint";
	rename -uid "22D9A9F7-4A3F-230D-AFFC-D999BDC9AEE7";
	setAttr ".t" -type "double3" 2.1362388541899975 0 5.5511151231257827e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.53609039936007885;
createNode joint -n "frontArmRight_UpperJoint" -p "bodyMidJoint";
	rename -uid "2D285CBE-4E92-A15E-8529-99A19A2F193A";
	setAttr ".t" -type "double3" -0.29274983816929345 -0.50405505797357508 -0.53063199999999977 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -79.913068209668637 -4.0322955707869669e-030 ;
	setAttr ".radi" 0.55470010262706981;
createNode joint -n "frontArmRight_MidJoint" -p "frontArmRight_UpperJoint";
	rename -uid "83C4F642-49CA-0AFB-6C47-0789168764FE";
	setAttr ".t" -type "double3" -2.0575310399371118 1.1102230246251565e-016 -5.5156260148070402e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55877097521672403;
createNode joint -n "frontArmRight_EndJoint" -p "frontArmRight_MidJoint";
	rename -uid "DF890B6F-47DE-9D89-ED72-35B85E6F1A5C";
	setAttr ".t" -type "double3" -2.1362394876841653 0 2.290604524946005e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.53609039936007885;
createNode joint -n "midArmRight_UpperJoint" -p "bodyMidJoint";
	rename -uid "6E0B295B-4C18-18C6-88B4-DBAD5D0D4E20";
	setAttr ".t" -type "double3" 0.40809016183070623 -0.50405505797357508 -0.638833 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr ".radi" 0.55470010262706981;
createNode joint -n "midArmRight_MidJoint" -p "midArmRight_UpperJoint";
	rename -uid "B4F6EA47-46EC-BCC5-4E05-7B8D0C109C53";
	setAttr ".t" -type "double3" -2.0575369999999986 5.5511151231257827e-017 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55877097521672403;
createNode joint -n "midArmRight_EndJoint" -p "midArmRight_MidJoint";
	rename -uid "A5015168-42D3-5F2B-4904-978A680B224C";
	setAttr ".t" -type "double3" -2.13624 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.53609039936007885;
createNode joint -n "backArmRight_UpperJoint" -p "bodyMidJoint";
	rename -uid "D2801444-4FA0-EEF5-B5F7-60993706633A";
	setAttr ".t" -type "double3" 1.1449801618307063 -0.50405505797357508 -0.51259800000000011 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.0167092985348862e-015 -76.915180586970735 180 ;
	setAttr ".radi" 0.5547001026270697;
createNode joint -n "backArmRight_MidJoint" -p "backArmRight_UpperJoint";
	rename -uid "FD68273B-4F59-91B2-4F5A-73862F644522";
	setAttr ".t" -type "double3" -2.0575334419253206 5.5511151231257827e-017 -1.7137321071114542e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55877097521672403;
createNode joint -n "backArmRight_EndJoint" -p "backArmRight_MidJoint";
	rename -uid "8425197B-46AC-165C-2276-72B6455A5693";
	setAttr ".t" -type "double3" -2.1362451603918764 0 -1.5096677681292192e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.53609039936007885;
createNode joint -n "armLeft_UpperJoint" -p "bodyFrontJoint";
	rename -uid "9D4CDFF2-40D8-276D-5D08-CEAE9A9871CE";
	setAttr ".t" -type "double3" -0.60068662647395565 -0.71381986828379884 0.57483424126870253 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".radi" 0.51564230787620025;
createNode joint -n "armLeft_MidJoint" -p "armLeft_UpperJoint";
	rename -uid "4CB04B79-4B15-014A-931F-E0A155F0BDF3";
	setAttr ".t" -type "double3" 1.3024179522732056 0 -4.3872027727774752e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.51093804005597798;
createNode joint -n "armLeft_BigPincerJoint" -p "armLeft_MidJoint";
	rename -uid "06C6D87A-46EE-AE69-88C5-F092C1FD1B40";
	setAttr ".t" -type "double3" 1.211468774415575 0 3.8002240785663383e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.0303629314719351e-017 -0.53409173853833325 -8.6472452980201819e-015 ;
	setAttr ".radi" 0.5;
createNode joint -n "armLeft_SmallPincerJoint" -p "armLeft_BigPincerJoint";
	rename -uid "38C147E4-456F-BB52-1507-7BA2DAC3B2BA";
	setAttr ".t" -type "double3" 0.18167255742808619 -0.25237544835041925 0.28592895558875897 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.0888874903416268e-014 240.52917086771421 -2.5444437451708134e-014 ;
	setAttr ".radi" 0.5;
createNode joint -n "armRight_UpperJoint" -p "bodyFrontJoint";
	rename -uid "52B87A52-44EB-43D5-D90A-DEBAC2AA8FEC";
	setAttr ".t" -type "double3" -0.6006861950215443 -0.71382005797357506 -0.57483399999999973 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr ".radi" 0.51564230787620025;
createNode joint -n "armRight_MidJoint" -p "armRight_UpperJoint";
	rename -uid "9CDFD50C-42A8-161F-5EEF-BFB3EFBBEA95";
	setAttr ".t" -type "double3" -1.3024159999999996 0 -1.1102230246251565e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.51093804005597798;
createNode joint -n "armRight_BigPincerJoint" -p "armRight_MidJoint";
	rename -uid "0E29BD16-42D1-E2E7-227A-039928C73EE3";
	setAttr ".t" -type "double3" -1.2114699999999992 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0486366638671336e-019 -0.53409173853833325 6.540926835928689e-017 ;
	setAttr ".radi" 0.5;
createNode joint -n "armRight_SmallPincerJoint" -p "armRight_BigPincerJoint";
	rename -uid "636A4C9A-4B4B-CF53-FC48-9192E907C27F";
	setAttr ".t" -type "double3" -0.18167318672058252 0.252375 -0.28592895153654585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708134e-014 240.52917086771421 0 ;
	setAttr ".radi" 0.5;
createNode transform -n "scorpion";
	rename -uid "8A209C99-45D6-3320-4013-C6AB64302E45";
createNode transform -n "armBrace" -p "scorpion";
	rename -uid "C4AF61B8-451C-941E-1362-CEA894401515";
	setAttr ".t" -type "double3" 0 -0.49140379944776236 0.60010148876693326 ;
	setAttr ".s" -type "double3" 1 0.037140573104940816 0.26753424663946412 ;
createNode mesh -n "armBraceShape" -p "armBrace";
	rename -uid "6DBAE950-4242-A7C9-BE0D-A293483932A4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50000005215406418 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -0.38132668 1.3322676e-015 ;
	setAttr ".pt[1]" -type "float3" 0 -0.3813262 1.3322676e-015 ;
	setAttr ".pt[2]" -type "float3" 0 -0.38132668 1.3322676e-015 ;
	setAttr ".pt[3]" -type "float3" 0 -0.3813262 1.3322676e-015 ;
	setAttr ".pt[4]" -type "float3" 0 -0.38132668 1.3322676e-015 ;
	setAttr ".pt[5]" -type "float3" 0 -0.3813262 1.3322676e-015 ;
	setAttr ".pt[6]" -type "float3" 0 -0.38132668 1.3322676e-015 ;
	setAttr ".pt[7]" -type "float3" 0 -0.3813262 1.3322676e-015 ;
	setAttr ".pt[8]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[9]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[10]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[11]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[12]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[13]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[14]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[15]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[20]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[21]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[22]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[23]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[24]" -type "float3" -2.2351742e-008 0.39781776 8.8817842e-016 ;
	setAttr ".pt[25]" -type "float3" 2.2351742e-008 0.39781776 8.8817842e-016 ;
	setAttr ".pt[26]" -type "float3" -2.2351742e-008 0.39781776 8.8817842e-016 ;
	setAttr ".pt[27]" -type "float3" 2.2351742e-008 0.39781776 8.8817842e-016 ;
	setAttr ".pt[28]" -type "float3" 0 -0.3813262 1.3322676e-015 ;
	setAttr ".pt[29]" -type "float3" 0 -0.3813262 1.3322676e-015 ;
	setAttr ".pt[30]" -type "float3" 0 -0.3813262 1.3322676e-015 ;
	setAttr ".pt[31]" -type "float3" 0 -0.3813262 1.3322676e-015 ;
	setAttr ".pt[32]" -type "float3" 0 -0.38132668 1.3322676e-015 ;
	setAttr ".pt[33]" -type "float3" 0 -0.38132668 1.3322676e-015 ;
	setAttr ".pt[34]" -type "float3" 0 -0.38132668 1.3322676e-015 ;
	setAttr ".pt[35]" -type "float3" 0 -0.38132668 1.3322676e-015 ;
	setAttr ".pt[36]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[37]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[38]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[39]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[40]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[41]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[42]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[43]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[44]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[45]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[46]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[47]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[48]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[49]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[50]" -type "float3" 0 0.39781776 8.8817842e-016 ;
	setAttr ".pt[51]" -type "float3" 0 0.39781776 8.8817842e-016 ;
createNode transform -n "eyes" -p "scorpion";
	rename -uid "7AD4799A-42D9-7CDA-5E78-7BB704122FAE";
createNode transform -n "eyeLeft" -p "eyes";
	rename -uid "69BD23AE-4D85-55CD-22D9-7EAFBB8F8ADE";
	setAttr ".t" -type "double3" 0.28317299062784063 -0.27746079678231428 0.57658424791153839 ;
	setAttr ".r" -type "double3" 84.321041911033518 0 -161.57198971598959 ;
	setAttr ".s" -type "double3" 0.73899058143373653 0.22614187054393226 -0.73899058143373653 ;
createNode mesh -n "eyeLeftShape" -p "eyeLeft";
	rename -uid "6DE14A15-4B7B-7BD3-8326-1B9F4EEC7D70";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.61048543
		 0.95423543 0.5 1 0.38951457 0.95423543 0.34375 0.84375 0.38951457 0.73326457 0.5
		 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.61048543 0.95423543 0.5 1 0.38951457
		 0.95423543 0.34375 0.84375 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457
		 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  0.18689081 -1.000000119209 -0.18689081 0 -1 -0.26430345
		 -0.18689084 -1.000000119209 -0.18689081 -0.26430345 -1.000000119209 2.9802322e-008
		 -0.18689084 -1.000000119209 0.18689084 0 -1 0.26430345 0.18689083 -1.000000119209 0.18689084
		 0.26430348 -1.000000119209 2.9802322e-008 0.14142136 0.99999952 -0.14142135 0 0.99999952 -0.19999999
		 -0.14142144 0.99999952 -0.14142135 -0.19999999 1 0 -0.14142144 1 0.14142144 0 0.99999976 0.19999999
		 0.14142136 1 0.14142144 0.2 1 0 0 -1.000000119209 2.9802322e-008 0.10924056 0.99999976 -0.10924053
		 0 1.000000238419 -0.15448949 -0.10924053 0.99999976 -0.10924056 -0.15448952 1.000000238419 -2.9802322e-008
		 -0.10924062 1.000000238419 0.10924059 0 1 0.15448949 0.10924056 1.000000238419 0.10924059
		 0.1544895 1.000000238419 0 0.10924059 0.93345976 -0.10924053 0 0.93346 -0.15448949
		 0 0.93346024 -2.9802322e-008 -0.10924053 0.93345976 -0.10924056 -0.15448952 0.93346024 -2.9802322e-008
		 -0.10924062 0.93346 0.10924059 0 0.93346 0.15448955 0.10924056 0.93346 0.10924059
		 0.15448952 0.93346024 0;
	setAttr -s 72 ".ed[0:71]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 18 1 17 18 0 10 19 1 18 19 0 11 20 1 19 20 0 12 21 1 20 21 0 13 22 1
		 21 22 0 14 23 1 22 23 0 15 24 1 23 24 0 24 17 0 17 25 0 18 26 0 25 26 0 26 27 1 25 27 1
		 19 28 0 26 28 0 28 27 1 20 29 0 28 29 0 29 27 1 21 30 0 29 30 0 30 27 1 22 31 0 30 31 0
		 31 27 1 23 32 0 31 32 0 32 27 1 24 33 0 32 33 0 33 27 1 33 25 0;
	setAttr -s 40 -ch 144 ".fc[0:39]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 50 51 -53
		mu 0 3 44 45 35
		f 3 54 55 -52
		mu 0 3 45 46 35
		f 3 57 58 -56
		mu 0 3 46 47 35
		f 3 60 61 -59
		mu 0 3 47 48 35
		f 3 63 64 -62
		mu 0 3 48 49 35
		f 3 66 67 -65
		mu 0 3 49 50 35
		f 3 69 70 -68
		mu 0 3 50 51 35
		f 3 71 52 -71
		mu 0 3 51 44 35
		f 4 8 33 -35 -33
		mu 0 4 32 31 37 36
		f 4 9 35 -37 -34
		mu 0 4 31 30 38 37
		f 4 10 37 -39 -36
		mu 0 4 30 29 39 38
		f 4 11 39 -41 -38
		mu 0 4 29 28 40 39
		f 4 12 41 -43 -40
		mu 0 4 28 27 41 40
		f 4 13 43 -45 -42
		mu 0 4 27 26 42 41
		f 4 14 45 -47 -44
		mu 0 4 26 33 43 42
		f 4 15 32 -48 -46
		mu 0 4 33 32 36 43
		f 4 34 49 -51 -49
		mu 0 4 36 37 45 44
		f 4 36 53 -55 -50
		mu 0 4 37 38 46 45
		f 4 38 56 -58 -54
		mu 0 4 38 39 47 46
		f 4 40 59 -61 -57
		mu 0 4 39 40 48 47
		f 4 42 62 -64 -60
		mu 0 4 40 41 49 48
		f 4 44 65 -67 -63
		mu 0 4 41 42 50 49
		f 4 46 68 -70 -66
		mu 0 4 42 43 51 50
		f 4 47 48 -72 -69
		mu 0 4 43 36 44 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "eyeRight" -p "eyes";
	rename -uid "0FBCB4D6-40A1-7FB3-E789-F888DC841B28";
	setAttr ".t" -type "double3" -0.28317299062784063 -0.27746079678231428 0.57658424791153839 ;
	setAttr ".r" -type "double3" 95.678958088966482 1.5902773407317588e-015 -18.428010284010426 ;
	setAttr ".s" -type "double3" 0.73899058143373653 0.22614187054393226 0.73899058143373653 ;
createNode mesh -n "eyeRightShape" -p "eyeRight";
	rename -uid "31D5EF50-4C50-CD80-E890-819BEB7C602F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "tail" -p "scorpion";
	rename -uid "861AFA1A-4E23-C530-010D-539767FF358A";
createNode transform -n "tailEnd" -p "tail";
	rename -uid "CD22974D-4A66-822F-E1EB-74B772BB3E74";
	setAttr ".t" -type "double3" 0 2.0531596310879863e-005 -6.8829137234289668 ;
	setAttr ".s" -type "double3" 0.66339080221181146 0.858311075702196 0.70038757504484928 ;
createNode mesh -n "tailEndShape" -p "tailEnd";
	rename -uid "90E49926-4345-BB31-0843-078EE22AD179";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[31:49]" -type "float3"  0.055604734 0.086297296 0 
		-0.055604734 0.086297296 0 0 0 -0.12044874 0 0 -0.12044874 0 0 -0.11768113 0 0 -0.12044874 
		0 0 -0.11768113 0 0 -0.085913271 0 0 -0.092127487 0 0 -0.092127487 0 0 -0.23073772 
		0 0 -0.23073772 0 0 -0.39365491 0 0 -0.22963054 0 0 -0.23073772 0 0 -0.22963054 0 
		0 -0.21692289 0 0 -0.21940914 0 0 -0.21940914;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "tailEnd";
	rename -uid "D5DA08D6-4695-4339-CABA-DEBB0BB94327";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.375 0.125 0.5 0.125 0.625 0.125 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5
		 0.375 0.625 0.375 0.375 0.5 0.5 0.5 0.625 0.5 0.375 0.625 0.5 0.625 0.625 0.625 0.375
		 0.75 0.5 0.75 0.625 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1
		 0.875 0 0.75 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.125 0 0.25 0 0.125 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.19795561 0.41391852 -0.1719977 
		0 0.63599801 0.065054998 -0.19795561 0.41391852 -0.1719977 0.1834958 0 -0.1719977 
		0 0.22026797 0.098171324 -0.1834958 0 -0.1719977 0.21963365 -0.38518059 -0.1719977 
		0 -0.1649127 0.014443836 -0.21963365 -0.38518059 -0.1719977 0.14335307 -0.38518056 
		-0.13861498 0 -0.082126863 -0.13861498 -0.14335307 -0.38518056 -0.13861498 0.15000169 
		-0.38518056 -0.0091692051 0 -0.082126871 -0.0091693392 -0.15000169 -0.38518056 -0.0091692051 
		0.13502628 0 -0.0091691157 0 0.22403544 -0.073069364 -0.13502628 0 -0.0091691157 
		0.15000169 0.41118467 -0.0091689965 0 0.5497089 -0.0091690561 -0.15000169 0.41118467 
		-0.0091689965 0.12846121 0.38518056 -0.13861498 0 0.63788271 -0.13861498 -0.12846121 
		0.38518056 -0.13861498 -0.10247435 0 -0.13861498 0.10247435 0 -0.13861498;
	setAttr -s 26 ".vt[0:25]"  -0.5 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5
		 0 0 0.5 0.5 0 0.5 -0.5 0.5 0.5 0 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 0 0 0.5 0 0.5 0.5 0
		 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 0 13 14 0 15 16 1 16 17 1 18 19 0 19 20 0 21 22 1 22 23 1 0 3 0 1 4 1
		 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 12 0 10 13 1 11 14 0 12 15 0 13 16 1
		 14 17 0 15 18 0 16 19 1 17 20 0 18 21 0 19 22 1 20 23 0 21 0 0 22 1 1 23 2 0 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -3 -17
		mu 0 4 0 1 4 3
		f 4 1 18 -4 -18
		mu 0 4 1 2 5 4
		f 4 2 20 -5 -20
		mu 0 4 3 4 7 6
		f 4 3 21 -6 -21
		mu 0 4 4 5 8 7
		f 4 4 23 -7 -23
		mu 0 4 6 7 10 9
		f 4 5 24 -8 -24
		mu 0 4 7 8 11 10
		f 4 6 26 -9 -26
		mu 0 4 9 10 13 12
		f 4 7 27 -10 -27
		mu 0 4 10 11 14 13
		f 4 8 29 -11 -29
		mu 0 4 12 13 16 15
		f 4 9 30 -12 -30
		mu 0 4 13 14 17 16
		f 4 10 32 -13 -32
		mu 0 4 15 16 19 18
		f 4 11 33 -14 -33
		mu 0 4 16 17 20 19
		f 4 12 35 -15 -35
		mu 0 4 18 19 22 21
		f 4 13 36 -16 -36
		mu 0 4 19 20 23 22
		f 4 14 38 -1 -38
		mu 0 4 21 22 25 24
		f 4 15 39 -2 -39
		mu 0 4 22 23 26 25
		f 4 -37 -34 40 -43
		mu 0 4 28 27 29 30
		f 4 -40 42 41 -19
		mu 0 4 2 28 30 5
		f 4 -41 -31 -28 -44
		mu 0 4 30 29 31 32
		f 4 -42 43 -25 -22
		mu 0 4 5 30 32 8
		f 4 34 46 -45 31
		mu 0 4 33 34 36 35
		f 4 37 16 -46 -47
		mu 0 4 34 0 3 36
		f 4 44 47 25 28
		mu 0 4 35 36 38 37
		f 4 45 19 22 -48
		mu 0 4 36 3 6 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "tailMid3" -p "tail";
	rename -uid "2EF62D38-4EF0-B6F9-C777-8D94E08B0848";
	setAttr ".t" -type "double3" 0 2.0531596310879863e-005 -6.1996408237973908 ;
	setAttr ".s" -type "double3" 0.66339080221181146 0.858311075702196 0.70038757504484928 ;
createNode mesh -n "tailMidShape3" -p "tailMid3";
	rename -uid "16B61E0E-4AED-CE07-34D0-279670F7145C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.375 0.125 0.5 0.125 0.625 0.125 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5
		 0.375 0.625 0.375 0.375 0.5 0.5 0.5 0.625 0.5 0.375 0.625 0.5 0.625 0.625 0.625 0.375
		 0.75 0.5 0.75 0.625 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1
		 0.875 0 0.75 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.125 0 0.25 0 0.125 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.19795561 0.41391852 -0.1719977 
		0 0.40563622 0.065054998 -0.19795561 0.41391852 -0.1719977 0.1834958 0 -0.1719977 
		0 0.22026797 0.098171324 -0.1834958 0 -0.1719977 0.21963365 -0.38518059 -0.1719977 
		0 -0.1649127 0.014443836 -0.21963365 -0.38518059 -0.1719977 0.14335307 -0.38518056 
		-0.13861498 0 -0.082126863 -0.13861498 -0.14335307 -0.38518056 -0.13861498 0.15000169 
		-0.38518056 -0.22851126 0 -0.082126863 -0.34158862 -0.15000169 -0.38518056 -0.22851126 
		0.13502628 0 -0.15879151 0 0.30408621 -0.1838176 -0.13502628 0 -0.15879151 0.15000169 
		0.41118467 -0.049693644 0 0.34249073 -0.10200577 -0.15000169 0.41118467 -0.049693644 
		0.12846121 0.38518056 -0.13861498 0 0.34522966 -0.13861498 -0.12846121 0.38518056 
		-0.13861498 -0.10247435 0 -0.13861498 0.10247435 0 -0.13861498;
	setAttr -s 26 ".vt[0:25]"  -0.5 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5
		 0 0 0.5 0.5 0 0.5 -0.5 0.5 0.5 0 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 0 0 0.5 0 0.5 0.5 0
		 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 0 13 14 0 15 16 1 16 17 1 18 19 0 19 20 0 21 22 1 22 23 1 0 3 0 1 4 1
		 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 12 0 10 13 1 11 14 0 12 15 0 13 16 1
		 14 17 0 15 18 0 16 19 1 17 20 0 18 21 0 19 22 1 20 23 0 21 0 0 22 1 1 23 2 0 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -3 -17
		mu 0 4 0 1 4 3
		f 4 1 18 -4 -18
		mu 0 4 1 2 5 4
		f 4 2 20 -5 -20
		mu 0 4 3 4 7 6
		f 4 3 21 -6 -21
		mu 0 4 4 5 8 7
		f 4 4 23 -7 -23
		mu 0 4 6 7 10 9
		f 4 5 24 -8 -24
		mu 0 4 7 8 11 10
		f 4 6 26 -9 -26
		mu 0 4 9 10 13 12
		f 4 7 27 -10 -27
		mu 0 4 10 11 14 13
		f 4 8 29 -11 -29
		mu 0 4 12 13 16 15
		f 4 9 30 -12 -30
		mu 0 4 13 14 17 16
		f 4 10 32 -13 -32
		mu 0 4 15 16 19 18
		f 4 11 33 -14 -33
		mu 0 4 16 17 20 19
		f 4 12 35 -15 -35
		mu 0 4 18 19 22 21
		f 4 13 36 -16 -36
		mu 0 4 19 20 23 22
		f 4 14 38 -1 -38
		mu 0 4 21 22 25 24
		f 4 15 39 -2 -39
		mu 0 4 22 23 26 25
		f 4 -37 -34 40 -43
		mu 0 4 28 27 29 30
		f 4 -40 42 41 -19
		mu 0 4 2 28 30 5
		f 4 -41 -31 -28 -44
		mu 0 4 30 29 31 32
		f 4 -42 43 -25 -22
		mu 0 4 5 30 32 8
		f 4 34 46 -45 31
		mu 0 4 33 34 36 35
		f 4 37 16 -46 -47
		mu 0 4 34 0 3 36
		f 4 44 47 25 28
		mu 0 4 35 36 38 37
		f 4 45 19 22 -48
		mu 0 4 36 3 6 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "tailMid2" -p "tail";
	rename -uid "A80AB4D0-46BE-7D5B-1B54-65824DD16533";
	setAttr ".t" -type "double3" 0 2.0531596310879863e-005 -5.4786245906105746 ;
	setAttr ".s" -type "double3" 0.74877856902532025 0.858311075702196 0.70038757504484928 ;
createNode mesh -n "tailMidShape2" -p "tailMid2";
	rename -uid "60F4D41A-4C62-947C-24DE-689D2391589A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.375 0.125 0.5 0.125 0.625 0.125 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5
		 0.375 0.625 0.375 0.375 0.5 0.5 0.5 0.625 0.5 0.375 0.625 0.5 0.625 0.625 0.625 0.375
		 0.75 0.5 0.75 0.625 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1
		 0.875 0 0.75 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.125 0 0.25 0 0.125 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.19795561 0.41391852 -0.1719977 
		0 0.52406406 0.065054998 -0.19795561 0.41391852 -0.1719977 0.1834958 0 -0.1719977 
		0 0.22026797 0.098171324 -0.1834958 0 -0.1719977 0.21963365 -0.38518059 -0.1719977 
		0 -0.1649127 0.014443836 -0.21963365 -0.38518059 -0.1719977 0.14335307 -0.38518056 
		-0.13861498 0 -0.082126863 -0.13861498 -0.14335307 -0.38518056 -0.13861498 0.15000169 
		-0.38518056 -0.22851126 0 -0.082126863 -0.34158862 -0.15000169 -0.38518056 -0.22851126 
		0.13502628 0 -0.15879151 0 0.30408621 -0.1838176 -0.13502628 0 -0.15879151 0.15000169 
		0.41118467 -0.049693644 0 0.42960808 -0.062463693 -0.15000169 0.41118467 -0.049693644 
		0.12846121 0.38518056 -0.13861498 0 0.45483604 -0.13861498 -0.12846121 0.38518056 
		-0.13861498 -0.10247435 0 -0.13861498 0.10247435 0 -0.13861498;
	setAttr -s 26 ".vt[0:25]"  -0.5 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5
		 0 0 0.5 0.5 0 0.5 -0.5 0.5 0.5 0 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 0 0 0.5 0 0.5 0.5 0
		 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 0 13 14 0 15 16 1 16 17 1 18 19 0 19 20 0 21 22 1 22 23 1 0 3 0 1 4 1
		 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 12 0 10 13 1 11 14 0 12 15 0 13 16 1
		 14 17 0 15 18 0 16 19 1 17 20 0 18 21 0 19 22 1 20 23 0 21 0 0 22 1 1 23 2 0 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -3 -17
		mu 0 4 0 1 4 3
		f 4 1 18 -4 -18
		mu 0 4 1 2 5 4
		f 4 2 20 -5 -20
		mu 0 4 3 4 7 6
		f 4 3 21 -6 -21
		mu 0 4 4 5 8 7
		f 4 4 23 -7 -23
		mu 0 4 6 7 10 9
		f 4 5 24 -8 -24
		mu 0 4 7 8 11 10
		f 4 6 26 -9 -26
		mu 0 4 9 10 13 12
		f 4 7 27 -10 -27
		mu 0 4 10 11 14 13
		f 4 8 29 -11 -29
		mu 0 4 12 13 16 15
		f 4 9 30 -12 -30
		mu 0 4 13 14 17 16
		f 4 10 32 -13 -32
		mu 0 4 15 16 19 18
		f 4 11 33 -14 -33
		mu 0 4 16 17 20 19
		f 4 12 35 -15 -35
		mu 0 4 18 19 22 21
		f 4 13 36 -16 -36
		mu 0 4 19 20 23 22
		f 4 14 38 -1 -38
		mu 0 4 21 22 25 24
		f 4 15 39 -2 -39
		mu 0 4 22 23 26 25
		f 4 -37 -34 40 -43
		mu 0 4 28 27 29 30
		f 4 -40 42 41 -19
		mu 0 4 2 28 30 5
		f 4 -41 -31 -28 -44
		mu 0 4 30 29 31 32
		f 4 -42 43 -25 -22
		mu 0 4 5 30 32 8
		f 4 34 46 -45 31
		mu 0 4 33 34 36 35
		f 4 37 16 -46 -47
		mu 0 4 34 0 3 36
		f 4 44 47 25 28
		mu 0 4 35 36 38 37
		f 4 45 19 22 -48
		mu 0 4 36 3 6 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "tailMid" -p "tail";
	rename -uid "FE860D8D-4DD1-5F37-8313-5784D0CDEF04";
	setAttr ".t" -type "double3" 0 2.0531596310879863e-005 -4.6687633503594128 ;
	setAttr ".s" -type "double3" 0.74877856902532025 0.858311075702196 0.70038757504484928 ;
createNode mesh -n "tailMidShape" -p "tailMid";
	rename -uid "8617E46D-4560-15FF-C168-7F8BC05FA61E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.3125 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.375 0.125 0.5 0.125 0.625 0.125 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5
		 0.375 0.625 0.375 0.375 0.5 0.5 0.5 0.625 0.5 0.375 0.625 0.5 0.625 0.625 0.625 0.375
		 0.75 0.5 0.75 0.625 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1
		 0.875 0 0.75 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.125 0 0.25 0 0.125 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.19795561 0.41391852 -0.1719977 
		0 0.63599801 0.065054998 -0.19795561 0.41391852 -0.1719977 0.1834958 0 -0.1719977 
		0 0.22026797 0.098171324 -0.1834958 0 -0.1719977 0.21963365 -0.38518059 -0.1719977 
		0 -0.1649127 0.014443836 -0.21963365 -0.38518059 -0.1719977 0.14335307 -0.38518056 
		-0.13861498 0 0 -0.13861498 -0.14335307 -0.38518056 -0.13861498 0.15000169 -0.38518056 
		-0.29533821 0 0 -0.40841556 -0.15000169 -0.38518056 -0.29533821 0.13502628 0 -0.22561848 
		0 0.30408621 -0.25064456 -0.13502628 0 -0.22561848 0.15000169 0.41118467 -0.11652061 
		0 0.50396442 -0.12929066 -0.15000169 0.41118467 -0.11652061 0.12846121 0.38518056 
		-0.13861498 0 0.58063614 -0.13861498 -0.12846121 0.38518056 -0.13861498 -0.10247435 
		0 -0.13861498 0.10247435 0 -0.13861498;
	setAttr -s 26 ".vt[0:25]"  -0.5 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5
		 0 0 0.5 0.5 0 0.5 -0.5 0.5 0.5 0 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 0 0 0.5 0 0.5 0.5 0
		 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 0 13 14 0 15 16 1 16 17 1 18 19 0 19 20 0 21 22 1 22 23 1 0 3 0 1 4 1
		 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 12 0 10 13 1 11 14 0 12 15 0 13 16 1
		 14 17 0 15 18 0 16 19 1 17 20 0 18 21 0 19 22 1 20 23 0 21 0 0 22 1 1 23 2 0 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -3 -17
		mu 0 4 0 1 4 3
		f 4 1 18 -4 -18
		mu 0 4 1 2 5 4
		f 4 2 20 -5 -20
		mu 0 4 3 4 7 6
		f 4 3 21 -6 -21
		mu 0 4 4 5 8 7
		f 4 4 23 -7 -23
		mu 0 4 6 7 10 9
		f 4 5 24 -8 -24
		mu 0 4 7 8 11 10
		f 4 6 26 -9 -26
		mu 0 4 9 10 13 12
		f 4 7 27 -10 -27
		mu 0 4 10 11 14 13
		f 4 8 29 -11 -29
		mu 0 4 12 13 16 15
		f 4 9 30 -12 -30
		mu 0 4 13 14 17 16
		f 4 10 32 -13 -32
		mu 0 4 15 16 19 18
		f 4 11 33 -14 -33
		mu 0 4 16 17 20 19
		f 4 12 35 -15 -35
		mu 0 4 18 19 22 21
		f 4 13 36 -16 -36
		mu 0 4 19 20 23 22
		f 4 14 38 -1 -38
		mu 0 4 21 22 25 24
		f 4 15 39 -2 -39
		mu 0 4 22 23 26 25
		f 4 -37 -34 40 -43
		mu 0 4 28 27 29 30
		f 4 -40 42 41 -19
		mu 0 4 2 28 30 5
		f 4 -41 -31 -28 -44
		mu 0 4 30 29 31 32
		f 4 -42 43 -25 -22
		mu 0 4 5 30 32 8
		f 4 34 46 -45 31
		mu 0 4 33 34 36 35
		f 4 37 16 -46 -47
		mu 0 4 34 0 3 36
		f 4 44 47 25 28
		mu 0 4 35 36 38 37
		f 4 45 19 22 -48
		mu 0 4 36 3 6 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "tailFront2" -p "tail";
	rename -uid "FCEF4D70-4A58-8E8B-CEDD-71AA8C2AD49F";
	setAttr ".t" -type "double3" 0 2.0531596310879863e-005 -3.8633778861184056 ;
	setAttr ".s" -type "double3" 0.74877856902532025 0.858311075702196 0.70038757504484928 ;
createNode mesh -n "tailFrontShape2" -p "tailFront2";
	rename -uid "46831F09-49E2-7A00-B1C5-528A71823493";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.375 0.125 0.5 0.125 0.625 0.125 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5
		 0.375 0.625 0.375 0.375 0.5 0.5 0.5 0.625 0.5 0.375 0.625 0.5 0.625 0.625 0.625 0.375
		 0.75 0.5 0.75 0.625 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1
		 0.875 0 0.75 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.125 0 0.25 0 0.125 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.080866612 0.41391852 -0.1719977 
		0 0.63599801 0.065054998 -0.080866612 0.41391852 -0.1719977 0.060801413 0 -0.1719977 
		0 0.22026797 0.098171324 -0.060801413 0 -0.1719977 0.11094826 -0.38518059 -0.1719977 
		0 -0.1649127 0.014443836 -0.11094826 -0.38518059 -0.1719977 0.028234012 -0.38518056 
		-0.13861498 0 0 -0.13861498 -0.028234012 -0.38518056 -0.13861498 0.15000169 -0.38518056 
		-0.29533821 0 0 -0.40841556 -0.15000169 -0.38518056 -0.29533821 0.13502628 0 -0.22561848 
		0 0.30408621 -0.25064456 -0.13502628 0 -0.22561848 0.15000169 0.41118467 -0.11652061 
		0 0.64220542 -0.12929066 -0.15000169 0.41118467 -0.11652061 0.0085353544 0.38518056 
		-0.13861498 0 0.63788271 -0.13861498 -0.0085353544 0.38518056 -0.13861498 0.025839604 
		0 -0.13861498 -0.025839604 0 -0.13861498;
	setAttr -s 26 ".vt[0:25]"  -0.5 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5
		 0 0 0.5 0.5 0 0.5 -0.5 0.5 0.5 0 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 0 0 0.5 0 0.5 0.5 0
		 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 0 13 14 0 15 16 1 16 17 1 18 19 0 19 20 0 21 22 1 22 23 1 0 3 0 1 4 1
		 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 12 0 10 13 1 11 14 0 12 15 0 13 16 1
		 14 17 0 15 18 0 16 19 1 17 20 0 18 21 0 19 22 1 20 23 0 21 0 0 22 1 1 23 2 0 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -3 -17
		mu 0 4 0 1 4 3
		f 4 1 18 -4 -18
		mu 0 4 1 2 5 4
		f 4 2 20 -5 -20
		mu 0 4 3 4 7 6
		f 4 3 21 -6 -21
		mu 0 4 4 5 8 7
		f 4 4 23 -7 -23
		mu 0 4 6 7 10 9
		f 4 5 24 -8 -24
		mu 0 4 7 8 11 10
		f 4 6 26 -9 -26
		mu 0 4 9 10 13 12
		f 4 7 27 -10 -27
		mu 0 4 10 11 14 13
		f 4 8 29 -11 -29
		mu 0 4 12 13 16 15
		f 4 9 30 -12 -30
		mu 0 4 13 14 17 16
		f 4 10 32 -13 -32
		mu 0 4 15 16 19 18
		f 4 11 33 -14 -33
		mu 0 4 16 17 20 19
		f 4 12 35 -15 -35
		mu 0 4 18 19 22 21
		f 4 13 36 -16 -36
		mu 0 4 19 20 23 22
		f 4 14 38 -1 -38
		mu 0 4 21 22 25 24
		f 4 15 39 -2 -39
		mu 0 4 22 23 26 25
		f 4 -37 -34 40 -43
		mu 0 4 28 27 29 30
		f 4 -40 42 41 -19
		mu 0 4 2 28 30 5
		f 4 -41 -31 -28 -44
		mu 0 4 30 29 31 32
		f 4 -42 43 -25 -22
		mu 0 4 5 30 32 8
		f 4 34 46 -45 31
		mu 0 4 33 34 36 35
		f 4 37 16 -46 -47
		mu 0 4 34 0 3 36
		f 4 44 47 25 28
		mu 0 4 35 36 38 37
		f 4 45 19 22 -48
		mu 0 4 36 3 6 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "tailFront" -p "tail";
	rename -uid "6516D99C-4917-1F8C-F5B6-0DB8DA0BB07B";
	setAttr ".t" -type "double3" 0 0 -2.8895678879673485 ;
createNode mesh -n "tailFrontShape" -p "tailFront";
	rename -uid "81199B49-4372-1F07-903A-0EAB3821717F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.375 0.125 0.5 0.125 0.625 0.125 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5
		 0.375 0.625 0.375 0.375 0.5 0.5 0.5 0.625 0.5 0.375 0.625 0.5 0.625 0.625 0.625 0.375
		 0.75 0.5 0.75 0.625 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1
		 0.875 0 0.75 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.125 0 0.25 0 0.125 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.080866612 0.41391852 -0.1719977 
		0 0.63599801 0.065054998 -0.080866612 0.41391852 -0.1719977 0.060801413 0 -0.1719977 
		0 0.22026797 0.098171324 -0.060801413 0 -0.1719977 0.11094826 -0.38518059 -0.1719977 
		0 -0.1649127 0.014443836 -0.11094826 -0.38518059 -0.1719977 0.028234012 -0.38518056 
		-0.13861498 0 0 -0.13861498 -0.028234012 -0.38518056 -0.13861498 0.15000169 -0.38518056 
		-0.29533821 0 0 -0.40841556 -0.15000169 -0.38518056 -0.29533821 0.13502628 0 -0.22561848 
		0 0.30408621 -0.25064456 -0.13502628 0 -0.22561848 0.15000169 0.41118467 -0.11652061 
		0 0.64220542 -0.12929066 -0.15000169 0.41118467 -0.11652061 0.0085353544 0.38518056 
		-0.13861498 0 0.63788271 -0.13861498 -0.0085353544 0.38518056 -0.13861498 0.025839604 
		0 -0.13861498 -0.025839604 0 -0.13861498;
	setAttr -s 26 ".vt[0:25]"  -0.5 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5
		 0 0 0.5 0.5 0 0.5 -0.5 0.5 0.5 0 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 0 0 0.5 0 0.5 0.5 0
		 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 0 13 14 0 15 16 1 16 17 1 18 19 0 19 20 0 21 22 1 22 23 1 0 3 0 1 4 1
		 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 12 0 10 13 1 11 14 0 12 15 0 13 16 1
		 14 17 0 15 18 0 16 19 1 17 20 0 18 21 0 19 22 1 20 23 0 21 0 0 22 1 1 23 2 0 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -3 -17
		mu 0 4 0 1 4 3
		f 4 1 18 -4 -18
		mu 0 4 1 2 5 4
		f 4 2 20 -5 -20
		mu 0 4 3 4 7 6
		f 4 3 21 -6 -21
		mu 0 4 4 5 8 7
		f 4 4 23 -7 -23
		mu 0 4 6 7 10 9
		f 4 5 24 -8 -24
		mu 0 4 7 8 11 10
		f 4 6 26 -9 -26
		mu 0 4 9 10 13 12
		f 4 7 27 -10 -27
		mu 0 4 10 11 14 13
		f 4 8 29 -11 -29
		mu 0 4 12 13 16 15
		f 4 9 30 -12 -30
		mu 0 4 13 14 17 16
		f 4 10 32 -13 -32
		mu 0 4 15 16 19 18
		f 4 11 33 -14 -33
		mu 0 4 16 17 20 19
		f 4 12 35 -15 -35
		mu 0 4 18 19 22 21
		f 4 13 36 -16 -36
		mu 0 4 19 20 23 22
		f 4 14 38 -1 -38
		mu 0 4 21 22 25 24
		f 4 15 39 -2 -39
		mu 0 4 22 23 26 25
		f 4 -37 -34 40 -43
		mu 0 4 28 27 29 30
		f 4 -40 42 41 -19
		mu 0 4 2 28 30 5
		f 4 -41 -31 -28 -44
		mu 0 4 30 29 31 32
		f 4 -42 43 -25 -22
		mu 0 4 5 30 32 8
		f 4 34 46 -45 31
		mu 0 4 33 34 36 35
		f 4 37 16 -46 -47
		mu 0 4 34 0 3 36
		f 4 44 47 25 28
		mu 0 4 35 36 38 37
		f 4 45 19 22 -48
		mu 0 4 36 3 6 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "body" -p "scorpion";
	rename -uid "3D5E754C-476D-9A79-0BB9-8E9BD48EAD40";
createNode transform -n "bodyBack" -p "body";
	rename -uid "7D3D9E59-4A1D-24B3-7AE0-FF80CC55EFB4";
	setAttr ".t" -type "double3" 0 0 -1.7848179402468856 ;
createNode mesh -n "bodyBackShape" -p "bodyBack";
	rename -uid "6756D184-4AE6-4035-A0EE-7A8E08E58948";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.375 0.125 0.5 0.125 0.625 0.125 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5
		 0.375 0.625 0.375 0.375 0.5 0.5 0.5 0.625 0.5 0.375 0.625 0.5 0.625 0.625 0.625 0.375
		 0.75 0.5 0.75 0.625 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1
		 0.875 0 0.75 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.125 0 0.25 0 0.125 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  -0.11760842 0.41391852 -0.1719977 
		0 0.63599801 -0.14064796 0.11760842 0.41391852 -0.1719977 -0.14717521 0 -0.1719977 
		0 0.22026797 -0.10753164 0.14717521 0 -0.1719977 -0.073282018 -0.38518059 -0.1719977 
		0 -0.077487476 -0.19125913 0.073282018 -0.38518059 -0.1719977 -0.19516449 -0.38518056 
		-0.13861498 0 0.056745898 -0.13861498 0.19516449 -0.38518056 -0.13861498 -0.015735362 
		-0.38518056 -0.29533821 0 -0.028618384 -0.40841556 0.015735362 -0.38518056 -0.29533821 
		-0.037802152 0 -0.22561848 0 0.30408621 -0.25064456 0.037802152 0 -0.22561848 -0.015735362 
		0.41118467 -0.11652061 0 0.64220542 -0.12929066 0.015735362 0.41118467 -0.11652061 
		-0.22419117 0.38518056 -0.13861498 0 0.63788271 -0.13861498 0.22419117 0.38518056 
		-0.13861498 0.27484393 0 -0.13861498 -0.27484393 0 -0.13861498;
	setAttr -s 26 ".vt[0:25]"  -0.5 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5
		 0 0 0.5 0.5 0 0.5 -0.5 0.5 0.5 0 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 0 0 0.5 0 0.5 0.5 0
		 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 0 13 14 0 15 16 1 16 17 1 18 19 0 19 20 0 21 22 1 22 23 1 0 3 0 1 4 1
		 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 12 0 10 13 1 11 14 0 12 15 0 13 16 1
		 14 17 0 15 18 0 16 19 1 17 20 0 18 21 0 19 22 1 20 23 0 21 0 0 22 1 1 23 2 0 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -3 -17
		mu 0 4 0 1 4 3
		f 4 1 18 -4 -18
		mu 0 4 1 2 5 4
		f 4 2 20 -5 -20
		mu 0 4 3 4 7 6
		f 4 3 21 -6 -21
		mu 0 4 4 5 8 7
		f 4 4 23 -7 -23
		mu 0 4 6 7 10 9
		f 4 5 24 -8 -24
		mu 0 4 7 8 11 10
		f 4 6 26 -9 -26
		mu 0 4 9 10 13 12
		f 4 7 27 -10 -27
		mu 0 4 10 11 14 13
		f 4 8 29 -11 -29
		mu 0 4 12 13 16 15
		f 4 9 30 -12 -30
		mu 0 4 13 14 17 16
		f 4 10 32 -13 -32
		mu 0 4 15 16 19 18
		f 4 11 33 -14 -33
		mu 0 4 16 17 20 19
		f 4 12 35 -15 -35
		mu 0 4 18 19 22 21
		f 4 13 36 -16 -36
		mu 0 4 19 20 23 22
		f 4 14 38 -1 -38
		mu 0 4 21 22 25 24
		f 4 15 39 -2 -39
		mu 0 4 22 23 26 25
		f 4 -37 -34 40 -43
		mu 0 4 28 27 29 30
		f 4 -40 42 41 -19
		mu 0 4 2 28 30 5
		f 4 -41 -31 -28 -44
		mu 0 4 30 29 31 32
		f 4 -42 43 -25 -22
		mu 0 4 5 30 32 8
		f 4 34 46 -45 31
		mu 0 4 33 34 36 35
		f 4 37 16 -46 -47
		mu 0 4 34 0 3 36
		f 4 44 47 25 28
		mu 0 4 35 36 38 37
		f 4 45 19 22 -48
		mu 0 4 36 3 6 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "bodyMid" -p "body";
	rename -uid "96D13ED5-4956-5628-10E9-EE9A94C18036";
	setAttr ".t" -type "double3" 0 0 -0.9284998181860471 ;
createNode mesh -n "bodyMidShape" -p "bodyMid";
	rename -uid "93C844F1-41FB-AFA0-FB33-1DB63CB87043";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.375 0.125 0.5 0.125 0.625 0.125 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5
		 0.375 0.625 0.375 0.375 0.5 0.5 0.5 0.625 0.5 0.375 0.625 0.5 0.625 0.625 0.625 0.375
		 0.75 0.5 0.75 0.625 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1
		 0.875 0 0.75 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.125 0 0.25 0 0.125 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  -0.16514145 0.41391852 -0.1719977 
		0 0.63599801 -0.09345828 0.16514145 0.41391852 -0.1719977 -0.19698375 0 -0.1719977 
		0 0.35538712 -0.060341958 0.19698375 0 -0.1719977 -0.11740357 -0.38518059 -0.1719977 
		0 -0.029793555 -0.14406945 0.11740357 -0.38518059 -0.1719977 -0.30375338 -0.38518056 
		0 0 0.13511916 0 0.30375338 -0.38518056 0 -0.21073368 -0.38518056 -0.12067617 0 0.039666519 
		-0.23375353 0.21073368 -0.38518056 -0.12067617 -0.24114379 0 -0.050956432 0 0.30408621 
		-0.075982504 0.24114379 0 -0.050956432 -0.21073368 0.41118467 0.058141448 0 0.64220542 
		0.045371406 0.21073368 0.41118467 0.058141448 -0.33731431 0.38518056 0 0 0.63788271 
		0 0.33731431 0.38518056 0 0.39587963 0 0 -0.39587963 0 0;
	setAttr -s 26 ".vt[0:25]"  -0.5 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5
		 0 0 0.5 0.5 0 0.5 -0.5 0.5 0.5 0 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 0 0 0.5 0 0.5 0.5 0
		 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 0 13 14 0 15 16 1 16 17 1 18 19 0 19 20 0 21 22 1 22 23 1 0 3 0 1 4 1
		 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 12 0 10 13 1 11 14 0 12 15 0 13 16 1
		 14 17 0 15 18 0 16 19 1 17 20 0 18 21 0 19 22 1 20 23 0 21 0 0 22 1 1 23 2 0 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -3 -17
		mu 0 4 0 1 4 3
		f 4 1 18 -4 -18
		mu 0 4 1 2 5 4
		f 4 2 20 -5 -20
		mu 0 4 3 4 7 6
		f 4 3 21 -6 -21
		mu 0 4 4 5 8 7
		f 4 4 23 -7 -23
		mu 0 4 6 7 10 9
		f 4 5 24 -8 -24
		mu 0 4 7 8 11 10
		f 4 6 26 -9 -26
		mu 0 4 9 10 13 12
		f 4 7 27 -10 -27
		mu 0 4 10 11 14 13
		f 4 8 29 -11 -29
		mu 0 4 12 13 16 15
		f 4 9 30 -12 -30
		mu 0 4 13 14 17 16
		f 4 10 32 -13 -32
		mu 0 4 15 16 19 18
		f 4 11 33 -14 -33
		mu 0 4 16 17 20 19
		f 4 12 35 -15 -35
		mu 0 4 18 19 22 21
		f 4 13 36 -16 -36
		mu 0 4 19 20 23 22
		f 4 14 38 -1 -38
		mu 0 4 21 22 25 24
		f 4 15 39 -2 -39
		mu 0 4 22 23 26 25
		f 4 -37 -34 40 -43
		mu 0 4 28 27 29 30
		f 4 -40 42 41 -19
		mu 0 4 2 28 30 5
		f 4 -41 -31 -28 -44
		mu 0 4 30 29 31 32
		f 4 -42 43 -25 -22
		mu 0 4 5 30 32 8
		f 4 34 46 -45 31
		mu 0 4 33 34 36 35
		f 4 37 16 -46 -47
		mu 0 4 34 0 3 36
		f 4 44 47 25 28
		mu 0 4 35 36 38 37
		f 4 45 19 22 -48
		mu 0 4 36 3 6 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "bodyFront" -p "body";
	rename -uid "DD916C00-4C8A-55CB-120E-90A37C712759";
createNode mesh -n "bodyFrontShape" -p "bodyFront";
	rename -uid "54BD8D9B-4427-BC4F-4671-BCB25E284DB1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[0]" -type "float3" -0.10412932 0.41391852 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.33088809 0.46945179 ;
	setAttr ".pt[2]" -type "float3" 0.10412932 0.41391852 0 ;
	setAttr ".pt[3]" -type "float3" -0.13305083 0 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.084841833 0.50256807 ;
	setAttr ".pt[5]" -type "float3" 0.13305083 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.060770355 -0.38518056 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.47002244 0.41884056 ;
	setAttr ".pt[8]" -type "float3" 0.060770355 -0.38518056 0 ;
	setAttr ".pt[9]" -type "float3" -0.19413505 -0.38518056 0 ;
	setAttr ".pt[11]" -type "float3" 0.19413505 -0.38518056 0 ;
	setAttr ".pt[12]" -type "float3" -0.22869012 -0.38518056 -0.12067617 ;
	setAttr ".pt[13]" -type "float3" 0 0.12024964 -0.23375353 ;
	setAttr ".pt[14]" -type "float3" 0.22869012 -0.38518056 -0.12067617 ;
	setAttr ".pt[15]" -type "float3" -0.25986856 0 -0.050956432 ;
	setAttr ".pt[16]" -type "float3" 0 0.30408621 -0.075982504 ;
	setAttr ".pt[17]" -type "float3" 0.25986856 0 -0.050956432 ;
	setAttr ".pt[18]" -type "float3" -0.22869012 0.41118467 0.058141448 ;
	setAttr ".pt[19]" -type "float3" 0 0.64220542 0.045371406 ;
	setAttr ".pt[20]" -type "float3" 0.22869012 0.41118467 0.058141448 ;
	setAttr ".pt[21]" -type "float3" -0.22311881 0.38518056 0 ;
	setAttr ".pt[22]" -type "float3" 0 0.63788271 0 ;
	setAttr ".pt[23]" -type "float3" 0.22311881 0.38518056 0 ;
	setAttr ".pt[24]" -type "float3" 0.27369657 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.27369657 0 0 ;
createNode transform -n "armRight" -p "scorpion";
	rename -uid "388C8A9D-42ED-E14E-F665-63868616B432";
createNode transform -n "innerArmUpperRight" -p "armRight";
	rename -uid "B3691C26-4110-6895-54DD-60AEEFB641CC";
	setAttr ".t" -type "double3" -1.2129643668424834 -0.55713394127787819 0.59770324029067812 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.062738314786864605 0.58096757121545672 0.062738314786864605 ;
createNode mesh -n "innerArmUpperRightShape" -p "innerArmUpperRight";
	rename -uid "FD330694-4A6E-2944-E5E8-E78FC4CEB7C4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "armJointUpperRight" -p "armRight";
	rename -uid "91F148C3-482F-DE0C-4C80-3994561F00A6";
	setAttr ".t" -type "double3" -0.57879321914632209 -0.54899340369286587 0.60691041269727752 ;
	setAttr ".r" -type "double3" 0 0 92.208149576105612 ;
	setAttr ".s" -type "double3" 0.059404954714290005 0.059404954714290005 0.059404954714290005 ;
createNode mesh -n "armJointUpperRightShape" -p "armJointUpperRight";
	rename -uid "3B6A7F71-4CCC-81FD-FA6C-20957DEA4C51";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0 0.16666667 0.16666667
		 0.16666667 0.33333334 0.16666667 0.5 0.16666667 0.66666669 0.16666667 0.83333337
		 0.16666667 1 0.16666667 0 0.33333334 0.16666667 0.33333334 0.33333334 0.33333334
		 0.5 0.33333334 0.66666669 0.33333334 0.83333337 0.33333334 1 0.33333334 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 0 0.25 0 0.41666669 0 0.58333337 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669
		 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  0.25000012 -0.86602539 -0.43301266 -0.24999993 -0.86602539 -0.43301275
		 -0.5 -0.86602539 -7.4505806e-008 -0.25000006 -0.86602539 0.43301269 0.24999999 -0.86602539 0.43301272
		 0.5 -0.86602539 0 0.43301293 -0.49999997 -0.75 -0.4330126 -0.49999997 -0.75000012
		 -0.86602545 -0.49999997 -1.2904785e-007 -0.43301281 -0.49999997 0.75 0.43301269 -0.49999997 0.75000006
		 0.86602545 -0.49999997 0 0.50000024 0 -0.86602533 -0.49999985 0 -0.86602551 -1 0 -1.4901161e-007
		 -0.50000012 0 0.86602539 0.49999997 0 0.86602545 1 0 0 0.43301293 0.49999997 -0.75
		 -0.4330126 0.49999997 -0.75000012 -0.86602545 0.49999997 -1.2904785e-007 -0.43301281 0.49999997 0.75
		 0.43301269 0.49999997 0.75000006 0.86602545 0.49999997 0 0.25000012 0.86602539 -0.43301266
		 -0.24999993 0.86602539 -0.43301275 -0.5 0.86602539 -7.4505806e-008 -0.25000006 0.86602539 0.43301269
		 0.24999999 0.86602539 0.43301272 0.5 0.86602539 0 0 -1 0 0 1 0;
	setAttr -s 66 ".ed[0:65]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 12 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 18 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 24 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0
		 11 17 0 12 18 0 13 19 0 14 20 0 15 21 0 16 22 0 17 23 0 18 24 0 19 25 0 20 26 0 21 27 0
		 22 28 0 23 29 0 30 0 0 30 1 0 30 2 0 30 3 0 30 4 0 30 5 0 24 31 0 25 31 0 26 31 0
		 27 31 0 28 31 0 29 31 0;
	setAttr -s 36 -ch 132 ".fc[0:35]" -type "polyFaces" 
		f 4 0 31 -7 -31
		mu 0 4 0 1 8 7
		f 4 1 32 -8 -32
		mu 0 4 1 2 9 8
		f 4 2 33 -9 -33
		mu 0 4 2 3 10 9
		f 4 3 34 -10 -34
		mu 0 4 3 4 11 10
		f 4 4 35 -11 -35
		mu 0 4 4 5 12 11
		f 4 5 30 -12 -36
		mu 0 4 5 6 13 12
		f 4 6 37 -13 -37
		mu 0 4 7 8 15 14
		f 4 7 38 -14 -38
		mu 0 4 8 9 16 15
		f 4 8 39 -15 -39
		mu 0 4 9 10 17 16
		f 4 9 40 -16 -40
		mu 0 4 10 11 18 17
		f 4 10 41 -17 -41
		mu 0 4 11 12 19 18
		f 4 11 36 -18 -42
		mu 0 4 12 13 20 19
		f 4 12 43 -19 -43
		mu 0 4 14 15 22 21
		f 4 13 44 -20 -44
		mu 0 4 15 16 23 22
		f 4 14 45 -21 -45
		mu 0 4 16 17 24 23
		f 4 15 46 -22 -46
		mu 0 4 17 18 25 24
		f 4 16 47 -23 -47
		mu 0 4 18 19 26 25
		f 4 17 42 -24 -48
		mu 0 4 19 20 27 26
		f 4 18 49 -25 -49
		mu 0 4 21 22 29 28
		f 4 19 50 -26 -50
		mu 0 4 22 23 30 29
		f 4 20 51 -27 -51
		mu 0 4 23 24 31 30
		f 4 21 52 -28 -52
		mu 0 4 24 25 32 31
		f 4 22 53 -29 -53
		mu 0 4 25 26 33 32
		f 4 23 48 -30 -54
		mu 0 4 26 27 34 33
		f 3 -1 -55 55
		mu 0 3 1 0 35
		f 3 -2 -56 56
		mu 0 3 2 1 36
		f 3 -3 -57 57
		mu 0 3 3 2 37
		f 3 -4 -58 58
		mu 0 3 4 3 38
		f 3 -5 -59 59
		mu 0 3 5 4 39
		f 3 -6 -60 54
		mu 0 3 6 5 40
		f 3 24 61 -61
		mu 0 3 28 29 41
		f 3 25 62 -62
		mu 0 3 29 30 42
		f 3 26 63 -63
		mu 0 3 30 31 43
		f 3 27 64 -64
		mu 0 3 31 32 44
		f 3 28 65 -65
		mu 0 3 32 33 45
		f 3 29 60 -66
		mu 0 3 33 34 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "innerArmLowerRight" -p "armRight";
	rename -uid "575195CD-4844-2447-03FD-319334E8F2B1";
	setAttr ".t" -type "double3" -2.5541221083750294 -0.55713394127787819 0.59770324029067812 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.062738314786864605 0.58096757121545672 0.062738314786864605 ;
createNode mesh -n "innerArmLowerRightShape" -p "innerArmLowerRight";
	rename -uid "F5A37B58-461C-92D1-98B5-6B84B1E5F47A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[32:40]" -type "float3"  -0.66179258 0.26782846 0 
		-0.66179258 0.26782846 0 -0.66179258 0.26782846 0 -0.66179258 0.26782846 0 -0.66179258 
		0.26782846 0 -0.66179258 0.26782846 0 -0.66179258 0.26782846 0 -0.66179258 0.26782846 
		0 -0.66179258 0.26782846 0;
createNode mesh -n "polySurfaceShape4" -p "innerArmLowerRight";
	rename -uid "B96A27B2-4C30-A2D7-41E8-6497D197CE04";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.83749998 0.5625 0.32043898 0.53125
		 0.32043898 0.5 0.32043898 0.46875003 0.32043898 0.4375 0.32043898 0.40625 0.32043898
		 0.625 0.32043898 0.375 0.32043898 0.59375 0.32043898 0.5 1.4901161e-008 0.61048543
		 0.04576458 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125
		 0.61048543 0.26673543 0.65625 0.15625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[8:16]" -type "float3"  -0.31965351 -0.81568503 0 
		-0.31965351 -0.81568515 0 -0.31965351 -0.81568521 0 -0.31965351 -0.81568515 0 -0.31965351 
		-0.81568521 0 -0.31965351 -0.81568515 0 -0.31965351 -0.81568503 0 -0.31965351 -0.81568515 
		0 -0.31965351 -0.81568515 0;
	setAttr -s 33 ".vt[0:32]"  0.37149048 -0.94779742 -0.37149048 9.5367432e-007 -0.94779742 -0.52536678
		 -0.37148952 -0.94779742 -0.37149048 -0.52536678 -0.94779742 0 -0.37148952 -0.94779742 0.37149048
		 9.5367432e-007 -0.94779742 0.52536678 0.37149048 -0.94779742 0.37149048 0.52536774 -0.94779742 0
		 0.70710659 1.000000238419 -0.70710659 9.5367432e-007 1.000000238419 -1 -0.70710564 1.000000238419 -0.70710659
		 -0.99999905 1.000000238419 0 -0.70710564 1.000000238419 0.70710659 9.5367432e-007 1.000000238419 1
		 0.70710659 1.000000238419 0.70710659 1.000000476837 1.000000238419 0 9.5367432e-007 1.000000238419 0
		 0.70710659 -0.90666449 0.70710659 9.5367432e-007 -0.90666449 1 -0.70710564 -0.90666449 0.70710659
		 -0.99999905 -0.90666449 0 -0.70710564 -0.90666449 -0.70710659 9.5367432e-007 -0.90666449 -1
		 0.70710659 -0.90666449 -0.70710659 1.000000476837 -0.90666449 0 0.4671669 -1.075793505 -0.37149048
		 0.095676422 -1.075793505 -0.52536678 -0.27581406 -1.075793505 -0.37149048 -0.42969036 -1.075793505 0
		 -0.27581406 -1.075793505 0.37149048 0.095676422 -1.075793505 0.52536678 0.4671669 -1.075793505 0.37149048
		 0.62104416 -1.075793505 0;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 23 0 1 22 0 2 21 0
		 3 20 0 4 19 0 5 18 0 6 17 0 7 24 0 8 16 1 9 16 1 10 16 1 11 16 1 12 16 1 13 16 1
		 14 16 1 15 16 1 17 14 0 18 13 0 17 18 1 19 12 0 18 19 1 20 11 0 19 20 1 21 10 0 20 21 1
		 22 9 0 21 22 1 23 8 0 22 23 1 24 15 0 23 24 1 24 17 1 0 25 0 1 26 0 25 26 0 2 27 0
		 26 27 0 3 28 0 27 28 0 4 29 0 28 29 0 5 30 0 29 30 0 6 31 0 30 31 0 7 32 0 31 32 0
		 32 25 0;
	setAttr -s 32 -ch 120 ".fc[0:31]" -type "polyFaces" 
		f 4 0 17 44 -17
		mu 0 4 8 9 40 42
		f 4 1 18 42 -18
		mu 0 4 9 10 39 40
		f 4 2 19 40 -19
		mu 0 4 10 11 38 39
		f 4 3 20 38 -20
		mu 0 4 11 12 37 38
		f 4 4 21 36 -21
		mu 0 4 12 13 36 37
		f 4 5 22 34 -22
		mu 0 4 13 14 35 36
		f 4 6 23 47 -23
		mu 0 4 14 15 43 35
		f 4 7 16 46 -24
		mu 0 4 15 16 41 43
		f 3 8 25 -25
		mu 0 3 32 31 34
		f 3 9 26 -26
		mu 0 3 31 30 34
		f 3 10 27 -27
		mu 0 3 30 29 34
		f 3 11 28 -28
		mu 0 3 29 28 34
		f 3 12 29 -29
		mu 0 3 28 27 34
		f 3 13 30 -30
		mu 0 3 27 26 34
		f 3 14 31 -31
		mu 0 3 26 33 34
		f 3 15 24 -32
		mu 0 3 33 32 34
		f 4 -35 32 -14 -34
		mu 0 4 36 35 23 22
		f 4 -37 33 -13 -36
		mu 0 4 37 36 22 21
		f 4 -39 35 -12 -38
		mu 0 4 38 37 21 20
		f 4 -41 37 -11 -40
		mu 0 4 39 38 20 19
		f 4 -43 39 -10 -42
		mu 0 4 40 39 19 18
		f 4 -45 41 -9 -44
		mu 0 4 42 40 18 17
		f 4 -47 43 -16 -46
		mu 0 4 43 41 25 24
		f 4 -48 45 -15 -33
		mu 0 4 35 43 24 23
		f 4 -1 48 50 -50
		mu 0 4 1 0 45 44
		f 4 -2 49 52 -52
		mu 0 4 2 1 44 46
		f 4 -3 51 54 -54
		mu 0 4 3 2 46 47
		f 4 -4 53 56 -56
		mu 0 4 4 3 47 48
		f 4 -5 55 58 -58
		mu 0 4 5 4 48 49
		f 4 -6 57 60 -60
		mu 0 4 6 5 49 50
		f 4 -7 59 62 -62
		mu 0 4 7 6 50 51
		f 4 -8 61 63 -49
		mu 0 4 0 7 51 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "armJointRight" -p "armRight";
	rename -uid "CA1BC3D2-4B21-E272-55D0-4C9527E1CD07";
	setAttr ".t" -type "double3" -1.8676035283298367 -0.56122721863612857 0.58104184198842701 ;
	setAttr ".r" -type "double3" 0 0 92.208149576105612 ;
	setAttr ".s" -type "double3" 0.13160786548741174 0.13160786548741174 0.13160786548741174 ;
createNode mesh -n "armJointRightShape" -p "armJointRight";
	rename -uid "0BACD8C4-47E5-AC63-0971-0DAC9C435D30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "lowerArmRight" -p "armRight";
	rename -uid "18F989BF-4BF9-A84B-0937-4EA82F82FBF2";
	setAttr ".t" -type "double3" -2.3233694064314361 -0.56157152037056846 0.61143917725364638 ;
	setAttr ".r" -type "double3" 89.999999999877588 -90.625252811554319 -6.557031531305186e-011 ;
	setAttr ".s" -type "double3" 0.16622548840192997 0.68402268603774252 0.16622548840192997 ;
createNode mesh -n "lowerArmRightShape" -p "lowerArmRight";
	rename -uid "AE7C0875-4DC2-E30A-003C-E1AD3C9C929C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[86]" -type "float3" 0 -2.4424907e-015 -0.30226123 ;
	setAttr ".pt[87]" -type "float3" 0 -2.4424907e-015 -0.30226123 ;
	setAttr ".pt[89]" -type "float3" 0.049037993 -0.012907964 -0.12978706 ;
	setAttr ".pt[91]" -type "float3" 0.17564672 -0.012907962 -0.095420904 ;
	setAttr ".pt[92]" -type "float3" 0 0 -0.30226123 ;
	setAttr ".pt[93]" -type "float3" 0 0 -0.30226123 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape3" -p "lowerArmRight";
	rename -uid "EE72DB49-4BA0-CE77-2BB6-1FB8433D3AE4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 65 ".uvst[0].uvsp[0:64]" -type "float2" 0 1 0.125 1 0.25
		 1 0.375 1 0.5 1 0.625 1 0.75 1 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625
		 0.75 0.75 0.75 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0 0 0.125 0 0.25 0
		 0.375 0 0.5 0 0.625 0 0.75 0 0.375 0.28709358 0.5 0.28709358 0.625 0.28709358 0.75
		 0.28709358 0.75 0.96290642 0.625 0.96290642 0.5 0.96290642 0.375 0.96290642 0.25
		 0.96290642 0.125 0.96290642 0 0.96290642 0 0.11128069 0 0.28709358 0.125 0.28709358
		 0.25 0.28709358 0.375 0.46667027 0.5 0.46667027 0.62499994 0.46667027 0.75 0.46667027
		 0.75 0.78332973 0.625 0.78332973 0.5 0.78332973 0.375 0.78332973 0.25 0.78332973
		 0.125 0.78332973 0 0.78332973 0 0.65001082 0 0.46667027 0.125 0.46667027 0.25 0.46667027;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[3]" -type "float3" -0.043286875 -6.6613381e-016 -0.092774689 ;
	setAttr ".pt[7]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[8]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[9]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[10]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[14]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[15]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[16]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[17]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[24]" -type "float3" -0.36588892 6.6613381e-016 -0.49084634 ;
	setAttr ".pt[28]" -type "float3" -0.18409079 -3.3306691e-016 -0.081211388 ;
	setAttr -s 56 ".vt[0:55]"  0.59999996 -0.5 -1.110223e-016 0.42426404 -0.5 -0.42426404
		 0 -0.5 -0.59999996 -0.42426404 -0.5 -0.42426404 -0.59999996 -0.5 -1.110223e-016 -0.42426404 -0.5 0.42426404
		 0 -0.5 0.59999996 0.59999996 0.5 1.110223e-016 0.42426404 0.5 -0.42426404 0 0.5 -0.59999996
		 -0.42426404 0.5 -0.42426404 -0.59999996 0.5 1.110223e-016 -0.42426404 0.5 0.42426404
		 0 0.5 0.59999996 0.89999998 0.5 1.110223e-016 0.63639605 0.5 -0.63639605 0 0.5 -0.89999992
		 -0.63639605 0.5 -0.63639605 -0.89999992 0.5 1.110223e-016 -0.63639605 0.5 0.63639605
		 0 0.5 0.89999992 0.89999998 -0.5 -1.110223e-016 0.63639605 -0.5 -0.63639605 0 -0.5 -0.89999992
		 -0.63639605 -0.5 -0.63639605 -0.89999992 -0.5 -1.110223e-016 -0.63639605 -0.5 0.63639605
		 0 -0.5 0.89999992 -0.63639605 -0.35162574 -0.63639605 -0.89999992 -0.35162574 -7.8076599e-017
		 -0.63639605 -0.35162574 0.63639605 0 -0.35162574 0.89999992 0 -0.35162574 0.59999996
		 -0.42426404 -0.35162574 0.42426404 -0.59999996 -0.35162574 -7.8076599e-017 -0.42426404 -0.35162574 -0.42426404
		 0 -0.35162574 -0.59999996 0.42426404 -0.35162574 -0.42426404 0.59999996 -0.35162574 -7.8076599e-017
		 0.89999998 -0.35162574 -7.8076599e-017 0.63639605 -0.35162574 -0.63639605 0 -0.35162574 -0.89999992
		 -0.63639605 0.3666811 -0.63639605 -0.89999986 0.3666811 8.141956e-017 -0.63639605 0.3666811 0.63639605
		 0 0.3666811 0.89999986 0 0.3666811 0.59999996 -0.42426404 0.3666811 0.42426404 -0.59999996 0.3666811 8.141956e-017
		 -0.42426404 0.3666811 -0.42426404 0 0.3666811 -0.59999996 0.42426404 0.3666811 -0.42426404
		 0.59999996 0.3666811 8.141956e-017 0.89999998 0.3666811 8.141956e-017 0.63639605 0.3666811 -0.63639605
		 0 0.3666811 -0.89999986;
	setAttr -s 108 ".ed[0:107]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 7 8 0
		 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 0 38 0 1 37 0 2 36 0 3 35 0 4 34 0
		 5 33 0 6 32 0 7 14 0 8 15 1 9 16 1 10 17 1 11 18 1 12 19 1 13 20 0 14 53 0 15 54 0
		 16 55 0 17 42 0 18 43 0 19 44 0 20 45 0 21 0 0 22 1 1 23 2 1 24 3 1 25 4 1 26 5 1
		 27 6 0 28 24 0 29 25 0 28 29 1 30 26 0 29 30 1 31 27 0 30 31 1 32 46 0 31 32 1 33 47 0
		 32 33 1 34 48 0 33 34 1 35 49 0 34 35 1 36 50 0 35 36 1 37 51 0 36 37 1 38 52 0 37 38 1
		 39 21 0 38 39 1 40 22 0 39 40 1 41 23 0 40 41 1 41 28 1 42 28 0 43 29 0 42 43 1 44 30 0
		 43 44 1 45 31 0 44 45 1 46 13 0 45 46 1 47 12 0 46 47 1 48 11 0 47 48 1 49 10 0 48 49 1
		 50 9 0 49 50 1 51 8 0 50 51 1 52 7 0 51 52 1 53 39 0 52 53 1 54 40 0 53 54 1 55 41 0
		 54 55 1 55 42 1;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 100 99 6 -98
		mu 0 4 59 60 7 8
		f 4 98 97 7 -96
		mu 0 4 58 59 8 9
		f 4 96 95 8 -94
		mu 0 4 57 58 9 10
		f 4 94 93 9 -92
		mu 0 4 56 57 10 11
		f 4 92 91 10 -90
		mu 0 4 55 56 11 12
		f 4 90 89 11 -88
		mu 0 4 54 55 12 13
		f 4 -7 31 12 -33
		mu 0 4 8 7 14 15
		f 4 -8 32 13 -34
		mu 0 4 9 8 15 16
		f 4 -9 33 14 -35
		mu 0 4 10 9 16 17
		f 4 -10 34 15 -36
		mu 0 4 11 10 17 18
		f 4 -11 35 16 -37
		mu 0 4 12 11 18 19
		f 4 -12 36 17 -38
		mu 0 4 13 12 19 20
		f 4 -13 38 104 -40
		mu 0 4 15 14 62 63
		f 4 -14 39 106 -41
		mu 0 4 16 15 63 64
		f 4 -15 40 107 -42
		mu 0 4 17 16 64 50
		f 4 -16 41 82 -43
		mu 0 4 18 17 50 51
		f 4 -17 42 84 -44
		mu 0 4 19 18 51 52
		f 4 -18 43 86 -45
		mu 0 4 20 19 52 53
		f 4 -19 45 0 -47
		mu 0 4 22 21 28 29
		f 4 -20 46 1 -48
		mu 0 4 23 22 29 30
		f 4 -21 47 2 -49
		mu 0 4 24 23 30 31
		f 4 -22 48 3 -50
		mu 0 4 25 24 31 32
		f 4 -23 49 4 -51
		mu 0 4 26 25 32 33
		f 4 -24 50 5 -52
		mu 0 4 27 26 33 34
		f 4 -100 102 -39 -32
		mu 0 4 7 61 62 14
		f 4 37 44 88 87
		mu 0 4 13 20 53 54
		f 4 -55 52 21 -54
		mu 0 4 36 35 24 25
		f 4 -57 53 22 -56
		mu 0 4 37 36 25 26
		f 4 -59 55 23 -58
		mu 0 4 38 37 26 27
		f 4 -61 57 51 30
		mu 0 4 39 38 27 6
		f 4 -6 29 -63 -31
		mu 0 4 6 5 40 39
		f 4 -5 28 -65 -30
		mu 0 4 5 4 41 40
		f 4 -4 27 -67 -29
		mu 0 4 4 3 42 41
		f 4 -3 26 -69 -28
		mu 0 4 3 2 43 42
		f 4 -2 25 -71 -27
		mu 0 4 2 1 44 43
		f 4 -1 24 -73 -26
		mu 0 4 1 0 45 44
		f 4 -75 -25 -46 -74
		mu 0 4 47 46 28 21
		f 4 -77 73 18 -76
		mu 0 4 48 47 21 22
		f 4 -79 75 19 -78
		mu 0 4 49 48 22 23
		f 4 -80 77 20 -53
		mu 0 4 35 49 23 24
		f 4 -83 80 54 -82
		mu 0 4 51 50 35 36
		f 4 -85 81 56 -84
		mu 0 4 52 51 36 37
		f 4 -87 83 58 -86
		mu 0 4 53 52 37 38
		f 4 -89 85 60 59
		mu 0 4 54 53 38 39
		f 4 62 61 -91 -60
		mu 0 4 39 40 55 54
		f 4 64 63 -93 -62
		mu 0 4 40 41 56 55
		f 4 66 65 -95 -64
		mu 0 4 41 42 57 56
		f 4 68 67 -97 -66
		mu 0 4 42 43 58 57
		f 4 70 69 -99 -68
		mu 0 4 43 44 59 58
		f 4 72 71 -101 -70
		mu 0 4 44 45 60 59
		f 4 -103 -72 74 -102
		mu 0 4 62 61 46 47
		f 4 -105 101 76 -104
		mu 0 4 63 62 47 48
		f 4 -107 103 78 -106
		mu 0 4 64 63 48 49
		f 4 -108 105 79 -81
		mu 0 4 50 64 49 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "upperArmRight" -p "armRight";
	rename -uid "A6F711E0-4D1F-B122-DE1F-A9BB6036856C";
	setAttr ".t" -type "double3" -1.2494467395026534 -0.56157152037056846 0.58890934308601306 ;
	setAttr ".r" -type "double3" 89.99999999997965 -90.680422318667866 9.1091086077115114e-012 ;
	setAttr ".s" -type "double3" 0.16622548840192997 1.0449108001836938 0.16622548840192997 ;
createNode mesh -n "upperArmRightShape" -p "upperArmRight";
	rename -uid "BEF9FCA0-4619-E33D-EC70-6EB8D6966E70";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[3]" -type "float3" -0.043286875 -6.6613381e-016 -0.092774689 ;
	setAttr ".pt[24]" -type "float3" -0.36588892 6.6613381e-016 -0.49084634 ;
	setAttr ".pt[28]" -type "float3" -0.18409079 -3.3306691e-016 -0.081211388 ;
createNode transform -n "clawRight" -p "armRight";
	rename -uid "7EC8F704-4168-FD24-E19F-60AF36760215";
	setAttr ".t" -type "double3" -1.3277445692988408 -0.018687062151020895 -1.6182445289250502 ;
	setAttr ".r" -type "double3" 0 -51.871113790500964 0 ;
	setAttr ".rp" -type "double3" -1.9616619280505259 -0.62067434053349868 2.6546503577709268 ;
	setAttr ".sp" -type "double3" -1.9616619280505259 -0.62067434053349868 2.6546503577709268 ;
createNode transform -n "clawBigRight" -p "|scorpion|armRight|clawRight";
	rename -uid "23C3C233-4DC8-5043-9400-22A3283F24B0";
	setAttr ".t" -type "double3" -2.341755373581166 -0.60629680531609675 2.5626140787658214 ;
	setAttr ".r" -type "double3" 0 1.7789551845545011 0 ;
	setAttr ".s" -type "double3" 0.16947687260881275 0.16947687260881275 0.16947687260881275 ;
createNode mesh -n "clawBigRightShape" -p "clawBigRight";
	rename -uid "5A56AE86-458F-B2EE-36BB-5BAEFA58F949";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  0 -0.10467149 0 0 0.086633168 
		0 0 0.23509452 0 0 0.27248594 0 0 0.10467149 0 0 -0.086633168 0 0 -0.23509452 0 0 
		-0.27248594 0 0 0.10467149 0 0 -0.086633168 0 0 -0.23509452 0 0 -0.27248594 0 0 -0.10467149 
		0 0 0.086633168 0 0 0.23509452 0 0 0.27248594 0 0 0.32333356 0 0 0.32333356 0 0 -0.32333356 
		0 0 -0.32333356 0 0 0 0 0 -0.1739797 0 0 -0.1739797 0 0 0.1739797 0 0 0.1739797 0;
	setAttr ".dr" 1;
createNode transform -n "clawSmallRight" -p "|scorpion|armRight|clawRight";
	rename -uid "5B26DB92-4EB7-B6F2-3AC8-E9BBE71D0D83";
	setAttr ".t" -type "double3" -1.9181403436323268 -0.76869103363759483 2.5077297776216003 ;
	setAttr ".r" -type "double3" 25.397482502753441 -80.448861191846703 156.49364633583829 ;
	setAttr ".s" -type "double3" 0.10302495802358763 0.10302495802358763 0.10302495802358763 ;
createNode mesh -n "clawSmallRightShape" -p "clawSmallRight";
	rename -uid "C28B87A0-4D9C-9863-14EC-D094DFD5131F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[8]" -type "float3" 0.062672712 -0.028559675 -0.48898962 ;
	setAttr ".pt[12]" -type "float3" 0.062672712 -0.028559675 -0.48898962 ;
createNode mesh -n "polySurfaceShape2" -p "clawSmallRight";
	rename -uid "9FB82360-48E6-1E83-D182-EEABE7925D4E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0.375 0 0.45833334
		 0 0.54166669 0 0.625 0 0.375 0.25 0.45833334 0.25 0.54166669 0.25 0.625 0.25 0.375
		 0.5 0.45833334 0.5 0.54166669 0.5 0.625 0.5 0.375 0.75 0.45833334 0.75 0.54166669
		 0.75 0.625 0.75 0.375 1 0.45833334 1 0.54166669 1 0.625 1 0.875 0 0.875 0.25 0.625
		 0 0.875 0 0.875 0.25 0.625 0.25 0.77587211 0.12500012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  -1.61216736 -0.60467148 -1.21731567 -1.44748724 -0.41336682 1.52439022
		 -0.62676656 -0.26490548 3.35355401 0.72998405 -0.22751406 4.69600821 -1.61216736 0.60467148 -1.21731567
		 -1.44748724 0.41336682 1.52439022 -0.62676656 0.26490548 3.35355401 0.72998405 0.22751406 4.69600821
		 2.52206039 0.60467148 -0.11352158 2.11780834 0.41336682 1.26151776 2.076127052 0.26490548 2.49849272
		 2.27841473 0.22751406 3.51504278 2.52206039 -0.60467148 -0.11352158 2.11780834 -0.41336682 1.26151776
		 2.076127052 -0.26490548 2.49849272 2.27841473 -0.22751406 3.51504278 3.33685398 -0.17666644 4.80789089
		 2.67306995 -0.17666644 5.54067898 3.33685398 0.17666644 4.80789089 2.67306995 0.17666644 5.54067898
		 4.78852367 0 5.97195387;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 4 5 0 5 6 0 6 7 0 8 9 0
		 9 10 0 10 11 0 12 13 0 13 14 0 14 15 0 0 4 0 1 5 1 2 6 1 3 7 1 4 8 0 5 9 1 6 10 1
		 7 11 1 8 12 0 9 13 1 10 14 1 11 15 0 12 0 0 13 1 1 14 2 1 15 3 1 15 16 0 3 17 0 16 17 1
		 11 18 0 18 16 1 7 19 0 19 18 1 17 19 1 16 20 0 17 20 0 18 20 0 19 20 0;
	setAttr -s 20 -ch 76 ".fc[0:19]" -type "polyFaces" 
		f 4 0 13 -4 -13
		mu 0 4 0 1 5 4
		f 4 1 14 -5 -14
		mu 0 4 1 2 6 5
		f 4 2 15 -6 -15
		mu 0 4 2 3 7 6
		f 4 3 17 -7 -17
		mu 0 4 4 5 9 8
		f 4 4 18 -8 -18
		mu 0 4 5 6 10 9
		f 4 5 19 -9 -19
		mu 0 4 6 7 11 10
		f 4 6 21 -10 -21
		mu 0 4 8 9 13 12
		f 4 7 22 -11 -22
		mu 0 4 9 10 14 13
		f 4 8 23 -12 -23
		mu 0 4 10 11 15 14
		f 4 9 25 -1 -25
		mu 0 4 12 13 17 16
		f 4 10 26 -2 -26
		mu 0 4 13 14 18 17
		f 4 11 27 -3 -27
		mu 0 4 14 15 19 18
		f 4 -28 28 30 -30
		mu 0 4 3 20 23 22
		f 4 -24 31 32 -29
		mu 0 4 20 21 24 23
		f 4 -20 33 34 -32
		mu 0 4 21 7 25 24
		f 4 -16 29 35 -34
		mu 0 4 7 3 22 25
		f 3 -31 36 -38
		mu 0 3 22 23 26
		f 3 -33 38 -37
		mu 0 3 23 24 26
		f 3 -35 39 -39
		mu 0 3 24 25 26
		f 3 -36 37 -40
		mu 0 3 25 22 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "armLeft" -p "scorpion";
	rename -uid "C72D6FA6-4860-98DD-7FCA-659A6D47A069";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "innerArmUpperLeft" -p "armLeft";
	rename -uid "C852A3CE-46FE-A5A1-904A-8BA985859248";
	setAttr ".t" -type "double3" -1.2129643668424834 -0.55713394127787819 0.59770324029067812 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.062738314786864605 0.58096757121545672 0.062738314786864605 ;
createNode mesh -n "innerArmUpperLeftShape" -p "innerArmUpperLeft";
	rename -uid "8A6B2C26-4821-4A73-4457-6393FCA05A4C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.83749998 0.5625 0.32043898 0.53125
		 0.32043898 0.5 0.32043898 0.46875003 0.32043898 0.4375 0.32043898 0.40625 0.32043898
		 0.625 0.32043898 0.375 0.32043898 0.59375 0.32043898 0.5 1.4901161e-008 0.61048543
		 0.04576458 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125
		 0.61048543 0.26673543 0.65625 0.15625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 33 ".vt[0:32]"  0.37149048 -0.94779742 -0.37149048 9.5367432e-007 -0.94779742 -0.52536678
		 -0.37148952 -0.94779742 -0.37149048 -0.52536678 -0.94779742 0 -0.37148952 -0.94779742 0.37149048
		 9.5367432e-007 -0.94779742 0.52536678 0.37149048 -0.94779742 0.37149048 0.52536774 -0.94779742 0
		 0.70710659 1.000000238419 -0.70710659 9.5367432e-007 1.000000238419 -1 -0.70710564 1.000000238419 -0.70710659
		 -0.99999905 1.000000238419 0 -0.70710564 1.000000238419 0.70710659 9.5367432e-007 1.000000238419 1
		 0.70710659 1.000000238419 0.70710659 1.000000476837 1.000000238419 0 9.5367432e-007 1.000000238419 0
		 0.70710659 -0.90666449 0.70710659 9.5367432e-007 -0.90666449 1 -0.70710564 -0.90666449 0.70710659
		 -0.99999905 -0.90666449 0 -0.70710564 -0.90666449 -0.70710659 9.5367432e-007 -0.90666449 -1
		 0.70710659 -0.90666449 -0.70710659 1.000000476837 -0.90666449 0 0.4671669 -1.075793505 -0.37149048
		 0.095676422 -1.075793505 -0.52536678 -0.27581406 -1.075793505 -0.37149048 -0.42969036 -1.075793505 0
		 -0.27581406 -1.075793505 0.37149048 0.095676422 -1.075793505 0.52536678 0.4671669 -1.075793505 0.37149048
		 0.62104416 -1.075793505 0;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 23 0 1 22 0 2 21 0
		 3 20 0 4 19 0 5 18 0 6 17 0 7 24 0 8 16 1 9 16 1 10 16 1 11 16 1 12 16 1 13 16 1
		 14 16 1 15 16 1 17 14 0 18 13 0 17 18 1 19 12 0 18 19 1 20 11 0 19 20 1 21 10 0 20 21 1
		 22 9 0 21 22 1 23 8 0 22 23 1 24 15 0 23 24 1 24 17 1 0 25 0 1 26 0 25 26 0 2 27 0
		 26 27 0 3 28 0 27 28 0 4 29 0 28 29 0 5 30 0 29 30 0 6 31 0 30 31 0 7 32 0 31 32 0
		 32 25 0;
	setAttr -s 32 -ch 120 ".fc[0:31]" -type "polyFaces" 
		f 4 0 17 44 -17
		mu 0 4 8 9 40 42
		f 4 1 18 42 -18
		mu 0 4 9 10 39 40
		f 4 2 19 40 -19
		mu 0 4 10 11 38 39
		f 4 3 20 38 -20
		mu 0 4 11 12 37 38
		f 4 4 21 36 -21
		mu 0 4 12 13 36 37
		f 4 5 22 34 -22
		mu 0 4 13 14 35 36
		f 4 6 23 47 -23
		mu 0 4 14 15 43 35
		f 4 7 16 46 -24
		mu 0 4 15 16 41 43
		f 3 8 25 -25
		mu 0 3 32 31 34
		f 3 9 26 -26
		mu 0 3 31 30 34
		f 3 10 27 -27
		mu 0 3 30 29 34
		f 3 11 28 -28
		mu 0 3 29 28 34
		f 3 12 29 -29
		mu 0 3 28 27 34
		f 3 13 30 -30
		mu 0 3 27 26 34
		f 3 14 31 -31
		mu 0 3 26 33 34
		f 3 15 24 -32
		mu 0 3 33 32 34
		f 4 -35 32 -14 -34
		mu 0 4 36 35 23 22
		f 4 -37 33 -13 -36
		mu 0 4 37 36 22 21
		f 4 -39 35 -12 -38
		mu 0 4 38 37 21 20
		f 4 -41 37 -11 -40
		mu 0 4 39 38 20 19
		f 4 -43 39 -10 -42
		mu 0 4 40 39 19 18
		f 4 -45 41 -9 -44
		mu 0 4 42 40 18 17
		f 4 -47 43 -16 -46
		mu 0 4 43 41 25 24
		f 4 -48 45 -15 -33
		mu 0 4 35 43 24 23
		f 4 -1 48 50 -50
		mu 0 4 1 0 45 44
		f 4 -2 49 52 -52
		mu 0 4 2 1 44 46
		f 4 -3 51 54 -54
		mu 0 4 3 2 46 47
		f 4 -4 53 56 -56
		mu 0 4 4 3 47 48
		f 4 -5 55 58 -58
		mu 0 4 5 4 48 49
		f 4 -6 57 60 -60
		mu 0 4 6 5 49 50
		f 4 -7 59 62 -62
		mu 0 4 7 6 50 51
		f 4 -8 61 63 -49
		mu 0 4 0 7 51 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "armJointUpperLeft" -p "armLeft";
	rename -uid "4AFDFD5D-460F-77EB-9BC4-56B13970AB0C";
	setAttr ".t" -type "double3" -0.57879321914632209 -0.54899340369286587 0.60691041269727752 ;
	setAttr ".r" -type "double3" 0 0 92.208149576105612 ;
	setAttr ".s" -type "double3" 0.059404954714290005 0.059404954714290005 0.059404954714290005 ;
createNode mesh -n "armJointUpperLeftShape" -p "armJointUpperLeft";
	rename -uid "8C3A19AA-443F-13ED-4A54-078ED860D423";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0 0.16666667 0.16666667
		 0.16666667 0.33333334 0.16666667 0.5 0.16666667 0.66666669 0.16666667 0.83333337
		 0.16666667 1 0.16666667 0 0.33333334 0.16666667 0.33333334 0.33333334 0.33333334
		 0.5 0.33333334 0.66666669 0.33333334 0.83333337 0.33333334 1 0.33333334 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 0 0.25 0 0.41666669 0 0.58333337 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669
		 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  0.25000012 -0.86602539 -0.43301266 -0.24999993 -0.86602539 -0.43301275
		 -0.5 -0.86602539 -7.4505806e-008 -0.25000006 -0.86602539 0.43301269 0.24999999 -0.86602539 0.43301272
		 0.5 -0.86602539 0 0.43301293 -0.49999997 -0.75 -0.4330126 -0.49999997 -0.75000012
		 -0.86602545 -0.49999997 -1.2904785e-007 -0.43301281 -0.49999997 0.75 0.43301269 -0.49999997 0.75000006
		 0.86602545 -0.49999997 0 0.50000024 0 -0.86602533 -0.49999985 0 -0.86602551 -1 0 -1.4901161e-007
		 -0.50000012 0 0.86602539 0.49999997 0 0.86602545 1 0 0 0.43301293 0.49999997 -0.75
		 -0.4330126 0.49999997 -0.75000012 -0.86602545 0.49999997 -1.2904785e-007 -0.43301281 0.49999997 0.75
		 0.43301269 0.49999997 0.75000006 0.86602545 0.49999997 0 0.25000012 0.86602539 -0.43301266
		 -0.24999993 0.86602539 -0.43301275 -0.5 0.86602539 -7.4505806e-008 -0.25000006 0.86602539 0.43301269
		 0.24999999 0.86602539 0.43301272 0.5 0.86602539 0 0 -1 0 0 1 0;
	setAttr -s 66 ".ed[0:65]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 12 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 18 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 24 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0
		 11 17 0 12 18 0 13 19 0 14 20 0 15 21 0 16 22 0 17 23 0 18 24 0 19 25 0 20 26 0 21 27 0
		 22 28 0 23 29 0 30 0 0 30 1 0 30 2 0 30 3 0 30 4 0 30 5 0 24 31 0 25 31 0 26 31 0
		 27 31 0 28 31 0 29 31 0;
	setAttr -s 36 -ch 132 ".fc[0:35]" -type "polyFaces" 
		f 4 0 31 -7 -31
		mu 0 4 0 1 8 7
		f 4 1 32 -8 -32
		mu 0 4 1 2 9 8
		f 4 2 33 -9 -33
		mu 0 4 2 3 10 9
		f 4 3 34 -10 -34
		mu 0 4 3 4 11 10
		f 4 4 35 -11 -35
		mu 0 4 4 5 12 11
		f 4 5 30 -12 -36
		mu 0 4 5 6 13 12
		f 4 6 37 -13 -37
		mu 0 4 7 8 15 14
		f 4 7 38 -14 -38
		mu 0 4 8 9 16 15
		f 4 8 39 -15 -39
		mu 0 4 9 10 17 16
		f 4 9 40 -16 -40
		mu 0 4 10 11 18 17
		f 4 10 41 -17 -41
		mu 0 4 11 12 19 18
		f 4 11 36 -18 -42
		mu 0 4 12 13 20 19
		f 4 12 43 -19 -43
		mu 0 4 14 15 22 21
		f 4 13 44 -20 -44
		mu 0 4 15 16 23 22
		f 4 14 45 -21 -45
		mu 0 4 16 17 24 23
		f 4 15 46 -22 -46
		mu 0 4 17 18 25 24
		f 4 16 47 -23 -47
		mu 0 4 18 19 26 25
		f 4 17 42 -24 -48
		mu 0 4 19 20 27 26
		f 4 18 49 -25 -49
		mu 0 4 21 22 29 28
		f 4 19 50 -26 -50
		mu 0 4 22 23 30 29
		f 4 20 51 -27 -51
		mu 0 4 23 24 31 30
		f 4 21 52 -28 -52
		mu 0 4 24 25 32 31
		f 4 22 53 -29 -53
		mu 0 4 25 26 33 32
		f 4 23 48 -30 -54
		mu 0 4 26 27 34 33
		f 3 -1 -55 55
		mu 0 3 1 0 35
		f 3 -2 -56 56
		mu 0 3 2 1 36
		f 3 -3 -57 57
		mu 0 3 3 2 37
		f 3 -4 -58 58
		mu 0 3 4 3 38
		f 3 -5 -59 59
		mu 0 3 5 4 39
		f 3 -6 -60 54
		mu 0 3 6 5 40
		f 3 24 61 -61
		mu 0 3 28 29 41
		f 3 25 62 -62
		mu 0 3 29 30 42
		f 3 26 63 -63
		mu 0 3 30 31 43
		f 3 27 64 -64
		mu 0 3 31 32 44
		f 3 28 65 -65
		mu 0 3 32 33 45
		f 3 29 60 -66
		mu 0 3 33 34 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "innerArmLowerLeft" -p "armLeft";
	rename -uid "CBED61DE-4E17-6FC6-7772-F69D5A8C4908";
	setAttr ".t" -type "double3" -2.5541221083750294 -0.55713394127787819 0.59770324029067812 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.062738314786864605 0.58096757121545672 0.062738314786864605 ;
createNode mesh -n "innerArmLowerLeftShape" -p "innerArmLowerLeft";
	rename -uid "5BA0C5F4-4F87-ABA5-0F76-C4BAD6357F42";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.83749998 0.5625 0.32043898 0.53125
		 0.32043898 0.5 0.32043898 0.46875003 0.32043898 0.4375 0.32043898 0.40625 0.32043898
		 0.625 0.32043898 0.375 0.32043898 0.59375 0.32043898 0.5 1.4901161e-008 0.61048543
		 0.04576458 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125
		 0.61048543 0.26673543 0.65625 0.15625 0.61048543 0.95423543 0.5 1 0.38951457 0.95423543
		 0.34375 0.84375 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[32:40]" -type "float3"  -0.66179258 0.26782846 0 
		-0.66179258 0.26782846 0 -0.66179258 0.26782846 0 -0.66179258 0.26782846 0 -0.66179258 
		0.26782846 0 -0.66179258 0.26782846 0 -0.66179258 0.26782846 0 -0.66179258 0.26782846 
		0 -0.66179258 0.26782846 0;
	setAttr -s 41 ".vt[0:40]"  0.37149048 -0.94779682 -0.37149048 1.9073486e-006 -0.94779682 -0.52536678
		 -0.37148857 -0.94779682 -0.37149048 -0.52536678 -0.94779682 0 -0.37148857 -0.94779682 0.37149048
		 1.9073486e-006 -0.94779682 0.52536678 0.37149048 -0.94779682 0.37149048 0.52536869 -0.94779682 0
		 0.38745308 0.18431568 -0.70710659 -0.3196516 0.18431568 -1 -1.026758194 0.1843152 -0.70710659
		 -1.3196516 0.18431568 0 -1.026758194 0.1843152 0.70710659 -0.3196516 0.18431568 1
		 0.38745308 0.18431568 0.70710659 0.68034744 0.18431568 0 0.70710659 -0.90666413 0.70710659
		 1.9073486e-006 -0.90666413 1 -0.70710468 -0.90666413 0.70710659 -0.99999809 -0.90666413 0
		 -0.70710468 -0.90666413 -0.70710659 1.9073486e-006 -0.90666413 -1 0.70710659 -0.90666413 -0.70710659
		 1.000001430511 -0.90666413 0 0.46716785 -1.075793266 -0.37149048 0.095677376 -1.075793266 -0.52536678
		 -0.27581406 -1.075793266 -0.37149048 -0.42968941 -1.075793266 0 -0.27581406 -1.075793266 0.37149048
		 0.095677376 -1.075793266 0.52536678 0.46716785 -1.075793266 0.37149048 0.62104416 -1.075793266 0
		 0.38745308 0.56782484 -0.70710659 -0.3196516 0.56782484 -1 -0.3196516 0.56782484 0
		 -1.026758194 0.56782436 -0.70711613 -1.3196516 0.56782484 0 -1.026758194 0.56782436 0.70711613
		 -0.3196516 0.56782484 1 0.38745308 0.56782484 0.70710659 0.68034744 0.56782484 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 0 22 0 1 21 0 2 20 0
		 3 19 0 4 18 0 5 17 0 6 16 0 7 23 0 16 14 0 17 13 0 16 17 1 18 12 0 17 18 1 19 11 0
		 18 19 1 20 10 0 19 20 1 21 9 0 20 21 1 22 8 0 21 22 1 23 15 0 22 23 1 23 16 1 0 24 0
		 1 25 0 24 25 0 2 26 0 25 26 0 3 27 0 26 27 0 4 28 0 27 28 0 5 29 0 28 29 0 6 30 0
		 29 30 0 7 31 0 30 31 0 31 24 0 8 32 0 9 33 0 32 33 0 33 34 1 32 34 1 10 35 0 33 35 0
		 35 34 1 11 36 0 35 36 0 36 34 1 12 37 0 36 37 0 37 34 1 13 38 0 37 38 0 38 34 1 14 39 0
		 38 39 0 39 34 1 15 40 0 39 40 0 40 34 1 40 32 0;
	setAttr -s 40 -ch 152 ".fc[0:39]" -type "polyFaces" 
		f 4 0 17 36 -17
		mu 0 4 8 9 40 42
		f 4 1 18 34 -18
		mu 0 4 9 10 39 40
		f 4 2 19 32 -19
		mu 0 4 10 11 38 39
		f 4 3 20 30 -20
		mu 0 4 11 12 37 38
		f 4 4 21 28 -21
		mu 0 4 12 13 36 37
		f 4 5 22 26 -22
		mu 0 4 13 14 35 36
		f 4 6 23 39 -23
		mu 0 4 14 15 43 35
		f 4 7 16 38 -24
		mu 0 4 15 16 41 43
		f 3 58 59 -61
		mu 0 3 52 53 34
		f 3 62 63 -60
		mu 0 3 53 54 34
		f 3 65 66 -64
		mu 0 3 54 55 34
		f 3 68 69 -67
		mu 0 3 55 56 34
		f 3 71 72 -70
		mu 0 3 56 57 34
		f 3 74 75 -73
		mu 0 3 57 58 34
		f 3 77 78 -76
		mu 0 3 58 59 34
		f 3 79 60 -79
		mu 0 3 59 52 34
		f 4 -27 24 -14 -26
		mu 0 4 36 35 23 22
		f 4 -29 25 -13 -28
		mu 0 4 37 36 22 21
		f 4 -31 27 -12 -30
		mu 0 4 38 37 21 20
		f 4 -33 29 -11 -32
		mu 0 4 39 38 20 19
		f 4 -35 31 -10 -34
		mu 0 4 40 39 19 18
		f 4 -37 33 -9 -36
		mu 0 4 42 40 18 17
		f 4 -39 35 -16 -38
		mu 0 4 43 41 25 24
		f 4 -40 37 -15 -25
		mu 0 4 35 43 24 23
		f 4 -1 40 42 -42
		mu 0 4 1 0 45 44
		f 4 -2 41 44 -44
		mu 0 4 2 1 44 46
		f 4 -3 43 46 -46
		mu 0 4 3 2 46 47
		f 4 -4 45 48 -48
		mu 0 4 4 3 47 48
		f 4 -5 47 50 -50
		mu 0 4 5 4 48 49
		f 4 -6 49 52 -52
		mu 0 4 6 5 49 50
		f 4 -7 51 54 -54
		mu 0 4 7 6 50 51
		f 4 -8 53 55 -41
		mu 0 4 0 7 51 45
		f 4 8 57 -59 -57
		mu 0 4 32 31 53 52
		f 4 9 61 -63 -58
		mu 0 4 31 30 54 53
		f 4 10 64 -66 -62
		mu 0 4 30 29 55 54
		f 4 11 67 -69 -65
		mu 0 4 29 28 56 55
		f 4 12 70 -72 -68
		mu 0 4 28 27 57 56
		f 4 13 73 -75 -71
		mu 0 4 27 26 58 57
		f 4 14 76 -78 -74
		mu 0 4 26 33 59 58
		f 4 15 56 -80 -77
		mu 0 4 33 32 52 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "innerArmLowerLeft";
	rename -uid "D48DE758-46C4-506A-1E78-C084B4AED309";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.83749998 0.5625 0.32043898 0.53125
		 0.32043898 0.5 0.32043898 0.46875003 0.32043898 0.4375 0.32043898 0.40625 0.32043898
		 0.625 0.32043898 0.375 0.32043898 0.59375 0.32043898 0.5 1.4901161e-008 0.61048543
		 0.04576458 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125
		 0.61048543 0.26673543 0.65625 0.15625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[8:16]" -type "float3"  -0.31965351 -0.81568503 0 
		-0.31965351 -0.81568515 0 -0.31965351 -0.81568521 0 -0.31965351 -0.81568515 0 -0.31965351 
		-0.81568521 0 -0.31965351 -0.81568515 0 -0.31965351 -0.81568503 0 -0.31965351 -0.81568515 
		0 -0.31965351 -0.81568515 0;
	setAttr -s 33 ".vt[0:32]"  0.37149048 -0.94779742 -0.37149048 9.5367432e-007 -0.94779742 -0.52536678
		 -0.37148952 -0.94779742 -0.37149048 -0.52536678 -0.94779742 0 -0.37148952 -0.94779742 0.37149048
		 9.5367432e-007 -0.94779742 0.52536678 0.37149048 -0.94779742 0.37149048 0.52536774 -0.94779742 0
		 0.70710659 1.000000238419 -0.70710659 9.5367432e-007 1.000000238419 -1 -0.70710564 1.000000238419 -0.70710659
		 -0.99999905 1.000000238419 0 -0.70710564 1.000000238419 0.70710659 9.5367432e-007 1.000000238419 1
		 0.70710659 1.000000238419 0.70710659 1.000000476837 1.000000238419 0 9.5367432e-007 1.000000238419 0
		 0.70710659 -0.90666449 0.70710659 9.5367432e-007 -0.90666449 1 -0.70710564 -0.90666449 0.70710659
		 -0.99999905 -0.90666449 0 -0.70710564 -0.90666449 -0.70710659 9.5367432e-007 -0.90666449 -1
		 0.70710659 -0.90666449 -0.70710659 1.000000476837 -0.90666449 0 0.4671669 -1.075793505 -0.37149048
		 0.095676422 -1.075793505 -0.52536678 -0.27581406 -1.075793505 -0.37149048 -0.42969036 -1.075793505 0
		 -0.27581406 -1.075793505 0.37149048 0.095676422 -1.075793505 0.52536678 0.4671669 -1.075793505 0.37149048
		 0.62104416 -1.075793505 0;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 23 0 1 22 0 2 21 0
		 3 20 0 4 19 0 5 18 0 6 17 0 7 24 0 8 16 1 9 16 1 10 16 1 11 16 1 12 16 1 13 16 1
		 14 16 1 15 16 1 17 14 0 18 13 0 17 18 1 19 12 0 18 19 1 20 11 0 19 20 1 21 10 0 20 21 1
		 22 9 0 21 22 1 23 8 0 22 23 1 24 15 0 23 24 1 24 17 1 0 25 0 1 26 0 25 26 0 2 27 0
		 26 27 0 3 28 0 27 28 0 4 29 0 28 29 0 5 30 0 29 30 0 6 31 0 30 31 0 7 32 0 31 32 0
		 32 25 0;
	setAttr -s 32 -ch 120 ".fc[0:31]" -type "polyFaces" 
		f 4 0 17 44 -17
		mu 0 4 8 9 40 42
		f 4 1 18 42 -18
		mu 0 4 9 10 39 40
		f 4 2 19 40 -19
		mu 0 4 10 11 38 39
		f 4 3 20 38 -20
		mu 0 4 11 12 37 38
		f 4 4 21 36 -21
		mu 0 4 12 13 36 37
		f 4 5 22 34 -22
		mu 0 4 13 14 35 36
		f 4 6 23 47 -23
		mu 0 4 14 15 43 35
		f 4 7 16 46 -24
		mu 0 4 15 16 41 43
		f 3 8 25 -25
		mu 0 3 32 31 34
		f 3 9 26 -26
		mu 0 3 31 30 34
		f 3 10 27 -27
		mu 0 3 30 29 34
		f 3 11 28 -28
		mu 0 3 29 28 34
		f 3 12 29 -29
		mu 0 3 28 27 34
		f 3 13 30 -30
		mu 0 3 27 26 34
		f 3 14 31 -31
		mu 0 3 26 33 34
		f 3 15 24 -32
		mu 0 3 33 32 34
		f 4 -35 32 -14 -34
		mu 0 4 36 35 23 22
		f 4 -37 33 -13 -36
		mu 0 4 37 36 22 21
		f 4 -39 35 -12 -38
		mu 0 4 38 37 21 20
		f 4 -41 37 -11 -40
		mu 0 4 39 38 20 19
		f 4 -43 39 -10 -42
		mu 0 4 40 39 19 18
		f 4 -45 41 -9 -44
		mu 0 4 42 40 18 17
		f 4 -47 43 -16 -46
		mu 0 4 43 41 25 24
		f 4 -48 45 -15 -33
		mu 0 4 35 43 24 23
		f 4 -1 48 50 -50
		mu 0 4 1 0 45 44
		f 4 -2 49 52 -52
		mu 0 4 2 1 44 46
		f 4 -3 51 54 -54
		mu 0 4 3 2 46 47
		f 4 -4 53 56 -56
		mu 0 4 4 3 47 48
		f 4 -5 55 58 -58
		mu 0 4 5 4 48 49
		f 4 -6 57 60 -60
		mu 0 4 6 5 49 50
		f 4 -7 59 62 -62
		mu 0 4 7 6 50 51
		f 4 -8 61 63 -49
		mu 0 4 0 7 51 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "armJointLeft" -p "armLeft";
	rename -uid "25BA5C52-4950-00D8-3758-70BAF4A6C7F4";
	setAttr ".t" -type "double3" -1.8676035283298367 -0.56122721863612857 0.58104184198842701 ;
	setAttr ".r" -type "double3" 0 0 92.208149576105612 ;
	setAttr ".s" -type "double3" 0.13160786548741174 0.13160786548741174 0.13160786548741174 ;
createNode mesh -n "armJointLeftShape" -p "armJointLeft";
	rename -uid "B3C9AE6E-4C40-CFC8-AE48-4FB5E249DDB5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0 0.16666667 0.16666667
		 0.16666667 0.33333334 0.16666667 0.5 0.16666667 0.66666669 0.16666667 0.83333337
		 0.16666667 1 0.16666667 0 0.33333334 0.16666667 0.33333334 0.33333334 0.33333334
		 0.5 0.33333334 0.66666669 0.33333334 0.83333337 0.33333334 1 0.33333334 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 0 0.25 0 0.41666669 0 0.58333337 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669
		 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  0.25000012 -0.86602539 -0.43301266 -0.24999993 -0.86602539 -0.43301275
		 -0.5 -0.86602539 -7.4505806e-008 -0.25000006 -0.86602539 0.43301269 0.24999999 -0.86602539 0.43301272
		 0.5 -0.86602539 0 0.43301293 -0.49999997 -0.75 -0.4330126 -0.49999997 -0.75000012
		 -0.86602545 -0.49999997 -1.2904785e-007 -0.43301281 -0.49999997 0.75 0.43301269 -0.49999997 0.75000006
		 0.86602545 -0.49999997 0 0.50000024 0 -0.86602533 -0.49999985 0 -0.86602551 -1 0 -1.4901161e-007
		 -0.50000012 0 0.86602539 0.49999997 0 0.86602545 1 0 0 0.43301293 0.49999997 -0.75
		 -0.4330126 0.49999997 -0.75000012 -0.86602545 0.49999997 -1.2904785e-007 -0.43301281 0.49999997 0.75
		 0.43301269 0.49999997 0.75000006 0.86602545 0.49999997 0 0.25000012 0.86602539 -0.43301266
		 -0.24999993 0.86602539 -0.43301275 -0.5 0.86602539 -7.4505806e-008 -0.25000006 0.86602539 0.43301269
		 0.24999999 0.86602539 0.43301272 0.5 0.86602539 0 0 -1 0 0 1 0;
	setAttr -s 66 ".ed[0:65]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 12 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 18 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 24 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0
		 11 17 0 12 18 0 13 19 0 14 20 0 15 21 0 16 22 0 17 23 0 18 24 0 19 25 0 20 26 0 21 27 0
		 22 28 0 23 29 0 30 0 0 30 1 0 30 2 0 30 3 0 30 4 0 30 5 0 24 31 0 25 31 0 26 31 0
		 27 31 0 28 31 0 29 31 0;
	setAttr -s 36 -ch 132 ".fc[0:35]" -type "polyFaces" 
		f 4 0 31 -7 -31
		mu 0 4 0 1 8 7
		f 4 1 32 -8 -32
		mu 0 4 1 2 9 8
		f 4 2 33 -9 -33
		mu 0 4 2 3 10 9
		f 4 3 34 -10 -34
		mu 0 4 3 4 11 10
		f 4 4 35 -11 -35
		mu 0 4 4 5 12 11
		f 4 5 30 -12 -36
		mu 0 4 5 6 13 12
		f 4 6 37 -13 -37
		mu 0 4 7 8 15 14
		f 4 7 38 -14 -38
		mu 0 4 8 9 16 15
		f 4 8 39 -15 -39
		mu 0 4 9 10 17 16
		f 4 9 40 -16 -40
		mu 0 4 10 11 18 17
		f 4 10 41 -17 -41
		mu 0 4 11 12 19 18
		f 4 11 36 -18 -42
		mu 0 4 12 13 20 19
		f 4 12 43 -19 -43
		mu 0 4 14 15 22 21
		f 4 13 44 -20 -44
		mu 0 4 15 16 23 22
		f 4 14 45 -21 -45
		mu 0 4 16 17 24 23
		f 4 15 46 -22 -46
		mu 0 4 17 18 25 24
		f 4 16 47 -23 -47
		mu 0 4 18 19 26 25
		f 4 17 42 -24 -48
		mu 0 4 19 20 27 26
		f 4 18 49 -25 -49
		mu 0 4 21 22 29 28
		f 4 19 50 -26 -50
		mu 0 4 22 23 30 29
		f 4 20 51 -27 -51
		mu 0 4 23 24 31 30
		f 4 21 52 -28 -52
		mu 0 4 24 25 32 31
		f 4 22 53 -29 -53
		mu 0 4 25 26 33 32
		f 4 23 48 -30 -54
		mu 0 4 26 27 34 33
		f 3 -1 -55 55
		mu 0 3 1 0 35
		f 3 -2 -56 56
		mu 0 3 2 1 36
		f 3 -3 -57 57
		mu 0 3 3 2 37
		f 3 -4 -58 58
		mu 0 3 4 3 38
		f 3 -5 -59 59
		mu 0 3 5 4 39
		f 3 -6 -60 54
		mu 0 3 6 5 40
		f 3 24 61 -61
		mu 0 3 28 29 41
		f 3 25 62 -62
		mu 0 3 29 30 42
		f 3 26 63 -63
		mu 0 3 30 31 43
		f 3 27 64 -64
		mu 0 3 31 32 44
		f 3 28 65 -65
		mu 0 3 32 33 45
		f 3 29 60 -66
		mu 0 3 33 34 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lowerArmLeft" -p "armLeft";
	rename -uid "5B85376E-4573-531B-F4F1-0E8BD8312BCA";
	setAttr ".t" -type "double3" -2.3233694064314361 -0.56157152037056846 0.61143917725364638 ;
	setAttr ".r" -type "double3" 89.999999999877588 -90.625252811554319 -6.557031531305186e-011 ;
	setAttr ".s" -type "double3" 0.16622548840192997 0.68402268603774252 0.16622548840192997 ;
createNode mesh -n "lowerArmLeftShape" -p "lowerArmLeft";
	rename -uid "5BB43248-4D35-5838-7B3E-638792CA5522";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 103 ".uvst[0].uvsp[0:102]" -type "float2" 0 1 0.125 1 0.25
		 1 0.375 1 0.5 1 0.625 1 0.75 1 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625
		 0.75 0.75 0.75 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0 0 0.125 0 0.25 0
		 0.375 0 0.5 0 0.625 0 0.75 0 0.375 0.28709358 0.5 0.28709358 0.625 0.28709358 0.75
		 0.28709358 0.75 0.96290642 0.625 0.96290642 0.5 0.96290642 0.375 0.96290642 0.25
		 0.96290642 0.125 0.96290642 0 0.96290642 0 0.11128069 0 0.28709358 0.125 0.28709358
		 0.25 0.28709358 0.375 0.46667027 0.5 0.46667027 0.62499994 0.46667027 0.75 0.46667027
		 0.75 0.78332973 0.625 0.78332973 0.5 0.78332973 0.375 0.78332973 0.25 0.78332973
		 0.125 0.78332973 0 0.78332973 0 0.65001082 0 0.46667027 0.125 0.46667027 0.25 0.46667027
		 0.125 0.75 0 0.75 0 0.5 0.125 0.5 0.25 0.75 0.25 0.5 0.375 0.75 0.375 0.5 0.5 0.75
		 0.5 0.5 0.125 0.75 0 0.75 0 0.5 0.125 0.5 0.25 0.75 0.25 0.5 0.375 0.75 0.375 0.5
		 0.5 0.75 0.5 0.5 0.625 0.75 0.5 0.75 0.5 0.5 0.625 0.5 0.75 0.75 0.75 0.5 0.625 0.75
		 0.5 0.75 0.5 0.5 0.625 0.5 0.75 0.75 0.75 0.5 0.625 0.75 0.5 0.75 0.5 0.5 0.625 0.5
		 0.75 0.75 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[86]" -type "float3" 0 -2.4424907e-015 -0.30226123 ;
	setAttr ".pt[87]" -type "float3" 0 -2.4424907e-015 -0.30226123 ;
	setAttr ".pt[89]" -type "float3" 0.049037993 -0.012907964 -0.12978706 ;
	setAttr ".pt[91]" -type "float3" 0.17564672 -0.012907962 -0.095420904 ;
	setAttr ".pt[92]" -type "float3" 0 0 -0.30226123 ;
	setAttr ".pt[93]" -type "float3" 0 0 -0.30226123 ;
	setAttr -s 94 ".vt[0:93]"  0.60000134 -0.49999928 0 0.42426395 -0.49999976 -0.42426419
		 2.8610229e-006 -0.49999928 -0.5999999 -0.46754837 -0.49999905 -0.51703882 -0.59999943 -0.49999976 0
		 -0.42426109 -0.49999905 0.42426395 2.8610229e-006 -0.49999928 0.60000014 0.5999999 0.5 0
		 0.42426729 0.50000072 -0.42426419 2.3841858e-006 0.50000072 -0.5999999 -0.42426348 0.50000024 -0.42426419
		 -0.59999847 0.50000072 0 -0.42426348 0.50000024 0.42426395 2.3841858e-006 0.50000072 0.60000014
		 0.90000343 0.50000048 0 0.63639975 0.50000095 -0.63639617 2.3841858e-006 0.50000072 -0.89999986
		 -0.63639164 0.50000048 -0.63639617 -0.89999628 0.50000048 0 -0.63639164 0.50000048 0.63639593
		 2.3841858e-006 0.50000072 0.9000001 0.90000153 -0.49999928 0 0.63639736 -0.49999976 -0.63639617
		 2.8610229e-006 -0.49999928 -0.9000001 -1.0022821426 -0.49999928 -1.12724233 -0.89999676 -0.49999928 0
		 -0.6363945 -0.49999928 0.63639593 2.8610229e-006 -0.49999928 0.9000001 -0.82048607 -0.35162568 -0.7176075
		 -0.89999676 -0.3516252 0 -0.63639498 -0.35162568 0.63639593 1.9073486e-006 -0.35162473 0.9000001
		 1.9073486e-006 -0.35162473 0.60000014 -0.42425966 -0.35162568 0.42426395 -0.599998 -0.35162568 0
		 -0.42425966 -0.35162568 -0.42426419 1.9073486e-006 -0.35162473 -0.5999999 0.42426586 -0.35162568 -0.42426419
		 0.60000038 -0.35162568 0 0.9000001 -0.35162568 0 0.63639641 -0.35162568 -0.63639617
		 1.9073486e-006 -0.35162473 -0.9000001 -0.63639545 0.36668134 -0.63639617 -0.89999914 0.36668134 0
		 -0.63639545 0.36668134 0.63639593 1.4305115e-006 0.36668181 0.9000001 1.4305115e-006 0.36668181 0.60000014
		 -0.42426348 0.36668134 0.42426395 -0.59999657 0.36668181 0 -0.42426348 0.36668134 -0.42426419
		 1.4305115e-006 0.36668181 -0.5999999 0.42426634 0.36668181 -0.42426419 0.60000038 0.36668134 0
		 0.90000391 0.36668181 0 0.63639784 0.36668181 -0.63639617 1.4305115e-006 0.36668181 -0.89999986
		 0.81821966 0.74196506 -0.52465177 0.50612259 0.74196601 -0.90695047 1.22733307 0.74196577 -0.37580538
		 0.55454159 0.74196649 -1.054170609 9.5367432e-007 0.74196553 -0.78932929 9.5367432e-007 0.74196553 -0.94048262
		 -0.48040581 0.74128699 -0.91356182 -0.58024693 0.74264479 -1.047558784 -0.81821585 0.74196506 -0.52465391
		 -1.22732639 0.74196601 -0.37580752 1.25943851 1.14351964 -0.52464747 0.80602837 1.14330935 -0.89842725
		 1.89169836 1.14351916 -0.37580109 0.82300091 1.14373088 -1.062689304 -0.010984421 1.14347196 -0.47810936
		 -0.010984421 1.14347196 -0.62926292 -0.79244566 1.14277053 -0.85501051 -0.83988857 1.14412713 -1.053788185
		 -1.24077892 1.14347148 -0.50734901 -1.87303638 1.14347243 -0.35850239 -0.73184252 0.64032769 0.58913946
		 -0.43628597 0.60336924 0.90599871 -1.017117977 0.62580538 0.66016793 -0.5737834 0.57036757 1.13545704
		 0.0203619 0.60507417 0.95402956 0.11118555 0.57292533 1.20750475 -0.8084569 0.75860453 1.024180174
		 -0.51289749 0.74211192 1.36903238 -1.09373188 0.7488687 1.10791254 -0.6503973 0.72412992 1.62519217
		 -0.056248188 0.74668622 1.41377401 0.034575462 0.73099113 1.69230652 -0.86614799 1.1490705 1.064928055
		 -0.57058907 1.13257766 1.40978193 -1.15142345 1.13933492 1.14866066 -0.7080884 1.11459565 1.66594124
		 -0.11394024 1.13715148 1.45452595 -0.023116112 1.12145686 1.7330575;
	setAttr -s 184 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 7 8 1 8 9 1 9 10 1
		 10 11 1 11 12 1 12 13 0 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 0 38 0 1 37 0 2 36 0 3 35 0 4 34 0 5 33 0 6 32 0
		 7 14 1 11 18 0 13 20 1 14 53 0 15 54 0 16 55 0 17 42 0 18 43 0 19 44 0 20 45 0 21 0 0
		 22 1 1 23 2 1 24 3 1 25 4 1 26 5 1 27 6 0 28 24 0 29 25 0 28 29 1 30 26 0 29 30 1
		 31 27 0 30 31 1 32 46 0 31 32 1 33 47 0 32 33 1 34 48 0 33 34 1 35 49 0 34 35 1 36 50 0
		 35 36 1 37 51 0 36 37 1 38 52 0 37 38 1 39 21 0 38 39 1 40 22 0 39 40 1 41 23 0 40 41 1
		 41 28 1 42 28 0 43 29 0 42 43 1 44 30 0 43 44 1 45 31 0 44 45 1 46 13 0 45 46 1 47 12 0
		 46 47 1 48 11 0 47 48 1 49 10 0 48 49 1 50 9 0 49 50 1 51 8 0 50 51 1 52 7 0 51 52 1
		 53 39 0 52 53 1 54 40 0 53 54 1 55 41 0 54 55 1 55 42 1 7 56 0 8 57 0 56 57 1 14 58 0
		 56 58 1 15 59 0 58 59 1 9 60 0 57 60 1 16 61 0 59 61 1 10 62 0 60 62 1 17 63 0 61 63 1
		 11 64 0 62 64 1 18 65 0 63 65 1 64 65 1 56 66 0 57 67 0 66 67 0 58 68 0 66 68 0 59 69 0
		 68 69 0 67 69 1 60 70 1 67 70 0 61 71 1 69 71 0 70 71 1 62 72 0 70 72 0 63 73 0 71 73 0
		 72 73 1 64 74 1 72 74 0 65 75 0 73 75 0 74 75 0 11 76 0 12 77 0 76 77 1 18 78 0 76 78 1
		 19 79 0 78 79 1 13 80 0 77 80 1 20 81 0 79 81 1 80 81 1 76 82 0 77 83 0 82 83 1 78 84 0
		 82 84 0 79 85 0 84 85 1;
	setAttr ".ed[166:183]" 80 86 0 83 86 0 81 87 0 85 87 0 86 87 1 82 88 0 83 89 0
		 88 89 0 84 90 0 88 90 0 85 91 0 90 91 0 89 91 1 86 92 0 89 92 0 87 93 0 91 93 0 92 93 0;
	setAttr -s 92 -ch 368 ".fc[0:91]" -type "polyFaces" 
		f 4 96 95 6 -94
		mu 0 4 59 60 7 8
		f 4 94 93 7 -92
		mu 0 4 58 59 8 9
		f 4 92 91 8 -90
		mu 0 4 57 58 9 10
		f 4 90 89 9 -88
		mu 0 4 56 57 10 11
		f 4 88 87 10 -86
		mu 0 4 55 56 11 12
		f 4 86 85 11 -84
		mu 0 4 54 55 12 13
		f 4 -127 128 130 -132
		mu 0 4 75 76 77 78
		f 4 -134 131 135 -137
		mu 0 4 79 75 78 80
		f 4 -139 136 140 -142
		mu 0 4 81 79 80 82
		f 4 -144 141 145 -147
		mu 0 4 83 81 82 84
		f 4 -174 175 177 -179
		mu 0 4 97 98 99 100
		f 4 -181 178 182 -184
		mu 0 4 101 97 100 102
		f 4 -13 34 100 -36
		mu 0 4 15 14 62 63
		f 4 -14 35 102 -37
		mu 0 4 16 15 63 64
		f 4 -15 36 103 -38
		mu 0 4 17 16 64 50
		f 4 -16 37 78 -39
		mu 0 4 18 17 50 51
		f 4 -17 38 80 -40
		mu 0 4 19 18 51 52
		f 4 -18 39 82 -41
		mu 0 4 20 19 52 53
		f 4 -19 41 0 -43
		mu 0 4 22 21 28 29
		f 4 -20 42 1 -44
		mu 0 4 23 22 29 30
		f 4 -21 43 2 -45
		mu 0 4 24 23 30 31
		f 4 -22 44 3 -46
		mu 0 4 25 24 31 32
		f 4 -23 45 4 -47
		mu 0 4 26 25 32 33
		f 4 -24 46 5 -48
		mu 0 4 27 26 33 34
		f 4 -96 98 -35 -32
		mu 0 4 7 61 62 14
		f 4 33 40 84 83
		mu 0 4 13 20 53 54
		f 4 -51 48 21 -50
		mu 0 4 36 35 24 25
		f 4 -53 49 22 -52
		mu 0 4 37 36 25 26
		f 4 -55 51 23 -54
		mu 0 4 38 37 26 27
		f 4 -57 53 47 30
		mu 0 4 39 38 27 6
		f 4 -6 29 -59 -31
		mu 0 4 6 5 40 39
		f 4 -5 28 -61 -30
		mu 0 4 5 4 41 40
		f 4 -4 27 -63 -29
		mu 0 4 4 3 42 41
		f 4 -3 26 -65 -28
		mu 0 4 3 2 43 42
		f 4 -2 25 -67 -27
		mu 0 4 2 1 44 43
		f 4 -1 24 -69 -26
		mu 0 4 1 0 45 44
		f 4 -71 -25 -42 -70
		mu 0 4 47 46 28 21
		f 4 -73 69 18 -72
		mu 0 4 48 47 21 22
		f 4 -75 71 19 -74
		mu 0 4 49 48 22 23
		f 4 -76 73 20 -49
		mu 0 4 35 49 23 24
		f 4 -79 76 50 -78
		mu 0 4 51 50 35 36
		f 4 -81 77 52 -80
		mu 0 4 52 51 36 37
		f 4 -83 79 54 -82
		mu 0 4 53 52 37 38
		f 4 -85 81 56 55
		mu 0 4 54 53 38 39
		f 4 58 57 -87 -56
		mu 0 4 39 40 55 54
		f 4 60 59 -89 -58
		mu 0 4 40 41 56 55
		f 4 62 61 -91 -60
		mu 0 4 41 42 57 56
		f 4 64 63 -93 -62
		mu 0 4 42 43 58 57
		f 4 66 65 -95 -64
		mu 0 4 43 44 59 58
		f 4 68 67 -97 -66
		mu 0 4 44 45 60 59
		f 4 -99 -68 70 -98
		mu 0 4 62 61 46 47
		f 4 -101 97 72 -100
		mu 0 4 63 62 47 48
		f 4 -103 99 74 -102
		mu 0 4 64 63 48 49
		f 4 -104 101 75 -77
		mu 0 4 50 64 49 35
		f 4 -7 104 106 -106
		mu 0 4 8 7 66 65
		f 4 31 107 -109 -105
		mu 0 4 7 14 67 66
		f 4 12 109 -111 -108
		mu 0 4 14 15 68 67
		f 4 -8 105 112 -112
		mu 0 4 9 8 65 69
		f 4 13 113 -115 -110
		mu 0 4 15 16 70 68
		f 4 -9 111 116 -116
		mu 0 4 10 9 69 71
		f 4 14 117 -119 -114
		mu 0 4 16 17 72 70
		f 4 -10 115 120 -120
		mu 0 4 11 10 71 73
		f 4 15 121 -123 -118
		mu 0 4 17 18 74 72
		f 4 -33 119 123 -122
		mu 0 4 18 11 73 74
		f 4 -107 124 126 -126
		mu 0 4 65 66 76 75
		f 4 108 127 -129 -125
		mu 0 4 66 67 77 76
		f 4 110 129 -131 -128
		mu 0 4 67 68 78 77
		f 4 -113 125 133 -133
		mu 0 4 69 65 75 79
		f 4 114 134 -136 -130
		mu 0 4 68 70 80 78
		f 4 -117 132 138 -138
		mu 0 4 71 69 79 81
		f 4 118 139 -141 -135
		mu 0 4 70 72 82 80
		f 4 -121 137 143 -143
		mu 0 4 73 71 81 83
		f 4 122 144 -146 -140
		mu 0 4 72 74 84 82
		f 4 -124 142 146 -145
		mu 0 4 74 73 83 84
		f 4 -11 147 149 -149
		mu 0 4 12 11 86 85
		f 4 32 150 -152 -148
		mu 0 4 11 18 87 86
		f 4 16 152 -154 -151
		mu 0 4 18 19 88 87
		f 4 -12 148 155 -155
		mu 0 4 13 12 85 89
		f 4 17 156 -158 -153
		mu 0 4 19 20 90 88
		f 4 -34 154 158 -157
		mu 0 4 20 13 89 90
		f 4 -150 159 161 -161
		mu 0 4 85 86 92 91
		f 4 151 162 -164 -160
		mu 0 4 86 87 93 92
		f 4 153 164 -166 -163
		mu 0 4 87 88 94 93
		f 4 -156 160 167 -167
		mu 0 4 89 85 91 95
		f 4 157 168 -170 -165
		mu 0 4 88 90 96 94
		f 4 -159 166 170 -169
		mu 0 4 90 89 95 96
		f 4 -162 171 173 -173
		mu 0 4 91 92 98 97
		f 4 163 174 -176 -172
		mu 0 4 92 93 99 98
		f 4 165 176 -178 -175
		mu 0 4 93 94 100 99
		f 4 -168 172 180 -180
		mu 0 4 95 91 97 101
		f 4 169 181 -183 -177
		mu 0 4 94 96 102 100
		f 4 -171 179 183 -182
		mu 0 4 96 95 101 102;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape3" -p "lowerArmLeft";
	rename -uid "DDAE9D76-4C8E-AB89-6016-08AC2B9208E3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 65 ".uvst[0].uvsp[0:64]" -type "float2" 0 1 0.125 1 0.25
		 1 0.375 1 0.5 1 0.625 1 0.75 1 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625
		 0.75 0.75 0.75 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0 0 0.125 0 0.25 0
		 0.375 0 0.5 0 0.625 0 0.75 0 0.375 0.28709358 0.5 0.28709358 0.625 0.28709358 0.75
		 0.28709358 0.75 0.96290642 0.625 0.96290642 0.5 0.96290642 0.375 0.96290642 0.25
		 0.96290642 0.125 0.96290642 0 0.96290642 0 0.11128069 0 0.28709358 0.125 0.28709358
		 0.25 0.28709358 0.375 0.46667027 0.5 0.46667027 0.62499994 0.46667027 0.75 0.46667027
		 0.75 0.78332973 0.625 0.78332973 0.5 0.78332973 0.375 0.78332973 0.25 0.78332973
		 0.125 0.78332973 0 0.78332973 0 0.65001082 0 0.46667027 0.125 0.46667027 0.25 0.46667027;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[3]" -type "float3" -0.043286875 -6.6613381e-016 -0.092774689 ;
	setAttr ".pt[7]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[8]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[9]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[10]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[14]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[15]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[16]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[17]" -type "float3" -7.4505806e-009 0 5.9604645e-008 ;
	setAttr ".pt[24]" -type "float3" -0.36588892 6.6613381e-016 -0.49084634 ;
	setAttr ".pt[28]" -type "float3" -0.18409079 -3.3306691e-016 -0.081211388 ;
	setAttr -s 56 ".vt[0:55]"  0.59999996 -0.5 -1.110223e-016 0.42426404 -0.5 -0.42426404
		 0 -0.5 -0.59999996 -0.42426404 -0.5 -0.42426404 -0.59999996 -0.5 -1.110223e-016 -0.42426404 -0.5 0.42426404
		 0 -0.5 0.59999996 0.59999996 0.5 1.110223e-016 0.42426404 0.5 -0.42426404 0 0.5 -0.59999996
		 -0.42426404 0.5 -0.42426404 -0.59999996 0.5 1.110223e-016 -0.42426404 0.5 0.42426404
		 0 0.5 0.59999996 0.89999998 0.5 1.110223e-016 0.63639605 0.5 -0.63639605 0 0.5 -0.89999992
		 -0.63639605 0.5 -0.63639605 -0.89999992 0.5 1.110223e-016 -0.63639605 0.5 0.63639605
		 0 0.5 0.89999992 0.89999998 -0.5 -1.110223e-016 0.63639605 -0.5 -0.63639605 0 -0.5 -0.89999992
		 -0.63639605 -0.5 -0.63639605 -0.89999992 -0.5 -1.110223e-016 -0.63639605 -0.5 0.63639605
		 0 -0.5 0.89999992 -0.63639605 -0.35162574 -0.63639605 -0.89999992 -0.35162574 -7.8076599e-017
		 -0.63639605 -0.35162574 0.63639605 0 -0.35162574 0.89999992 0 -0.35162574 0.59999996
		 -0.42426404 -0.35162574 0.42426404 -0.59999996 -0.35162574 -7.8076599e-017 -0.42426404 -0.35162574 -0.42426404
		 0 -0.35162574 -0.59999996 0.42426404 -0.35162574 -0.42426404 0.59999996 -0.35162574 -7.8076599e-017
		 0.89999998 -0.35162574 -7.8076599e-017 0.63639605 -0.35162574 -0.63639605 0 -0.35162574 -0.89999992
		 -0.63639605 0.3666811 -0.63639605 -0.89999986 0.3666811 8.141956e-017 -0.63639605 0.3666811 0.63639605
		 0 0.3666811 0.89999986 0 0.3666811 0.59999996 -0.42426404 0.3666811 0.42426404 -0.59999996 0.3666811 8.141956e-017
		 -0.42426404 0.3666811 -0.42426404 0 0.3666811 -0.59999996 0.42426404 0.3666811 -0.42426404
		 0.59999996 0.3666811 8.141956e-017 0.89999998 0.3666811 8.141956e-017 0.63639605 0.3666811 -0.63639605
		 0 0.3666811 -0.89999986;
	setAttr -s 108 ".ed[0:107]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 7 8 0
		 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 0 38 0 1 37 0 2 36 0 3 35 0 4 34 0
		 5 33 0 6 32 0 7 14 0 8 15 1 9 16 1 10 17 1 11 18 1 12 19 1 13 20 0 14 53 0 15 54 0
		 16 55 0 17 42 0 18 43 0 19 44 0 20 45 0 21 0 0 22 1 1 23 2 1 24 3 1 25 4 1 26 5 1
		 27 6 0 28 24 0 29 25 0 28 29 1 30 26 0 29 30 1 31 27 0 30 31 1 32 46 0 31 32 1 33 47 0
		 32 33 1 34 48 0 33 34 1 35 49 0 34 35 1 36 50 0 35 36 1 37 51 0 36 37 1 38 52 0 37 38 1
		 39 21 0 38 39 1 40 22 0 39 40 1 41 23 0 40 41 1 41 28 1 42 28 0 43 29 0 42 43 1 44 30 0
		 43 44 1 45 31 0 44 45 1 46 13 0 45 46 1 47 12 0 46 47 1 48 11 0 47 48 1 49 10 0 48 49 1
		 50 9 0 49 50 1 51 8 0 50 51 1 52 7 0 51 52 1 53 39 0 52 53 1 54 40 0 53 54 1 55 41 0
		 54 55 1 55 42 1;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 100 99 6 -98
		mu 0 4 59 60 7 8
		f 4 98 97 7 -96
		mu 0 4 58 59 8 9
		f 4 96 95 8 -94
		mu 0 4 57 58 9 10
		f 4 94 93 9 -92
		mu 0 4 56 57 10 11
		f 4 92 91 10 -90
		mu 0 4 55 56 11 12
		f 4 90 89 11 -88
		mu 0 4 54 55 12 13
		f 4 -7 31 12 -33
		mu 0 4 8 7 14 15
		f 4 -8 32 13 -34
		mu 0 4 9 8 15 16
		f 4 -9 33 14 -35
		mu 0 4 10 9 16 17
		f 4 -10 34 15 -36
		mu 0 4 11 10 17 18
		f 4 -11 35 16 -37
		mu 0 4 12 11 18 19
		f 4 -12 36 17 -38
		mu 0 4 13 12 19 20
		f 4 -13 38 104 -40
		mu 0 4 15 14 62 63
		f 4 -14 39 106 -41
		mu 0 4 16 15 63 64
		f 4 -15 40 107 -42
		mu 0 4 17 16 64 50
		f 4 -16 41 82 -43
		mu 0 4 18 17 50 51
		f 4 -17 42 84 -44
		mu 0 4 19 18 51 52
		f 4 -18 43 86 -45
		mu 0 4 20 19 52 53
		f 4 -19 45 0 -47
		mu 0 4 22 21 28 29
		f 4 -20 46 1 -48
		mu 0 4 23 22 29 30
		f 4 -21 47 2 -49
		mu 0 4 24 23 30 31
		f 4 -22 48 3 -50
		mu 0 4 25 24 31 32
		f 4 -23 49 4 -51
		mu 0 4 26 25 32 33
		f 4 -24 50 5 -52
		mu 0 4 27 26 33 34
		f 4 -100 102 -39 -32
		mu 0 4 7 61 62 14
		f 4 37 44 88 87
		mu 0 4 13 20 53 54
		f 4 -55 52 21 -54
		mu 0 4 36 35 24 25
		f 4 -57 53 22 -56
		mu 0 4 37 36 25 26
		f 4 -59 55 23 -58
		mu 0 4 38 37 26 27
		f 4 -61 57 51 30
		mu 0 4 39 38 27 6
		f 4 -6 29 -63 -31
		mu 0 4 6 5 40 39
		f 4 -5 28 -65 -30
		mu 0 4 5 4 41 40
		f 4 -4 27 -67 -29
		mu 0 4 4 3 42 41
		f 4 -3 26 -69 -28
		mu 0 4 3 2 43 42
		f 4 -2 25 -71 -27
		mu 0 4 2 1 44 43
		f 4 -1 24 -73 -26
		mu 0 4 1 0 45 44
		f 4 -75 -25 -46 -74
		mu 0 4 47 46 28 21
		f 4 -77 73 18 -76
		mu 0 4 48 47 21 22
		f 4 -79 75 19 -78
		mu 0 4 49 48 22 23
		f 4 -80 77 20 -53
		mu 0 4 35 49 23 24
		f 4 -83 80 54 -82
		mu 0 4 51 50 35 36
		f 4 -85 81 56 -84
		mu 0 4 52 51 36 37
		f 4 -87 83 58 -86
		mu 0 4 53 52 37 38
		f 4 -89 85 60 59
		mu 0 4 54 53 38 39
		f 4 62 61 -91 -60
		mu 0 4 39 40 55 54
		f 4 64 63 -93 -62
		mu 0 4 40 41 56 55
		f 4 66 65 -95 -64
		mu 0 4 41 42 57 56
		f 4 68 67 -97 -66
		mu 0 4 42 43 58 57
		f 4 70 69 -99 -68
		mu 0 4 43 44 59 58
		f 4 72 71 -101 -70
		mu 0 4 44 45 60 59
		f 4 -103 -72 74 -102
		mu 0 4 62 61 46 47
		f 4 -105 101 76 -104
		mu 0 4 63 62 47 48
		f 4 -107 103 78 -106
		mu 0 4 64 63 48 49
		f 4 -108 105 79 -81
		mu 0 4 50 64 49 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "upperArmLeft" -p "armLeft";
	rename -uid "2F1ADE73-41A5-670E-80D7-D784DA34F24A";
	setAttr ".t" -type "double3" -1.2494467395026534 -0.56157152037056846 0.58890934308601306 ;
	setAttr ".r" -type "double3" 89.99999999997965 -90.680422318667866 9.1091086077115114e-012 ;
	setAttr ".s" -type "double3" 0.16622548840192997 1.0449108001836938 0.16622548840192997 ;
createNode mesh -n "upperArmLeftShape" -p "upperArmLeft";
	rename -uid "CBD2EE64-4032-2F8D-52C3-C98BB9EBF4CD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 65 ".uvst[0].uvsp[0:64]" -type "float2" 0 1 0.125 1 0.25
		 1 0.375 1 0.5 1 0.625 1 0.75 1 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625
		 0.75 0.75 0.75 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0 0 0.125 0 0.25 0
		 0.375 0 0.5 0 0.625 0 0.75 0 0.375 0.28709358 0.5 0.28709358 0.625 0.28709358 0.75
		 0.28709358 0.75 0.96290642 0.625 0.96290642 0.5 0.96290642 0.375 0.96290642 0.25
		 0.96290642 0.125 0.96290642 0 0.96290642 0 0.11128069 0 0.28709358 0.125 0.28709358
		 0.25 0.28709358 0.375 0.46667027 0.5 0.46667027 0.62499994 0.46667027 0.75 0.46667027
		 0.75 0.78332973 0.625 0.78332973 0.5 0.78332973 0.375 0.78332973 0.25 0.78332973
		 0.125 0.78332973 0 0.78332973 0 0.65001082 0 0.46667027 0.125 0.46667027 0.25 0.46667027;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[3]" -type "float3" -0.043286875 -6.6613381e-016 -0.092774689 ;
	setAttr ".pt[24]" -type "float3" -0.36588892 6.6613381e-016 -0.49084634 ;
	setAttr ".pt[28]" -type "float3" -0.18409079 -3.3306691e-016 -0.081211388 ;
	setAttr -s 56 ".vt[0:55]"  0.59999996 -0.5 -1.110223e-016 0.42426404 -0.5 -0.42426404
		 0 -0.5 -0.59999996 -0.42426404 -0.5 -0.42426404 -0.59999996 -0.5 -1.110223e-016 -0.42426404 -0.5 0.42426404
		 0 -0.5 0.59999996 0.59999996 0.5 1.110223e-016 0.42426404 0.5 -0.42426404 0 0.5 -0.59999996
		 -0.42426404 0.5 -0.42426404 -0.59999996 0.5 1.110223e-016 -0.42426404 0.5 0.42426404
		 0 0.5 0.59999996 0.89999998 0.5 1.110223e-016 0.63639605 0.5 -0.63639605 0 0.5 -0.89999992
		 -0.63639605 0.5 -0.63639605 -0.89999992 0.5 1.110223e-016 -0.63639605 0.5 0.63639605
		 0 0.5 0.89999992 0.89999998 -0.5 -1.110223e-016 0.63639605 -0.5 -0.63639605 0 -0.5 -0.89999992
		 -0.63639605 -0.5 -0.63639605 -0.89999992 -0.5 -1.110223e-016 -0.63639605 -0.5 0.63639605
		 0 -0.5 0.89999992 -0.63639605 -0.35162574 -0.63639605 -0.89999992 -0.35162574 -7.8076599e-017
		 -0.63639605 -0.35162574 0.63639605 0 -0.35162574 0.89999992 0 -0.35162574 0.59999996
		 -0.42426404 -0.35162574 0.42426404 -0.59999996 -0.35162574 -7.8076599e-017 -0.42426404 -0.35162574 -0.42426404
		 0 -0.35162574 -0.59999996 0.42426404 -0.35162574 -0.42426404 0.59999996 -0.35162574 -7.8076599e-017
		 0.89999998 -0.35162574 -7.8076599e-017 0.63639605 -0.35162574 -0.63639605 0 -0.35162574 -0.89999992
		 -0.63639605 0.3666811 -0.63639605 -0.89999986 0.3666811 8.141956e-017 -0.63639605 0.3666811 0.63639605
		 0 0.3666811 0.89999986 0 0.3666811 0.59999996 -0.42426404 0.3666811 0.42426404 -0.59999996 0.3666811 8.141956e-017
		 -0.42426404 0.3666811 -0.42426404 0 0.3666811 -0.59999996 0.42426404 0.3666811 -0.42426404
		 0.59999996 0.3666811 8.141956e-017 0.89999998 0.3666811 8.141956e-017 0.63639605 0.3666811 -0.63639605
		 0 0.3666811 -0.89999986;
	setAttr -s 108 ".ed[0:107]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 7 8 0
		 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 0 38 0 1 37 0 2 36 0 3 35 0 4 34 0
		 5 33 0 6 32 0 7 14 0 8 15 1 9 16 1 10 17 1 11 18 1 12 19 1 13 20 0 14 53 0 15 54 0
		 16 55 0 17 42 0 18 43 0 19 44 0 20 45 0 21 0 0 22 1 1 23 2 1 24 3 1 25 4 1 26 5 1
		 27 6 0 28 24 0 29 25 0 28 29 1 30 26 0 29 30 1 31 27 0 30 31 1 32 46 0 31 32 1 33 47 0
		 32 33 1 34 48 0 33 34 1 35 49 0 34 35 1 36 50 0 35 36 1 37 51 0 36 37 1 38 52 0 37 38 1
		 39 21 0 38 39 1 40 22 0 39 40 1 41 23 0 40 41 1 41 28 1 42 28 0 43 29 0 42 43 1 44 30 0
		 43 44 1 45 31 0 44 45 1 46 13 0 45 46 1 47 12 0 46 47 1 48 11 0 47 48 1 49 10 0 48 49 1
		 50 9 0 49 50 1 51 8 0 50 51 1 52 7 0 51 52 1 53 39 0 52 53 1 54 40 0 53 54 1 55 41 0
		 54 55 1 55 42 1;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 100 99 6 -98
		mu 0 4 59 60 7 8
		f 4 98 97 7 -96
		mu 0 4 58 59 8 9
		f 4 96 95 8 -94
		mu 0 4 57 58 9 10
		f 4 94 93 9 -92
		mu 0 4 56 57 10 11
		f 4 92 91 10 -90
		mu 0 4 55 56 11 12
		f 4 90 89 11 -88
		mu 0 4 54 55 12 13
		f 4 -7 31 12 -33
		mu 0 4 8 7 14 15
		f 4 -8 32 13 -34
		mu 0 4 9 8 15 16
		f 4 -9 33 14 -35
		mu 0 4 10 9 16 17
		f 4 -10 34 15 -36
		mu 0 4 11 10 17 18
		f 4 -11 35 16 -37
		mu 0 4 12 11 18 19
		f 4 -12 36 17 -38
		mu 0 4 13 12 19 20
		f 4 -13 38 104 -40
		mu 0 4 15 14 62 63
		f 4 -14 39 106 -41
		mu 0 4 16 15 63 64
		f 4 -15 40 107 -42
		mu 0 4 17 16 64 50
		f 4 -16 41 82 -43
		mu 0 4 18 17 50 51
		f 4 -17 42 84 -44
		mu 0 4 19 18 51 52
		f 4 -18 43 86 -45
		mu 0 4 20 19 52 53
		f 4 -19 45 0 -47
		mu 0 4 22 21 28 29
		f 4 -20 46 1 -48
		mu 0 4 23 22 29 30
		f 4 -21 47 2 -49
		mu 0 4 24 23 30 31
		f 4 -22 48 3 -50
		mu 0 4 25 24 31 32
		f 4 -23 49 4 -51
		mu 0 4 26 25 32 33
		f 4 -24 50 5 -52
		mu 0 4 27 26 33 34
		f 4 -100 102 -39 -32
		mu 0 4 7 61 62 14
		f 4 37 44 88 87
		mu 0 4 13 20 53 54
		f 4 -55 52 21 -54
		mu 0 4 36 35 24 25
		f 4 -57 53 22 -56
		mu 0 4 37 36 25 26
		f 4 -59 55 23 -58
		mu 0 4 38 37 26 27
		f 4 -61 57 51 30
		mu 0 4 39 38 27 6
		f 4 -6 29 -63 -31
		mu 0 4 6 5 40 39
		f 4 -5 28 -65 -30
		mu 0 4 5 4 41 40
		f 4 -4 27 -67 -29
		mu 0 4 4 3 42 41
		f 4 -3 26 -69 -28
		mu 0 4 3 2 43 42
		f 4 -2 25 -71 -27
		mu 0 4 2 1 44 43
		f 4 -1 24 -73 -26
		mu 0 4 1 0 45 44
		f 4 -75 -25 -46 -74
		mu 0 4 47 46 28 21
		f 4 -77 73 18 -76
		mu 0 4 48 47 21 22
		f 4 -79 75 19 -78
		mu 0 4 49 48 22 23
		f 4 -80 77 20 -53
		mu 0 4 35 49 23 24
		f 4 -83 80 54 -82
		mu 0 4 51 50 35 36
		f 4 -85 81 56 -84
		mu 0 4 52 51 36 37
		f 4 -87 83 58 -86
		mu 0 4 53 52 37 38
		f 4 -89 85 60 59
		mu 0 4 54 53 38 39
		f 4 62 61 -91 -60
		mu 0 4 39 40 55 54
		f 4 64 63 -93 -62
		mu 0 4 40 41 56 55
		f 4 66 65 -95 -64
		mu 0 4 41 42 57 56
		f 4 68 67 -97 -66
		mu 0 4 42 43 58 57
		f 4 70 69 -99 -68
		mu 0 4 43 44 59 58
		f 4 72 71 -101 -70
		mu 0 4 44 45 60 59
		f 4 -103 -72 74 -102
		mu 0 4 62 61 46 47
		f 4 -105 101 76 -104
		mu 0 4 63 62 47 48
		f 4 -107 103 78 -106
		mu 0 4 64 63 48 49
		f 4 -108 105 79 -81
		mu 0 4 50 64 49 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "clawRight" -p "armLeft";
	rename -uid "59B75A52-45BD-EBD3-8D09-05AC253C3C85";
	setAttr ".t" -type "double3" -1.3277445692988408 -0.018687062151020895 -1.6182445289250502 ;
	setAttr ".r" -type "double3" 0 -51.871113790500964 0 ;
	setAttr ".rp" -type "double3" -1.9616619280505259 -0.62067434053349868 2.6546503577709268 ;
	setAttr ".sp" -type "double3" -1.9616619280505259 -0.62067434053349868 2.6546503577709268 ;
createNode transform -n "clawBigLeft" -p "|scorpion|armLeft|clawRight";
	rename -uid "51AAF713-4374-BF25-0BF4-168DA860F6E3";
	setAttr ".t" -type "double3" -2.341755373581166 -0.60629680531609675 2.5626140787658214 ;
	setAttr ".r" -type "double3" 0 1.7789551845545011 0 ;
	setAttr ".s" -type "double3" 0.16947687260881275 0.16947687260881275 0.16947687260881275 ;
createNode mesh -n "clawBigLeftShape" -p "clawBigLeft";
	rename -uid "79F639E6-4A3B-2364-CE14-0EB493607207";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.375 0 0.45833334
		 0 0.54166669 0 0.625 0 0.375 0.25 0.45833334 0.25 0.54166669 0.25 0.625 0.25 0.375
		 0.5 0.45833334 0.5 0.54166669 0.5 0.625 0.5 0.375 0.75 0.45833334 0.75 0.54166669
		 0.75 0.625 0.75 0.375 1 0.45833334 1 0.54166669 1 0.625 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.77587211 0.12500012 0.125 0
		 0.375 0 0.375 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  0 -0.10467149 0 0 0.086633168 
		0 0 0.23509452 0 0 0.27248594 0 0 0.10467149 0 0 -0.086633168 0 0 -0.23509452 0 0 
		-0.27248594 0 0 0.10467149 0 0 -0.086633168 0 0 -0.23509452 0 0 -0.27248594 0 0 -0.10467149 
		0 0 0.086633168 0 0 0.23509452 0 0 0.27248594 0 0 0.32333356 0 0 0.32333356 0 0 -0.32333356 
		0 0 -0.32333356 0 0 0 0 0 -0.1739797 0 0 -0.1739797 0 0 0.1739797 0 0 0.1739797 0;
	setAttr -s 25 ".vt[0:24]"  -1.61216736 -0.5 -1.21731567 -1.44748724 -0.5 1.52439022
		 -0.62676656 -0.5 3.35355401 0.72998405 -0.5 4.69600821 -1.61216736 0.5 -1.21731567
		 -1.44748724 0.5 1.52439022 -0.62676656 0.5 3.35355401 0.72998405 0.5 4.69600821 2.52206039 0.5 -0.11352158
		 2.11780834 0.5 1.26151776 2.076127052 0.5 2.49849272 2.27841473 0.5 3.51504278 2.52206039 -0.5 -0.11352158
		 2.11780834 -0.5 1.26151776 2.076127052 -0.5 2.49849272 2.27841473 -0.5 3.51504278
		 3.33685398 -0.5 4.80789089 2.67306995 -0.5 5.54067898 3.33685398 0.5 4.80789089 2.67306995 0.5 5.54067898
		 4.78852367 0 5.97195387 2.88423634 -0.5 -0.95748448 -0.94404358 -0.5 -4.78665495
		 -0.94404358 0.5 -4.78665495 2.88423634 0.5 -0.95748448;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 2 3 0 4 5 0 5 6 0 6 7 0 8 9 0
		 9 10 0 10 11 0 12 13 0 13 14 0 14 15 0 0 4 1 1 5 1 2 6 1 3 7 1 4 8 1 5 9 1 6 10 1
		 7 11 1 8 12 1 9 13 1 10 14 1 11 15 0 12 0 1 13 1 1 14 2 1 15 3 1 15 16 0 3 17 0 16 17 1
		 11 18 0 18 16 1 7 19 0 19 18 1 17 19 1 16 20 0 17 20 0 18 20 0 19 20 0 12 21 0 0 22 0
		 21 22 0 4 23 0 22 23 0 8 24 0 23 24 0 24 21 0;
	setAttr -s 25 -ch 96 ".fc[0:24]" -type "polyFaces" 
		f 4 0 13 -4 -13
		mu 0 4 0 1 5 4
		f 4 1 14 -5 -14
		mu 0 4 1 2 6 5
		f 4 2 15 -6 -15
		mu 0 4 2 3 7 6
		f 4 3 17 -7 -17
		mu 0 4 4 5 9 8
		f 4 4 18 -8 -18
		mu 0 4 5 6 10 9
		f 4 5 19 -9 -19
		mu 0 4 6 7 11 10
		f 4 6 21 -10 -21
		mu 0 4 8 9 13 12
		f 4 7 22 -11 -22
		mu 0 4 9 10 14 13
		f 4 8 23 -12 -23
		mu 0 4 10 11 15 14
		f 4 9 25 -1 -25
		mu 0 4 12 13 17 16
		f 4 10 26 -2 -26
		mu 0 4 13 14 18 17
		f 4 11 27 -3 -27
		mu 0 4 14 15 19 18
		f 4 42 44 46 47
		mu 0 4 29 30 31 32
		f 4 -28 28 30 -30
		mu 0 4 3 20 25 24
		f 4 -24 31 32 -29
		mu 0 4 20 21 26 25
		f 4 -20 33 34 -32
		mu 0 4 21 7 27 26
		f 4 -16 29 35 -34
		mu 0 4 7 3 24 27
		f 3 -31 36 -38
		mu 0 3 24 25 28
		f 3 -33 38 -37
		mu 0 3 25 26 28
		f 3 -35 39 -39
		mu 0 3 26 27 28
		f 3 -36 37 -40
		mu 0 3 27 24 28
		f 4 24 41 -43 -41
		mu 0 4 22 0 30 29
		f 4 12 43 -45 -42
		mu 0 4 0 4 31 30
		f 4 16 45 -47 -44
		mu 0 4 4 23 32 31
		f 4 20 40 -48 -46
		mu 0 4 23 22 29 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "clawSmallLeft" -p "|scorpion|armLeft|clawRight";
	rename -uid "A7F07585-4ADC-B754-2A16-678AAF99C249";
	setAttr ".t" -type "double3" -1.9181403436323268 -0.76869103363759483 2.5077297776216003 ;
	setAttr ".r" -type "double3" 25.397482502753441 -80.448861191846703 156.49364633583829 ;
	setAttr ".s" -type "double3" 0.10302495802358763 0.10302495802358763 0.10302495802358763 ;
createNode mesh -n "clawSmallLeftShape" -p "clawSmallLeft";
	rename -uid "9A0509CF-41F1-94E1-3CDC-3C8DDA74F78A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0.375 0 0.45833334
		 0 0.54166669 0 0.625 0 0.375 0.25 0.45833334 0.25 0.54166669 0.25 0.625 0.25 0.375
		 0.5 0.45833334 0.5 0.54166669 0.5 0.625 0.5 0.375 0.75 0.45833334 0.75 0.54166669
		 0.75 0.625 0.75 0.375 1 0.45833334 1 0.54166669 1 0.625 1 0.875 0 0.875 0.25 0.625
		 0 0.875 0 0.875 0.25 0.625 0.25 0.77587211 0.12500012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[8]" -type "float3" 0.062672712 -0.028559675 -0.48898962 ;
	setAttr ".pt[12]" -type "float3" 0.062672712 -0.028559675 -0.48898962 ;
	setAttr -s 21 ".vt[0:20]"  -1.61216736 -0.60467148 -1.21731567 -1.44748724 -0.41336682 1.52439022
		 -0.62676656 -0.26490548 3.35355401 0.72998405 -0.22751406 4.69600821 -1.61216736 0.60467148 -1.21731567
		 -1.44748724 0.41336682 1.52439022 -0.62676656 0.26490548 3.35355401 0.72998405 0.22751406 4.69600821
		 2.52206039 0.60467148 -0.11352158 2.11780834 0.41336682 1.26151776 2.076127052 0.26490548 2.49849272
		 2.27841473 0.22751406 3.51504278 2.52206039 -0.60467148 -0.11352158 2.11780834 -0.41336682 1.26151776
		 2.076127052 -0.26490548 2.49849272 2.27841473 -0.22751406 3.51504278 3.33685398 -0.17666644 4.80789089
		 2.67306995 -0.17666644 5.54067898 3.33685398 0.17666644 4.80789089 2.67306995 0.17666644 5.54067898
		 4.78852367 0 5.97195387;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 4 5 0 5 6 0 6 7 0 8 9 0
		 9 10 0 10 11 0 12 13 0 13 14 0 14 15 0 0 4 0 1 5 1 2 6 1 3 7 1 4 8 0 5 9 1 6 10 1
		 7 11 1 8 12 0 9 13 1 10 14 1 11 15 0 12 0 0 13 1 1 14 2 1 15 3 1 15 16 0 3 17 0 16 17 1
		 11 18 0 18 16 1 7 19 0 19 18 1 17 19 1 16 20 0 17 20 0 18 20 0 19 20 0;
	setAttr -s 21 -ch 80 ".fc[0:20]" -type "polyFaces" 
		f 4 0 13 -4 -13
		mu 0 4 0 1 5 4
		f 4 1 14 -5 -14
		mu 0 4 1 2 6 5
		f 4 2 15 -6 -15
		mu 0 4 2 3 7 6
		f 4 3 17 -7 -17
		mu 0 4 4 5 9 8
		f 4 4 18 -8 -18
		mu 0 4 5 6 10 9
		f 4 5 19 -9 -19
		mu 0 4 6 7 11 10
		f 4 6 21 -10 -21
		mu 0 4 8 9 13 12
		f 4 7 22 -11 -22
		mu 0 4 9 10 14 13
		f 4 8 23 -12 -23
		mu 0 4 10 11 15 14
		f 4 9 25 -1 -25
		mu 0 4 12 13 17 16
		f 4 10 26 -2 -26
		mu 0 4 13 14 18 17
		f 4 11 27 -3 -27
		mu 0 4 14 15 19 18
		f 4 -28 28 30 -30
		mu 0 4 3 20 23 22
		f 4 -24 31 32 -29
		mu 0 4 20 21 24 23
		f 4 -20 33 34 -32
		mu 0 4 21 7 25 24
		f 4 -16 29 35 -34
		mu 0 4 7 3 22 25
		f 3 -31 36 -38
		mu 0 3 22 23 26
		f 3 -33 38 -37
		mu 0 3 23 24 26
		f 3 -35 39 -39
		mu 0 3 24 25 26
		f 3 -36 37 -40
		mu 0 3 25 22 26
		f 4 16 20 24 12
		mu 0 4 4 8 12 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "clawSmallLeft";
	rename -uid "3E6A9CB2-40E5-FACD-8266-1D8477A03916";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0.375 0 0.45833334
		 0 0.54166669 0 0.625 0 0.375 0.25 0.45833334 0.25 0.54166669 0.25 0.625 0.25 0.375
		 0.5 0.45833334 0.5 0.54166669 0.5 0.625 0.5 0.375 0.75 0.45833334 0.75 0.54166669
		 0.75 0.625 0.75 0.375 1 0.45833334 1 0.54166669 1 0.625 1 0.875 0 0.875 0.25 0.625
		 0 0.875 0 0.875 0.25 0.625 0.25 0.77587211 0.12500012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  -1.61216736 -0.60467148 -1.21731567 -1.44748724 -0.41336682 1.52439022
		 -0.62676656 -0.26490548 3.35355401 0.72998405 -0.22751406 4.69600821 -1.61216736 0.60467148 -1.21731567
		 -1.44748724 0.41336682 1.52439022 -0.62676656 0.26490548 3.35355401 0.72998405 0.22751406 4.69600821
		 2.52206039 0.60467148 -0.11352158 2.11780834 0.41336682 1.26151776 2.076127052 0.26490548 2.49849272
		 2.27841473 0.22751406 3.51504278 2.52206039 -0.60467148 -0.11352158 2.11780834 -0.41336682 1.26151776
		 2.076127052 -0.26490548 2.49849272 2.27841473 -0.22751406 3.51504278 3.33685398 -0.17666644 4.80789089
		 2.67306995 -0.17666644 5.54067898 3.33685398 0.17666644 4.80789089 2.67306995 0.17666644 5.54067898
		 4.78852367 0 5.97195387;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 4 5 0 5 6 0 6 7 0 8 9 0
		 9 10 0 10 11 0 12 13 0 13 14 0 14 15 0 0 4 0 1 5 1 2 6 1 3 7 1 4 8 0 5 9 1 6 10 1
		 7 11 1 8 12 0 9 13 1 10 14 1 11 15 0 12 0 0 13 1 1 14 2 1 15 3 1 15 16 0 3 17 0 16 17 1
		 11 18 0 18 16 1 7 19 0 19 18 1 17 19 1 16 20 0 17 20 0 18 20 0 19 20 0;
	setAttr -s 20 -ch 76 ".fc[0:19]" -type "polyFaces" 
		f 4 0 13 -4 -13
		mu 0 4 0 1 5 4
		f 4 1 14 -5 -14
		mu 0 4 1 2 6 5
		f 4 2 15 -6 -15
		mu 0 4 2 3 7 6
		f 4 3 17 -7 -17
		mu 0 4 4 5 9 8
		f 4 4 18 -8 -18
		mu 0 4 5 6 10 9
		f 4 5 19 -9 -19
		mu 0 4 6 7 11 10
		f 4 6 21 -10 -21
		mu 0 4 8 9 13 12
		f 4 7 22 -11 -22
		mu 0 4 9 10 14 13
		f 4 8 23 -12 -23
		mu 0 4 10 11 15 14
		f 4 9 25 -1 -25
		mu 0 4 12 13 17 16
		f 4 10 26 -2 -26
		mu 0 4 13 14 18 17
		f 4 11 27 -3 -27
		mu 0 4 14 15 19 18
		f 4 -28 28 30 -30
		mu 0 4 3 20 23 22
		f 4 -24 31 32 -29
		mu 0 4 20 21 24 23
		f 4 -20 33 34 -32
		mu 0 4 21 7 25 24
		f 4 -16 29 35 -34
		mu 0 4 7 3 22 25
		f 3 -31 36 -38
		mu 0 3 22 23 26
		f 3 -33 38 -37
		mu 0 3 23 24 26
		f 3 -35 39 -39
		mu 0 3 24 25 26
		f 3 -36 37 -40
		mu 0 3 25 22 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legsRight" -p "scorpion";
	rename -uid "F6DC7186-4C5D-7426-5C2D-EB96E9365952";
	setAttr ".rp" -type "double3" 0 0 -1.3522671536607827 ;
	setAttr ".sp" -type "double3" 0 0 -1.3522671536607827 ;
createNode transform -n "legBackRight" -p "legsRight";
	rename -uid "026CDA03-4875-28F8-3EF9-8DB9289B9D1F";
	setAttr ".t" -type "double3" -0.13395182330570071 -0.31317363985524593 -1.6926682036309559 ;
	setAttr ".r" -type "double3" 0 -12.89027098622995 0 ;
	setAttr ".s" -type "double3" 0.26719579066158072 0.26719579066158072 0.26719579066158072 ;
	setAttr ".rp" -type "double3" -0.46698913320661334 0.0065997281898409789 -0.36161581341622312 ;
	setAttr ".rpt" -type "double3" 0.092439469019518106 0 -0.095065033678413527 ;
	setAttr ".sp" -type "double3" -1.7477413549455303 0.024699970660091441 -1.353373915512879 ;
	setAttr ".spt" -type "double3" 1.2807522217389169 -0.018100242470250463 0.99175810209665594 ;
createNode transform -n "footBackRight" -p "legBackRight";
	rename -uid "CE7F9757-43AD-6D7E-BC16-568FF5DA3E87";
	setAttr ".t" -type "double3" -20.495841326580717 -1.0177744011472301 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999943 0 18.063903730066528 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 3.3994884709322015 0 0 ;
	setAttr ".rpt" -type "double3" -0.16755647362936268 1.0541050368967224 2.9988656149493072e-017 ;
	setAttr ".sp" -type "double3" 3.3994884709322015 0 0 ;
createNode mesh -n "footBackRightShape" -p "footBackRight";
	rename -uid "1E7C7308-492A-C174-01CF-3783403043AD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.58333331 0.5 0.66666663
		 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25 0.083333336
		 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.58333331 0.25 0.66666663
		 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.41666669 0.25 0.41666669
		 0.5 0.25 0.375 0.33333334 0.375 0.41666669 0.375 0.41666669 0.375 0.41666669 0.375
		 0.5 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375 0.83333325
		 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336 0.375 0.16666667 0.375
		 0.95833325 0.25 0.95833325 0.375 0.45833328 0.5 0.95833325 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[0]" -type "float3" 0.02017992 -0.28985041 -0.15127221 ;
	setAttr ".pt[5]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[10]" -type "float3" 0.025889533 -0.26243788 -0.037939087 ;
	setAttr ".pt[11]" -type "float3" 0.02017992 0.28985041 -0.15127221 ;
	setAttr ".pt[12]" -type "float3" 0.047638502 0 -0.032959405 ;
	setAttr ".pt[16]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[17]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[21]" -type "float3" 0.025889533 0.26243788 -0.037939087 ;
	setAttr ".pt[22]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[24]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[26]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[32]" -type "float3" -0.1930242 7.3700858e-018 0.083554931 ;
	setAttr ".pt[37]" -type "float3" 0 2.0094906e-016 0 ;
	setAttr ".pt[41]" -type "float3" 0.060289465 -3.2275145e-017 0.041529823 ;
	setAttr ".pt[42]" -type "float3" 0.15553613 -4.4666122e-017 0.057473816 ;
	setAttr ".pt[45]" -type "float3" -0.024668649 0.21719882 -0.18461378 ;
	setAttr ".pt[46]" -type "float3" -0.024668649 7.2399347e-017 -0.0017049124 ;
	setAttr ".pt[47]" -type "float3" -0.024668649 -0.21719882 -0.18461378 ;
	setAttr -s 48 ".vt[0:47]"  3.17533255 0.5 -0.21370898 2.7726388 0.5 -0.49151334
		 1.07973671 0.5 -0.66901433 0.43106297 0.5 -1.25843799 -0.63195831 0.5 -1.47715807
		 -1.58145428 0.5 -1.73791444 -1.8853091 0.5 -0.91408497 -0.6682812 0.5 -0.68961859
		 0.063656807 0.5 0.32138163 0.99895269 0.5 -0.30368894 2.99829245 0.5 0.32222319 3.17533255 -0.5 -0.21370898
		 2.7726388 -0.5 -0.49151334 1.07973671 -0.5 -0.66901433 0.43106297 -0.5 -1.25843799
		 -0.63195831 -0.5 -1.47715807 -1.58145428 -0.5 -1.73791456 -1.8853091 -0.5 -0.91408497
		 -0.6682812 -0.5 -0.68961859 0.063656807 -0.5 0.32138163 0.99895269 -0.5 -0.30368894
		 2.99829245 -0.5 0.32222319 -2.67246151 0.5 -2.29228878 -2.8498466 0.5 -2.19353032
		 -2.67246151 -0.5 -2.29228878 -2.8498466 -0.5 -2.19353032 -2.85031152 0.5 -1.92414832
		 -2.85031152 -0.5 -1.92414832 -2.41280341 -0.5 -2.30735016 -2.41280341 0.5 -2.30735016
		 0.53243601 2.8429748e-016 -1.62425566 -0.53058529 2.8429748e-016 -1.84297574 -1.48008132 2.8429748e-016 -2.10373211
		 -2.18619084 4.6353785e-017 -2.36699557 -2.67246151 0 -2.29228878 -2.8498466 0 -2.19353032
		 -2.85031152 0 -1.92414832 -1.8853091 0 -0.91408497 -0.6682812 0 -0.68961859 0.063656807 0 0.32138163
		 0.99895269 0 -0.30368894 2.99829245 0 0.32222319 3.2767055 2.8429748e-016 -0.57952666
		 2.87401175 2.8429748e-016 -0.85733104 1.18110967 2.8429748e-016 -1.034832001 3.086812496 -0.5 0.054257102
		 3.13749886 1.4214874e-016 -0.12865174 3.086812496 0.5 0.054257102;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 6 7 0 7 8 0
		 8 9 0 9 10 0 10 47 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 45 0 0 42 0 1 43 0 2 44 0 3 30 0 4 31 0 5 32 1 6 37 1 7 38 0 8 39 0 9 40 0
		 10 41 0 5 29 0 22 23 0 16 28 0 22 34 0 24 25 0 23 35 0 6 26 0 23 26 0 17 27 0 25 27 0
		 26 36 0 28 24 0 29 22 0 28 33 1 30 14 0 31 15 0 30 31 1 32 16 1 31 32 1 33 29 1 32 33 1
		 34 24 0 33 34 1 35 25 0 34 35 1 36 27 0 35 36 1 37 17 1 36 37 1 38 18 0 37 38 1 39 19 0
		 38 39 1 40 20 0 39 40 1 41 21 0 40 41 1 42 11 0 41 46 1 43 12 0 42 43 1 44 13 0 43 44 1
		 44 30 1 45 11 0 46 42 1 45 46 1 47 0 0 46 47 1;
	setAttr -s 34 -ch 160 ".fc[0:33]" -type "polyFaces" 
		f 4 -1 20 71 -22
		mu 0 4 1 0 44 46
		f 4 -2 21 73 -23
		mu 0 4 2 1 46 47
		f 4 -3 22 74 -24
		mu 0 4 3 2 47 32
		f 4 -4 23 47 -25
		mu 0 4 4 3 32 33
		f 4 -5 24 49 -26
		mu 0 4 5 4 33 34
		f 4 -33 34 55 -37
		mu 0 4 24 25 36 37
		f 4 -39 36 57 -42
		mu 0 4 28 24 37 38
		f 4 -6 26 61 -28
		mu 0 4 7 6 39 40
		f 4 -7 27 63 -29
		mu 0 4 8 7 40 41
		f 4 -8 28 65 -30
		mu 0 4 9 8 41 42
		f 4 -9 29 67 -31
		mu 0 4 10 9 42 43
		f 4 -10 30 69 79
		mu 0 4 51 10 43 49
		f 4 25 51 50 -32
		mu 0 4 5 34 35 31
		f 4 -27 37 41 59
		mu 0 4 39 6 28 38
		f 16 1 2 3 4 31 43 32 38 -38 5 6 7 8 9 78 0
		mu 0 16 1 2 3 4 5 31 25 24 28 6 7 8 9 10 50 0
		f 16 -11 -76 -20 -19 -18 -17 -16 39 -41 -36 -43 -34 -15 -14 -13 -12
		mu 0 16 13 23 48 22 21 20 19 18 29 27 26 30 17 16 15 14
		f 4 -51 53 -35 -44
		mu 0 4 31 35 36 25
		f 4 -48 45 13 -47
		mu 0 4 33 32 15 16
		f 4 -50 46 14 -49
		mu 0 4 34 33 16 17
		f 4 -52 48 33 44
		mu 0 4 35 34 17 30
		f 4 -54 -45 42 -53
		mu 0 4 36 35 30 26
		f 4 -56 52 35 -55
		mu 0 4 37 36 26 27
		f 4 -58 54 40 -57
		mu 0 4 38 37 27 29
		f 4 -59 -60 56 -40
		mu 0 4 18 39 38 29
		f 4 -62 58 15 -61
		mu 0 4 40 39 18 19
		f 4 -64 60 16 -63
		mu 0 4 41 40 19 20
		f 4 -66 62 17 -65
		mu 0 4 42 41 20 21
		f 4 -68 64 18 -67
		mu 0 4 43 42 21 22
		f 4 -70 66 19 77
		mu 0 4 49 43 22 48
		f 4 -72 68 10 -71
		mu 0 4 46 44 12 13
		f 4 -74 70 11 -73
		mu 0 4 47 46 13 14
		f 4 -75 72 12 -46
		mu 0 4 32 47 14 15
		f 4 -77 -78 75 -69
		mu 0 4 45 49 48 23
		f 4 -79 -80 76 -21
		mu 0 4 11 51 49 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "footBackRight";
	rename -uid "D9490535-40AC-EEE0-FAF7-53862AA3A916";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999994039535522 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0 0.75 0.083333336
		 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331
		 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75
		 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5
		 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988
		 0.5 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669
		 0 0.5 0 0.58333331 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988
		 0 0.5 0.5 0.41666669 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".vt[0:53]"  2.99634647 -0.50000072 -0.12447663 2.62783647 -0.50000072 -0.3865931
		 1.257532 -0.50000072 -0.74641049 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -0.96576029 -0.50000072 -0.39999956 -1.094287992 -0.50000072 6.4377673e-008 -0.96576029 -0.50000072 0.3999995
		 -0.40000018 -0.50000072 0.74639463 0.82595778 -0.50000072 0.75193137 1.1101222 -0.50000072 0.36778656
		 2.89986706 -0.50000072 0.21567634 2.99634647 0.50000072 -0.12447663 2.62783647 0.50000072 -0.3865931
		 1.257532 0.50000072 -0.74641049 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -0.96576029 0.50000072 -0.39999956 -1.094287992 0.50000072 6.4377673e-008 -0.96576029 0.50000072 0.3999995
		 -0.40000018 0.50000072 0.74639463 0.82595778 0.50000072 0.75193137 1.1101222 0.50000072 0.36778656
		 2.89986706 0.50000072 0.21567634 3.17533255 0.5 -0.21370898 2.7726388 0.5 -0.49151334
		 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 2.99829245 0.5 0.32222319
		 3.17533255 -0.5 -0.21370898 2.7726388 -0.5 -0.49151334 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 2.99829245 -0.5 0.32222319 -3.90912056 0.5 -0.21340971
		 -3.77871704 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -3.77871704 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 96 ".ed[0:95]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 12 24 1 13 25 1 14 26 1
		 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0 25 37 0
		 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1 37 1 1
		 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0 30 49 1
		 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0 52 53 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 -13 48 24 -50
		mu 0 4 1 0 13 14
		f 4 -14 49 25 -51
		mu 0 4 2 1 14 15
		f 4 -15 50 26 -52
		mu 0 4 3 2 15 16
		f 4 -16 51 27 -53
		mu 0 4 4 3 16 17
		f 4 -17 52 28 -54
		mu 0 4 5 4 17 18
		f 4 -18 53 29 -55
		mu 0 4 6 5 18 19
		f 4 -19 54 30 -56
		mu 0 4 7 6 19 20
		f 4 -20 55 31 -57
		mu 0 4 8 7 20 21
		f 4 -21 56 32 -58
		mu 0 4 9 8 21 22
		f 4 -22 57 33 -59
		mu 0 4 10 9 22 23
		f 4 -23 58 34 -60
		mu 0 4 11 10 23 24
		f 4 -24 59 35 -49
		mu 0 4 12 11 24 25
		f 4 -25 60 36 -62
		mu 0 4 14 13 26 27
		f 4 -26 61 37 -63
		mu 0 4 15 14 27 28
		f 4 -27 62 38 -64
		mu 0 4 16 15 28 29
		f 4 -28 63 39 -65
		mu 0 4 17 16 29 30
		f 4 -29 64 40 -66
		mu 0 4 18 17 30 31
		f 4 -86 87 89 -91
		mu 0 4 52 53 54 55
		f 4 -93 90 94 -96
		mu 0 4 56 52 55 57
		f 4 -32 66 43 -68
		mu 0 4 21 20 33 34
		f 4 -33 67 44 -69
		mu 0 4 22 21 34 35
		f 4 -34 68 45 -70
		mu 0 4 23 22 35 36
		f 4 -35 69 46 -71
		mu 0 4 24 23 36 37
		f 4 -36 70 47 -61
		mu 0 4 25 24 37 38
		f 4 -37 71 0 -73
		mu 0 4 27 26 39 40
		f 4 -38 72 1 -74
		mu 0 4 28 27 40 41
		f 4 -39 73 2 -75
		mu 0 4 29 28 41 42
		f 4 -40 74 3 -76
		mu 0 4 30 29 42 43
		f 4 -41 75 4 -77
		mu 0 4 31 30 43 44
		f 4 -42 76 5 -78
		mu 0 4 32 31 44 45
		f 4 -43 77 6 -79
		mu 0 4 33 32 45 46
		f 4 -44 78 7 -80
		mu 0 4 34 33 46 47
		f 4 -45 79 8 -81
		mu 0 4 35 34 47 48
		f 4 -46 80 9 -82
		mu 0 4 36 35 48 49
		f 4 -47 81 10 -83
		mu 0 4 37 36 49 50
		f 4 -48 82 11 -72
		mu 0 4 38 37 50 51
		f 4 -30 83 85 -85
		mu 0 4 19 18 53 52
		f 4 65 86 -88 -84
		mu 0 4 18 31 54 53
		f 4 41 88 -90 -87
		mu 0 4 31 32 55 54
		f 4 -31 84 92 -92
		mu 0 4 20 19 52 56
		f 4 42 93 -95 -89
		mu 0 4 32 33 57 55
		f 4 -67 91 95 -94
		mu 0 4 33 20 56 57;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legBackMidRight" -p "legBackRight";
	rename -uid "9216B89D-4EDE-CDB8-BEA8-DF8C7F36EB6F";
	setAttr ".t" -type "double3" -13.336344007109831 0.010670930974769011 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 -4.7281572832829326 ;
	setAttr ".s" -type "double3" 1 0.83886907588957871 1 ;
	setAttr ".rp" -type "double3" 3.7928186495433174 0 0 ;
	setAttr ".rpt" -type "double3" -0.01290696629890006 -0.31263553092370672 -9.5348656683434232e-018 ;
	setAttr ".sp" -type "double3" 3.7928186495433174 0 0 ;
createNode mesh -n "legBackMidRightShape" -p "legBackMidRight";
	rename -uid "66E4EB5F-4533-24EB-9C28-9590B468F64A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58333331346511841 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.33333334 0.375 0.41666669
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375
		 0.74999994 0.375 0.83333325 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336
		 0.375 0.16666667 0.375 0.25 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[1]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[13]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[24]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[25]" -type "float3" 0.17429079 -0.107757 0.054351158 ;
	setAttr ".pt[35]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[36]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[37]" -type "float3" 0.17429079 0.107757 0.054351158 ;
	setAttr ".pt[47]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[48]" -type "float3" 0.041373458 -0.18694898 0.085845932 ;
	setAttr ".pt[50]" -type "float3" 0.041373458 0.18694898 0.085845932 ;
	setAttr ".pt[52]" -type "float3" 0.13712741 -0.1840795 0.076923326 ;
	setAttr ".pt[53]" -type "float3" 0.13712741 0.1840795 0.076923326 ;
	setAttr ".pt[54]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[55]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[58]" -type "float3" 0.13712741 -2.0361234e-017 0.076923326 ;
	setAttr ".pt[65]" -type "float3" 0.28494743 5.8166192e-016 -0.27127227 ;
	setAttr ".pt[66]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[67]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr -s 68 ".vt[0:67]"  3.33421493 -0.50000072 -7.05768e-010 3.22702837 -0.50000072 -0.39999962
		 1.257532 -0.50000072 -0.74641049 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -0.96576029 -0.50000072 -0.39999956 -1.094287992 -0.50000072 6.4377673e-008 -0.96576029 -0.50000072 0.3999995
		 -0.40000018 -0.50000072 0.74639463 0.82595778 -0.50000072 0.75193137 1.1101222 -0.50000072 0.36778656
		 3.22151446 -0.50000072 0.2959947 3.33421493 0.50000072 -7.0576778e-010 3.22702837 0.50000072 -0.39999962
		 1.257532 0.50000072 -0.74641049 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -0.96576029 0.50000072 -0.39999956 -1.094287992 0.50000072 6.4377673e-008 -0.96576029 0.50000072 0.3999995
		 -0.40000018 0.50000072 0.74639463 0.82595778 0.50000072 0.75193137 1.1101222 0.50000072 0.36778656
		 3.22151446 0.50000072 0.2959947 3.53421092 0.5 1.110223e-016 3.40023637 0.5 -0.49999964
		 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 3.34947515 0.5 0.44969997
		 3.53421092 -0.5 -1.110223e-016 3.40023637 -0.5 -0.49999964 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 3.34947515 -0.5 0.44969997 -3.90912056 0.5 -0.21340971
		 -3.77871704 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -3.77871704 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003 -0.49999952 0 -0.93282592
		 -2.46454144 0 -0.5054397 -3.90912056 0 -0.21340972 -3.77871704 0 8.5410491e-008 -3.90912056 0 0.21341003
		 -2.46454144 0 0.50544006 -0.5 0 0.93301272 0.8891077 0 0.9275071 1.21012211 0 0.55440468
		 3.34947515 0 0.44969997 3.53421092 0 0 3.40023637 0 -0.49999964 1.3575325 0 -0.93282592
		 0.85753298 0 -0.93319947;
	setAttr -s 136 ".ed[0:135]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 64 0
		 25 65 0 26 66 0 27 67 0 28 54 0 29 55 1 31 59 1 32 60 0 33 61 0 34 62 0 35 63 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 56 0 42 51 1 50 51 0 49 57 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 58 0 54 40 0 55 41 1 54 55 1 56 50 0 55 56 1 57 51 0 56 57 1 58 53 0 57 58 1 59 43 1
		 58 59 1 60 44 0 59 60 1 61 45 0 60 61 1 62 46 0 61 62 1 63 47 0 62 63 1 64 36 0 63 64 1
		 65 37 0 64 65 1 66 38 0 65 66 1 67 39 0 66 67 1 67 54 1;
	setAttr -s 68 -ch 272 ".fc[0:67]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 130 -74
		mu 0 4 27 26 81 83
		f 4 -26 73 132 -75
		mu 0 4 28 27 83 84
		f 4 -27 74 134 -76
		mu 0 4 29 28 84 85
		f 4 -28 75 135 -77
		mu 0 4 30 29 85 71
		f 4 -29 76 110 -78
		mu 0 4 31 30 71 72
		f 4 -98 99 114 -103
		mu 0 4 65 66 73 74
		f 4 -105 102 116 -108
		mu 0 4 69 65 74 75
		f 4 -32 78 120 -80
		mu 0 4 34 33 76 77
		f 4 -33 79 122 -81
		mu 0 4 35 34 77 78
		f 4 -34 80 124 -82
		mu 0 4 36 35 78 79
		f 4 -35 81 126 -83
		mu 0 4 37 36 79 80
		f 4 -36 82 128 -73
		mu 0 4 38 37 80 82
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 112 -100 -96
		mu 0 4 31 72 73 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 118
		mu 0 4 76 33 69 75
		f 4 -111 108 40 -110
		mu 0 4 72 71 43 44
		f 4 -113 109 98 -112
		mu 0 4 73 72 44 67
		f 4 -115 111 101 -114
		mu 0 4 74 73 67 68
		f 4 -117 113 106 -116
		mu 0 4 75 74 68 70
		f 4 -118 -119 115 -106
		mu 0 4 46 76 75 70
		f 4 -121 117 43 -120
		mu 0 4 77 76 46 47
		f 4 -123 119 44 -122
		mu 0 4 78 77 47 48
		f 4 -125 121 45 -124
		mu 0 4 79 78 48 49
		f 4 -127 123 46 -126
		mu 0 4 80 79 49 50
		f 4 -129 125 47 -128
		mu 0 4 82 80 50 51
		f 4 -131 127 36 -130
		mu 0 4 83 81 39 40
		f 4 -133 129 37 -132
		mu 0 4 84 83 40 41
		f 4 -135 131 38 -134
		mu 0 4 85 84 41 42
		f 4 -136 133 39 -109
		mu 0 4 71 85 42 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legBackUpperRight" -p "legBackRight";
	rename -uid "359E0624-494D-9844-F110-DCADF91EED59";
	setAttr ".t" -type "double3" -5.4174773092724404 0 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".rp" -type "double3" 3.6022004082668064 0 0 ;
	setAttr ".sp" -type "double3" 3.6022004082668064 0 0 ;
createNode mesh -n "legBackUpperRightShape" -p "legBackUpperRight";
	rename -uid "7FF93127-4184-1BF6-68AB-C68C8AE81E0C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.41666669 0.375 0.5
		 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375 0.83333325
		 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336 0.375 0.16666667 0.375
		 0.25 0.375 0.33333334 0.375 0.41666669 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[48]" -type "float3" 0.027137736 -0.17101918 0.16545191 ;
	setAttr ".pt[50]" -type "float3" 0.027137736 0.1710192 0.16545191 ;
	setAttr ".pt[52]" -type "float3" 0.071364447 -0.17736076 0 ;
	setAttr ".pt[53]" -type "float3" 0.071364447 0.17736076 0 ;
	setAttr ".pt[63]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[64]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[65]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[66]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[67]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr -s 68 ".vt[0:67]"  3.33831835 -0.50000072 -0.13870478 3.22702837 -0.50000072 -0.39999962
		 2.21661711 -0.50000072 -0.61625981 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -2.23738456 -0.50000072 -0.39999956 -2.3659122 -0.50000072 6.4377673e-008 -2.23738456 -0.50000072 0.3999995
		 -0.46211272 -0.50000072 0.29181975 1.34409142 -0.50000072 0.18682003 2.7799623 -0.50000072 0.23629101
		 2.99351096 -0.50000072 -0.060442477 3.33831835 0.50000072 -0.13870478 3.22702837 0.50000072 -0.39999962
		 2.21661711 0.50000072 -0.61625981 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -2.23738456 0.50000072 -0.39999956 -2.3659122 0.50000072 6.4377673e-008 -2.23738456 0.50000072 0.3999995
		 -0.46211264 0.50000072 0.29181975 1.34409142 0.50000072 0.18682003 2.7799623 0.50000072 0.23629101
		 2.99351096 0.50000072 -0.060442477 3.5135324 0.5 -0.042275865 3.40023637 0.5 -0.49999964
		 2.31661773 0.5 -0.80267519 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.43788749 0.5 0.50215149 1.40724134 0.5 0.3623957 2.87996221 0.5 0.42290911 3.12147164 0.5 0.093262792
		 3.5135324 -0.5 -0.042275865 3.40023637 -0.5 -0.49999964 2.31661773 -0.5 -0.80267519
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.43788746 -0.5 0.50215161
		 1.40724134 -0.5 0.3623957 2.87996221 -0.5 0.42290911 3.12147164 -0.5 0.093262792
		 -3.90912056 0.5 -0.45134008 -3.77871704 0.5 6.1950374e-009 -3.90912056 -0.5 -0.45134011
		 -3.77871704 -0.5 6.1950374e-009 -3.90912056 0.5 0.45134038 -3.90912056 -0.5 0.45134038
		 -3.90912056 0 -0.45134008 -3.77871704 0 6.1950374e-009 -3.90912056 0 0.45134038 -2.46454144 0 0.50544006
		 -0.43788749 0 0.50215155 1.40724134 0 0.3623957 2.87996221 0 0.42290911 3.12147164 0 0.093262792
		 3.5135324 0 -0.042275865 3.40023637 0 -0.49999964 2.31661773 0 -0.80267519 0.85753298 0 -0.93319947
		 -0.49999952 0 -0.93282592 -2.46454144 0 -0.5054397;
	setAttr -s 136 ".ed[0:135]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 62 0
		 25 63 0 26 64 0 27 65 0 28 66 0 29 67 1 31 57 1 32 58 0 33 59 0 34 60 0 35 61 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 54 0 42 51 1 50 51 0 49 55 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 56 0 54 50 0 55 51 0 54 55 1 56 53 0 55 56 1 57 43 1 56 57 1 58 44 0 57 58 1 59 45 0
		 58 59 1 60 46 0 59 60 1 61 47 0 60 61 1 62 36 0 61 62 1 63 37 0 62 63 1 64 38 0 63 64 1
		 65 39 0 64 65 1 66 40 0 65 66 1 67 41 1 66 67 1 67 54 1;
	setAttr -s 68 -ch 272 ".fc[0:67]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 126 -74
		mu 0 4 27 26 79 81
		f 4 -26 73 128 -75
		mu 0 4 28 27 81 82
		f 4 -27 74 130 -76
		mu 0 4 29 28 82 83
		f 4 -28 75 132 -77
		mu 0 4 30 29 83 84
		f 4 -29 76 134 -78
		mu 0 4 31 30 84 85
		f 4 -98 99 110 -103
		mu 0 4 65 66 71 72
		f 4 -105 102 112 -108
		mu 0 4 69 65 72 73
		f 4 -32 78 116 -80
		mu 0 4 34 33 74 75
		f 4 -33 79 118 -81
		mu 0 4 35 34 75 76
		f 4 -34 80 120 -82
		mu 0 4 36 35 76 77
		f 4 -35 81 122 -83
		mu 0 4 37 36 77 78
		f 4 -36 82 124 -73
		mu 0 4 38 37 78 80
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 135 -100 -96
		mu 0 4 31 85 71 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 114
		mu 0 4 74 33 69 73
		f 4 -111 108 101 -110
		mu 0 4 72 71 67 68
		f 4 -113 109 106 -112
		mu 0 4 73 72 68 70
		f 4 -114 -115 111 -106
		mu 0 4 46 74 73 70
		f 4 -117 113 43 -116
		mu 0 4 75 74 46 47
		f 4 -119 115 44 -118
		mu 0 4 76 75 47 48
		f 4 -121 117 45 -120
		mu 0 4 77 76 48 49
		f 4 -123 119 46 -122
		mu 0 4 78 77 49 50
		f 4 -125 121 47 -124
		mu 0 4 80 78 50 51
		f 4 -127 123 36 -126
		mu 0 4 81 79 39 40
		f 4 -129 125 37 -128
		mu 0 4 82 81 40 41
		f 4 -131 127 38 -130
		mu 0 4 83 82 41 42
		f 4 -133 129 39 -132
		mu 0 4 84 83 42 43
		f 4 -135 131 40 -134
		mu 0 4 85 84 43 44
		f 4 -136 133 98 -109
		mu 0 4 71 85 44 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "legBackUpperRight";
	rename -uid "A61DBB13-4D38-8493-EC6B-249BC31684B7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.91666656732559204 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0041075833 -6.9104135e-007 -0.13870478 ;
	setAttr ".pt[1]" -type "float3" -2.7790666e-006 -6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[2]" -type "float3" 0.95908505 -6.9104135e-007 0.13015029 ;
	setAttr ".pt[3]" -type "float3" -4.3213367e-007 -6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[4]" -type "float3" -1.0430813e-007 -6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[5]" -type "float3" -1.2716215 -6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[6]" -type "float3" -1.2716281 -6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[7]" -type "float3" -1.2716215 -6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[8]" -type "float3" -0.062112618 -6.8545341e-007 -0.45457488 ;
	setAttr ".pt[9]" -type "float3" 0.51813322 -6.9104135e-007 -0.56511092 ;
	setAttr ".pt[10]" -type "float3" 1.6698401 -6.9104135e-007 -0.13149552 ;
	setAttr ".pt[11]" -type "float3" -0.2279994 -6.9104135e-007 -0.35643774 ;
	setAttr ".pt[12]" -type "float3" 0.0041075833 6.9104135e-007 -0.13870478 ;
	setAttr ".pt[13]" -type "float3" -2.7790666e-006 6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[14]" -type "float3" 0.95908505 6.9104135e-007 0.13015029 ;
	setAttr ".pt[15]" -type "float3" -4.3213367e-007 6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[16]" -type "float3" -1.0430813e-007 6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[17]" -type "float3" -1.2716215 6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[18]" -type "float3" -1.2716281 6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[19]" -type "float3" -1.2716215 6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[20]" -type "float3" -0.062112551 6.9476664e-007 -0.45457488 ;
	setAttr ".pt[21]" -type "float3" 0.51813322 6.9104135e-007 -0.56511092 ;
	setAttr ".pt[22]" -type "float3" 1.6698401 6.9104135e-007 -0.13149552 ;
	setAttr ".pt[23]" -type "float3" -0.2279994 6.9104135e-007 -0.35643774 ;
	setAttr ".pt[24]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[26]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.17676353 ;
	setAttr ".pt[30]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[32]" -type "float3" 0.062112514 0 -0.4308612 ;
	setAttr ".pt[33]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[34]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[35]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[36]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[38]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.17676358 ;
	setAttr ".pt[42]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[43]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[44]" -type "float3" 0.06211254 1.8626451e-009 -0.43086109 ;
	setAttr ".pt[45]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[46]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[47]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.23793036 ;
	setAttr ".pt[49]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.23793039 ;
	setAttr ".pt[51]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[52]" -type "float3" 0 0 0.23793036 ;
	setAttr ".pt[53]" -type "float3" 0 0 0.23793036 ;
	setAttr -s 54 ".vt[0:53]"  3.33421087 -0.5 -1.110223e-016 3.22703123 -0.5 -0.40000007
		 1.25753212 -0.5 -0.74641007 0.85753298 -0.5 -0.74641001 -0.39999962 -0.5 -0.74641007
		 -0.96576309 -0.5 -0.39999995 -1.094284058 -0.5 5.9604645e-008 -0.96576309 -0.5 0.40000004
		 -0.4000001 -0.5 0.74639463 0.82595825 -0.5 0.75193095 1.1101222 -0.5 0.36778653 3.22151041 -0.5 0.29599527
		 3.33421087 0.5 1.110223e-016 3.22703123 0.5 -0.40000007 1.25753212 0.5 -0.74641007
		 0.85753298 0.5 -0.74641001 -0.39999962 0.5 -0.74641007 -0.96576309 0.5 -0.39999995
		 -1.094284058 0.5 5.9604645e-008 -0.96576309 0.5 0.40000004 -0.4000001 0.5 0.74639463
		 0.82595825 0.5 0.75193095 1.1101222 0.5 0.36778653 3.22151041 0.5 0.29599527 3.53421092 0.5 1.110223e-016
		 3.40023637 0.5 -0.49999964 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.32867613 -2.56232929 0.5 5.1058404e-008 -2.46454144 0.5 0.32867646
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 3.34947515 0.5 0.44969997
		 3.53421092 -0.5 -1.110223e-016 3.40023637 -0.5 -0.49999964 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.32867616
		 -2.56232929 -0.5 5.1058404e-008 -2.46454144 -0.5 0.32867646 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 3.34947515 -0.5 0.44969997 -3.90912056 0.5 -0.21340971
		 -4.0069084167 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -4.0069084167 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 108 ".ed[0:107]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 53 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 36 -74
		mu 0 4 27 26 39 40
		f 4 -26 73 37 -75
		mu 0 4 28 27 40 41
		f 4 -27 74 38 -76
		mu 0 4 29 28 41 42
		f 4 -28 75 39 -77
		mu 0 4 30 29 42 43
		f 4 -29 76 40 -78
		mu 0 4 31 30 43 44
		f 4 -98 99 101 -103
		mu 0 4 65 66 67 68
		f 4 -105 102 106 -108
		mu 0 4 69 65 68 70
		f 4 -32 78 43 -80
		mu 0 4 34 33 46 47
		f 4 -33 79 44 -81
		mu 0 4 35 34 47 48
		f 4 -34 80 45 -82
		mu 0 4 36 35 48 49
		f 4 -35 81 46 -83
		mu 0 4 37 36 49 50
		f 4 -36 82 47 -73
		mu 0 4 38 37 50 51
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 98 -100 -96
		mu 0 4 31 44 67 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 -106
		mu 0 4 46 33 69 70;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legMidRight" -p "legsRight";
	rename -uid "557989D5-4C18-A7CB-3F00-7E8AFEDC64CA";
	setAttr ".t" -type "double3" -0.16322988055354598 -0.31317363985524593 -1.0857241666237676 ;
	setAttr ".r" -type "double3" 0 0.64112491190878185 0 ;
	setAttr ".s" -type "double3" 0.26719579066158078 0.26719579066158072 0.26719579066158078 ;
	setAttr ".rp" -type "double3" -0.46698913320661367 0.0065997281898409789 -0.3616158134162234 ;
	setAttr ".rpt" -type "double3" -0.0040170670999827929 0 0.0052480170057122291 ;
	setAttr ".sp" -type "double3" -1.7477413549455303 0.024699970660091441 -1.353373915512879 ;
	setAttr ".spt" -type "double3" 1.2807522217389167 -0.018100242470250463 0.99175810209665571 ;
createNode transform -n "footMidRight" -p "legMidRight";
	rename -uid "3652B301-46DA-892D-1FFB-C799689E739D";
	setAttr ".t" -type "double3" -20.495841326580717 -1.0177744011472301 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999943 0 18.063903730066528 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 3.3994884709322015 0 0 ;
	setAttr ".rpt" -type "double3" -0.16755647362936268 1.0541050368967224 2.9988656149493072e-017 ;
	setAttr ".sp" -type "double3" 3.3994884709322015 0 0 ;
createNode mesh -n "footMidRightShape" -p "footMidRight";
	rename -uid "55B9EBD8-44E1-C137-6DDB-2BA735D33C28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.58333331 0.5 0.66666663
		 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25 0.083333336
		 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.58333331 0.25 0.66666663
		 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.41666669 0.25 0.41666669
		 0.5 0.25 0.375 0.33333334 0.375 0.41666669 0.375 0.41666669 0.375 0.41666669 0.375
		 0.5 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375 0.83333325
		 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336 0.375 0.16666667 0.375
		 0.95833325 0.25 0.95833325 0.375 0.45833328 0.5 0.95833325 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[0]" -type "float3" 0.02017992 -0.28985041 -0.15127221 ;
	setAttr ".pt[5]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[10]" -type "float3" 0.025889533 -0.26243788 -0.037939087 ;
	setAttr ".pt[11]" -type "float3" 0.02017992 0.28985041 -0.15127221 ;
	setAttr ".pt[12]" -type "float3" 0.047638502 0 -0.032959405 ;
	setAttr ".pt[16]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[17]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[21]" -type "float3" 0.025889533 0.26243788 -0.037939087 ;
	setAttr ".pt[22]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[24]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[26]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[32]" -type "float3" -0.1930242 7.3700858e-018 0.083554931 ;
	setAttr ".pt[37]" -type "float3" 0 2.0094906e-016 0 ;
	setAttr ".pt[41]" -type "float3" 0.060289465 -3.2275145e-017 0.041529823 ;
	setAttr ".pt[42]" -type "float3" 0.15553613 -4.4666122e-017 0.057473816 ;
	setAttr ".pt[45]" -type "float3" -0.024668649 0.21719882 -0.18461378 ;
	setAttr ".pt[46]" -type "float3" -0.024668649 7.2399347e-017 -0.0017049124 ;
	setAttr ".pt[47]" -type "float3" -0.024668649 -0.21719882 -0.18461378 ;
	setAttr -s 48 ".vt[0:47]"  3.17533255 0.5 -0.21370898 2.7726388 0.5 -0.49151334
		 1.07973671 0.5 -0.66901433 0.43106297 0.5 -1.25843799 -0.63195831 0.5 -1.47715807
		 -1.58145428 0.5 -1.73791444 -1.8853091 0.5 -0.91408497 -0.6682812 0.5 -0.68961859
		 0.063656807 0.5 0.32138163 0.99895269 0.5 -0.30368894 2.99829245 0.5 0.32222319 3.17533255 -0.5 -0.21370898
		 2.7726388 -0.5 -0.49151334 1.07973671 -0.5 -0.66901433 0.43106297 -0.5 -1.25843799
		 -0.63195831 -0.5 -1.47715807 -1.58145428 -0.5 -1.73791456 -1.8853091 -0.5 -0.91408497
		 -0.6682812 -0.5 -0.68961859 0.063656807 -0.5 0.32138163 0.99895269 -0.5 -0.30368894
		 2.99829245 -0.5 0.32222319 -2.67246151 0.5 -2.29228878 -2.8498466 0.5 -2.19353032
		 -2.67246151 -0.5 -2.29228878 -2.8498466 -0.5 -2.19353032 -2.85031152 0.5 -1.92414832
		 -2.85031152 -0.5 -1.92414832 -2.41280341 -0.5 -2.30735016 -2.41280341 0.5 -2.30735016
		 0.53243601 2.8429748e-016 -1.62425566 -0.53058529 2.8429748e-016 -1.84297574 -1.48008132 2.8429748e-016 -2.10373211
		 -2.18619084 4.6353785e-017 -2.36699557 -2.67246151 0 -2.29228878 -2.8498466 0 -2.19353032
		 -2.85031152 0 -1.92414832 -1.8853091 0 -0.91408497 -0.6682812 0 -0.68961859 0.063656807 0 0.32138163
		 0.99895269 0 -0.30368894 2.99829245 0 0.32222319 3.2767055 2.8429748e-016 -0.57952666
		 2.87401175 2.8429748e-016 -0.85733104 1.18110967 2.8429748e-016 -1.034832001 3.086812496 -0.5 0.054257102
		 3.13749886 1.4214874e-016 -0.12865174 3.086812496 0.5 0.054257102;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 6 7 0 7 8 0
		 8 9 0 9 10 0 10 47 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 45 0 0 42 0 1 43 0 2 44 0 3 30 0 4 31 0 5 32 1 6 37 1 7 38 0 8 39 0 9 40 0
		 10 41 0 5 29 0 22 23 0 16 28 0 22 34 0 24 25 0 23 35 0 6 26 0 23 26 0 17 27 0 25 27 0
		 26 36 0 28 24 0 29 22 0 28 33 1 30 14 0 31 15 0 30 31 1 32 16 1 31 32 1 33 29 1 32 33 1
		 34 24 0 33 34 1 35 25 0 34 35 1 36 27 0 35 36 1 37 17 1 36 37 1 38 18 0 37 38 1 39 19 0
		 38 39 1 40 20 0 39 40 1 41 21 0 40 41 1 42 11 0 41 46 1 43 12 0 42 43 1 44 13 0 43 44 1
		 44 30 1 45 11 0 46 42 1 45 46 1 47 0 0 46 47 1;
	setAttr -s 34 -ch 160 ".fc[0:33]" -type "polyFaces" 
		f 4 -1 20 71 -22
		mu 0 4 1 0 44 46
		f 4 -2 21 73 -23
		mu 0 4 2 1 46 47
		f 4 -3 22 74 -24
		mu 0 4 3 2 47 32
		f 4 -4 23 47 -25
		mu 0 4 4 3 32 33
		f 4 -5 24 49 -26
		mu 0 4 5 4 33 34
		f 4 -33 34 55 -37
		mu 0 4 24 25 36 37
		f 4 -39 36 57 -42
		mu 0 4 28 24 37 38
		f 4 -6 26 61 -28
		mu 0 4 7 6 39 40
		f 4 -7 27 63 -29
		mu 0 4 8 7 40 41
		f 4 -8 28 65 -30
		mu 0 4 9 8 41 42
		f 4 -9 29 67 -31
		mu 0 4 10 9 42 43
		f 4 -10 30 69 79
		mu 0 4 51 10 43 49
		f 4 25 51 50 -32
		mu 0 4 5 34 35 31
		f 4 -27 37 41 59
		mu 0 4 39 6 28 38
		f 16 1 2 3 4 31 43 32 38 -38 5 6 7 8 9 78 0
		mu 0 16 1 2 3 4 5 31 25 24 28 6 7 8 9 10 50 0
		f 16 -11 -76 -20 -19 -18 -17 -16 39 -41 -36 -43 -34 -15 -14 -13 -12
		mu 0 16 13 23 48 22 21 20 19 18 29 27 26 30 17 16 15 14
		f 4 -51 53 -35 -44
		mu 0 4 31 35 36 25
		f 4 -48 45 13 -47
		mu 0 4 33 32 15 16
		f 4 -50 46 14 -49
		mu 0 4 34 33 16 17
		f 4 -52 48 33 44
		mu 0 4 35 34 17 30
		f 4 -54 -45 42 -53
		mu 0 4 36 35 30 26
		f 4 -56 52 35 -55
		mu 0 4 37 36 26 27
		f 4 -58 54 40 -57
		mu 0 4 38 37 27 29
		f 4 -59 -60 56 -40
		mu 0 4 18 39 38 29
		f 4 -62 58 15 -61
		mu 0 4 40 39 18 19
		f 4 -64 60 16 -63
		mu 0 4 41 40 19 20
		f 4 -66 62 17 -65
		mu 0 4 42 41 20 21
		f 4 -68 64 18 -67
		mu 0 4 43 42 21 22
		f 4 -70 66 19 77
		mu 0 4 49 43 22 48
		f 4 -72 68 10 -71
		mu 0 4 46 44 12 13
		f 4 -74 70 11 -73
		mu 0 4 47 46 13 14
		f 4 -75 72 12 -46
		mu 0 4 32 47 14 15
		f 4 -77 -78 75 -69
		mu 0 4 45 49 48 23
		f 4 -79 -80 76 -21
		mu 0 4 11 51 49 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "footMidRight";
	rename -uid "C22D48B2-42E5-E029-1E92-F68409A3BB59";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999994039535522 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0 0.75 0.083333336
		 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331
		 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75
		 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5
		 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988
		 0.5 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669
		 0 0.5 0 0.58333331 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988
		 0 0.5 0.5 0.41666669 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".vt[0:53]"  2.99634647 -0.50000072 -0.12447663 2.62783647 -0.50000072 -0.3865931
		 1.257532 -0.50000072 -0.74641049 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -0.96576029 -0.50000072 -0.39999956 -1.094287992 -0.50000072 6.4377673e-008 -0.96576029 -0.50000072 0.3999995
		 -0.40000018 -0.50000072 0.74639463 0.82595778 -0.50000072 0.75193137 1.1101222 -0.50000072 0.36778656
		 2.89986706 -0.50000072 0.21567634 2.99634647 0.50000072 -0.12447663 2.62783647 0.50000072 -0.3865931
		 1.257532 0.50000072 -0.74641049 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -0.96576029 0.50000072 -0.39999956 -1.094287992 0.50000072 6.4377673e-008 -0.96576029 0.50000072 0.3999995
		 -0.40000018 0.50000072 0.74639463 0.82595778 0.50000072 0.75193137 1.1101222 0.50000072 0.36778656
		 2.89986706 0.50000072 0.21567634 3.17533255 0.5 -0.21370898 2.7726388 0.5 -0.49151334
		 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 2.99829245 0.5 0.32222319
		 3.17533255 -0.5 -0.21370898 2.7726388 -0.5 -0.49151334 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 2.99829245 -0.5 0.32222319 -3.90912056 0.5 -0.21340971
		 -3.77871704 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -3.77871704 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 96 ".ed[0:95]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 12 24 1 13 25 1 14 26 1
		 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0 25 37 0
		 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1 37 1 1
		 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0 30 49 1
		 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0 52 53 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 -13 48 24 -50
		mu 0 4 1 0 13 14
		f 4 -14 49 25 -51
		mu 0 4 2 1 14 15
		f 4 -15 50 26 -52
		mu 0 4 3 2 15 16
		f 4 -16 51 27 -53
		mu 0 4 4 3 16 17
		f 4 -17 52 28 -54
		mu 0 4 5 4 17 18
		f 4 -18 53 29 -55
		mu 0 4 6 5 18 19
		f 4 -19 54 30 -56
		mu 0 4 7 6 19 20
		f 4 -20 55 31 -57
		mu 0 4 8 7 20 21
		f 4 -21 56 32 -58
		mu 0 4 9 8 21 22
		f 4 -22 57 33 -59
		mu 0 4 10 9 22 23
		f 4 -23 58 34 -60
		mu 0 4 11 10 23 24
		f 4 -24 59 35 -49
		mu 0 4 12 11 24 25
		f 4 -25 60 36 -62
		mu 0 4 14 13 26 27
		f 4 -26 61 37 -63
		mu 0 4 15 14 27 28
		f 4 -27 62 38 -64
		mu 0 4 16 15 28 29
		f 4 -28 63 39 -65
		mu 0 4 17 16 29 30
		f 4 -29 64 40 -66
		mu 0 4 18 17 30 31
		f 4 -86 87 89 -91
		mu 0 4 52 53 54 55
		f 4 -93 90 94 -96
		mu 0 4 56 52 55 57
		f 4 -32 66 43 -68
		mu 0 4 21 20 33 34
		f 4 -33 67 44 -69
		mu 0 4 22 21 34 35
		f 4 -34 68 45 -70
		mu 0 4 23 22 35 36
		f 4 -35 69 46 -71
		mu 0 4 24 23 36 37
		f 4 -36 70 47 -61
		mu 0 4 25 24 37 38
		f 4 -37 71 0 -73
		mu 0 4 27 26 39 40
		f 4 -38 72 1 -74
		mu 0 4 28 27 40 41
		f 4 -39 73 2 -75
		mu 0 4 29 28 41 42
		f 4 -40 74 3 -76
		mu 0 4 30 29 42 43
		f 4 -41 75 4 -77
		mu 0 4 31 30 43 44
		f 4 -42 76 5 -78
		mu 0 4 32 31 44 45
		f 4 -43 77 6 -79
		mu 0 4 33 32 45 46
		f 4 -44 78 7 -80
		mu 0 4 34 33 46 47
		f 4 -45 79 8 -81
		mu 0 4 35 34 47 48
		f 4 -46 80 9 -82
		mu 0 4 36 35 48 49
		f 4 -47 81 10 -83
		mu 0 4 37 36 49 50
		f 4 -48 82 11 -72
		mu 0 4 38 37 50 51
		f 4 -30 83 85 -85
		mu 0 4 19 18 53 52
		f 4 65 86 -88 -84
		mu 0 4 18 31 54 53
		f 4 41 88 -90 -87
		mu 0 4 31 32 55 54
		f 4 -31 84 92 -92
		mu 0 4 20 19 52 56
		f 4 42 93 -95 -89
		mu 0 4 32 33 57 55
		f 4 -67 91 95 -94
		mu 0 4 33 20 56 57;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legMidMidRight" -p "legMidRight";
	rename -uid "0599879F-46B5-7325-2168-25B48CB926F9";
	setAttr ".t" -type "double3" -13.336344007109831 0.010670930974769011 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 -4.7281572832829326 ;
	setAttr ".s" -type "double3" 1 0.83886907588957871 1 ;
	setAttr ".rp" -type "double3" 3.7928186495433174 0 0 ;
	setAttr ".rpt" -type "double3" -0.01290696629890006 -0.31263553092370672 -9.5348656683434232e-018 ;
	setAttr ".sp" -type "double3" 3.7928186495433174 0 0 ;
createNode mesh -n "legMidMidRightShape" -p "legMidMidRight";
	rename -uid "4CC14FCA-4007-B884-E8F3-13AE2823B0FA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58333331346511841 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.33333334 0.375 0.41666669
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375
		 0.74999994 0.375 0.83333325 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336
		 0.375 0.16666667 0.375 0.25 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[1]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[13]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[24]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[25]" -type "float3" 0.17429079 -0.107757 0.054351158 ;
	setAttr ".pt[35]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[36]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[37]" -type "float3" 0.17429079 0.107757 0.054351158 ;
	setAttr ".pt[47]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[48]" -type "float3" 0.041373458 -0.18694898 0.085845932 ;
	setAttr ".pt[50]" -type "float3" 0.041373458 0.18694898 0.085845932 ;
	setAttr ".pt[52]" -type "float3" 0.13712741 -0.1840795 0.076923326 ;
	setAttr ".pt[53]" -type "float3" 0.13712741 0.1840795 0.076923326 ;
	setAttr ".pt[54]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[55]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[58]" -type "float3" 0.13712741 -2.0361234e-017 0.076923326 ;
	setAttr ".pt[65]" -type "float3" 0.28494743 5.8166192e-016 -0.27127227 ;
	setAttr ".pt[66]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[67]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr -s 68 ".vt[0:67]"  3.33421493 -0.50000072 -7.05768e-010 3.22702837 -0.50000072 -0.39999962
		 1.257532 -0.50000072 -0.74641049 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -0.96576029 -0.50000072 -0.39999956 -1.094287992 -0.50000072 6.4377673e-008 -0.96576029 -0.50000072 0.3999995
		 -0.40000018 -0.50000072 0.74639463 0.82595778 -0.50000072 0.75193137 1.1101222 -0.50000072 0.36778656
		 3.22151446 -0.50000072 0.2959947 3.33421493 0.50000072 -7.0576778e-010 3.22702837 0.50000072 -0.39999962
		 1.257532 0.50000072 -0.74641049 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -0.96576029 0.50000072 -0.39999956 -1.094287992 0.50000072 6.4377673e-008 -0.96576029 0.50000072 0.3999995
		 -0.40000018 0.50000072 0.74639463 0.82595778 0.50000072 0.75193137 1.1101222 0.50000072 0.36778656
		 3.22151446 0.50000072 0.2959947 3.53421092 0.5 1.110223e-016 3.40023637 0.5 -0.49999964
		 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 3.34947515 0.5 0.44969997
		 3.53421092 -0.5 -1.110223e-016 3.40023637 -0.5 -0.49999964 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 3.34947515 -0.5 0.44969997 -3.90912056 0.5 -0.21340971
		 -3.77871704 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -3.77871704 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003 -0.49999952 0 -0.93282592
		 -2.46454144 0 -0.5054397 -3.90912056 0 -0.21340972 -3.77871704 0 8.5410491e-008 -3.90912056 0 0.21341003
		 -2.46454144 0 0.50544006 -0.5 0 0.93301272 0.8891077 0 0.9275071 1.21012211 0 0.55440468
		 3.34947515 0 0.44969997 3.53421092 0 0 3.40023637 0 -0.49999964 1.3575325 0 -0.93282592
		 0.85753298 0 -0.93319947;
	setAttr -s 136 ".ed[0:135]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 64 0
		 25 65 0 26 66 0 27 67 0 28 54 0 29 55 1 31 59 1 32 60 0 33 61 0 34 62 0 35 63 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 56 0 42 51 1 50 51 0 49 57 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 58 0 54 40 0 55 41 1 54 55 1 56 50 0 55 56 1 57 51 0 56 57 1 58 53 0 57 58 1 59 43 1
		 58 59 1 60 44 0 59 60 1 61 45 0 60 61 1 62 46 0 61 62 1 63 47 0 62 63 1 64 36 0 63 64 1
		 65 37 0 64 65 1 66 38 0 65 66 1 67 39 0 66 67 1 67 54 1;
	setAttr -s 68 -ch 272 ".fc[0:67]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 130 -74
		mu 0 4 27 26 81 83
		f 4 -26 73 132 -75
		mu 0 4 28 27 83 84
		f 4 -27 74 134 -76
		mu 0 4 29 28 84 85
		f 4 -28 75 135 -77
		mu 0 4 30 29 85 71
		f 4 -29 76 110 -78
		mu 0 4 31 30 71 72
		f 4 -98 99 114 -103
		mu 0 4 65 66 73 74
		f 4 -105 102 116 -108
		mu 0 4 69 65 74 75
		f 4 -32 78 120 -80
		mu 0 4 34 33 76 77
		f 4 -33 79 122 -81
		mu 0 4 35 34 77 78
		f 4 -34 80 124 -82
		mu 0 4 36 35 78 79
		f 4 -35 81 126 -83
		mu 0 4 37 36 79 80
		f 4 -36 82 128 -73
		mu 0 4 38 37 80 82
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 112 -100 -96
		mu 0 4 31 72 73 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 118
		mu 0 4 76 33 69 75
		f 4 -111 108 40 -110
		mu 0 4 72 71 43 44
		f 4 -113 109 98 -112
		mu 0 4 73 72 44 67
		f 4 -115 111 101 -114
		mu 0 4 74 73 67 68
		f 4 -117 113 106 -116
		mu 0 4 75 74 68 70
		f 4 -118 -119 115 -106
		mu 0 4 46 76 75 70
		f 4 -121 117 43 -120
		mu 0 4 77 76 46 47
		f 4 -123 119 44 -122
		mu 0 4 78 77 47 48
		f 4 -125 121 45 -124
		mu 0 4 79 78 48 49
		f 4 -127 123 46 -126
		mu 0 4 80 79 49 50
		f 4 -129 125 47 -128
		mu 0 4 82 80 50 51
		f 4 -131 127 36 -130
		mu 0 4 83 81 39 40
		f 4 -133 129 37 -132
		mu 0 4 84 83 40 41
		f 4 -135 131 38 -134
		mu 0 4 85 84 41 42
		f 4 -136 133 39 -109
		mu 0 4 71 85 42 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legMidUpperRight" -p "legMidRight";
	rename -uid "0F33AD97-4EAA-DF1D-5025-25A77A479A20";
	setAttr ".t" -type "double3" -5.4174773092724404 0 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".rp" -type "double3" 3.6022004082668064 0 0 ;
	setAttr ".sp" -type "double3" 3.6022004082668064 0 0 ;
createNode mesh -n "legMidUpperRightShape" -p "legMidUpperRight";
	rename -uid "B54CBF2A-4380-17E1-30F8-A4A14D0BAC54";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.41666669 0.375 0.5
		 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375 0.83333325
		 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336 0.375 0.16666667 0.375
		 0.25 0.375 0.33333334 0.375 0.41666669 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[48]" -type "float3" 0.027137736 -0.17101918 0.16545191 ;
	setAttr ".pt[50]" -type "float3" 0.027137736 0.1710192 0.16545191 ;
	setAttr ".pt[52]" -type "float3" 0.071364447 -0.17736076 0 ;
	setAttr ".pt[53]" -type "float3" 0.071364447 0.17736076 0 ;
	setAttr ".pt[63]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[64]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[65]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[66]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[67]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr -s 68 ".vt[0:67]"  3.33831835 -0.50000072 -0.13870478 3.22702837 -0.50000072 -0.39999962
		 2.21661711 -0.50000072 -0.61625981 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -2.23738456 -0.50000072 -0.39999956 -2.3659122 -0.50000072 6.4377673e-008 -2.23738456 -0.50000072 0.3999995
		 -0.46211272 -0.50000072 0.29181975 1.34409142 -0.50000072 0.18682003 2.7799623 -0.50000072 0.23629101
		 2.99351096 -0.50000072 -0.060442477 3.33831835 0.50000072 -0.13870478 3.22702837 0.50000072 -0.39999962
		 2.21661711 0.50000072 -0.61625981 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -2.23738456 0.50000072 -0.39999956 -2.3659122 0.50000072 6.4377673e-008 -2.23738456 0.50000072 0.3999995
		 -0.46211264 0.50000072 0.29181975 1.34409142 0.50000072 0.18682003 2.7799623 0.50000072 0.23629101
		 2.99351096 0.50000072 -0.060442477 3.5135324 0.5 -0.042275865 3.40023637 0.5 -0.49999964
		 2.31661773 0.5 -0.80267519 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.43788749 0.5 0.50215149 1.40724134 0.5 0.3623957 2.87996221 0.5 0.42290911 3.12147164 0.5 0.093262792
		 3.5135324 -0.5 -0.042275865 3.40023637 -0.5 -0.49999964 2.31661773 -0.5 -0.80267519
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.43788746 -0.5 0.50215161
		 1.40724134 -0.5 0.3623957 2.87996221 -0.5 0.42290911 3.12147164 -0.5 0.093262792
		 -3.90912056 0.5 -0.45134008 -3.77871704 0.5 6.1950374e-009 -3.90912056 -0.5 -0.45134011
		 -3.77871704 -0.5 6.1950374e-009 -3.90912056 0.5 0.45134038 -3.90912056 -0.5 0.45134038
		 -3.90912056 0 -0.45134008 -3.77871704 0 6.1950374e-009 -3.90912056 0 0.45134038 -2.46454144 0 0.50544006
		 -0.43788749 0 0.50215155 1.40724134 0 0.3623957 2.87996221 0 0.42290911 3.12147164 0 0.093262792
		 3.5135324 0 -0.042275865 3.40023637 0 -0.49999964 2.31661773 0 -0.80267519 0.85753298 0 -0.93319947
		 -0.49999952 0 -0.93282592 -2.46454144 0 -0.5054397;
	setAttr -s 136 ".ed[0:135]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 62 0
		 25 63 0 26 64 0 27 65 0 28 66 0 29 67 1 31 57 1 32 58 0 33 59 0 34 60 0 35 61 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 54 0 42 51 1 50 51 0 49 55 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 56 0 54 50 0 55 51 0 54 55 1 56 53 0 55 56 1 57 43 1 56 57 1 58 44 0 57 58 1 59 45 0
		 58 59 1 60 46 0 59 60 1 61 47 0 60 61 1 62 36 0 61 62 1 63 37 0 62 63 1 64 38 0 63 64 1
		 65 39 0 64 65 1 66 40 0 65 66 1 67 41 1 66 67 1 67 54 1;
	setAttr -s 68 -ch 272 ".fc[0:67]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 126 -74
		mu 0 4 27 26 79 81
		f 4 -26 73 128 -75
		mu 0 4 28 27 81 82
		f 4 -27 74 130 -76
		mu 0 4 29 28 82 83
		f 4 -28 75 132 -77
		mu 0 4 30 29 83 84
		f 4 -29 76 134 -78
		mu 0 4 31 30 84 85
		f 4 -98 99 110 -103
		mu 0 4 65 66 71 72
		f 4 -105 102 112 -108
		mu 0 4 69 65 72 73
		f 4 -32 78 116 -80
		mu 0 4 34 33 74 75
		f 4 -33 79 118 -81
		mu 0 4 35 34 75 76
		f 4 -34 80 120 -82
		mu 0 4 36 35 76 77
		f 4 -35 81 122 -83
		mu 0 4 37 36 77 78
		f 4 -36 82 124 -73
		mu 0 4 38 37 78 80
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 135 -100 -96
		mu 0 4 31 85 71 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 114
		mu 0 4 74 33 69 73
		f 4 -111 108 101 -110
		mu 0 4 72 71 67 68
		f 4 -113 109 106 -112
		mu 0 4 73 72 68 70
		f 4 -114 -115 111 -106
		mu 0 4 46 74 73 70
		f 4 -117 113 43 -116
		mu 0 4 75 74 46 47
		f 4 -119 115 44 -118
		mu 0 4 76 75 47 48
		f 4 -121 117 45 -120
		mu 0 4 77 76 48 49
		f 4 -123 119 46 -122
		mu 0 4 78 77 49 50
		f 4 -125 121 47 -124
		mu 0 4 80 78 50 51
		f 4 -127 123 36 -126
		mu 0 4 81 79 39 40
		f 4 -129 125 37 -128
		mu 0 4 82 81 40 41
		f 4 -131 127 38 -130
		mu 0 4 83 82 41 42
		f 4 -133 129 39 -132
		mu 0 4 84 83 42 43
		f 4 -135 131 40 -134
		mu 0 4 85 84 43 44
		f 4 -136 133 98 -109
		mu 0 4 71 85 44 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "legMidUpperRight";
	rename -uid "52A072F9-4516-0D79-57BA-2886A511FA4A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.91666656732559204 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0041075833 -6.9104135e-007 -0.13870478 ;
	setAttr ".pt[1]" -type "float3" -2.7790666e-006 -6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[2]" -type "float3" 0.95908505 -6.9104135e-007 0.13015029 ;
	setAttr ".pt[3]" -type "float3" -4.3213367e-007 -6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[4]" -type "float3" -1.0430813e-007 -6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[5]" -type "float3" -1.2716215 -6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[6]" -type "float3" -1.2716281 -6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[7]" -type "float3" -1.2716215 -6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[8]" -type "float3" -0.062112618 -6.8545341e-007 -0.45457488 ;
	setAttr ".pt[9]" -type "float3" 0.51813322 -6.9104135e-007 -0.56511092 ;
	setAttr ".pt[10]" -type "float3" 1.6698401 -6.9104135e-007 -0.13149552 ;
	setAttr ".pt[11]" -type "float3" -0.2279994 -6.9104135e-007 -0.35643774 ;
	setAttr ".pt[12]" -type "float3" 0.0041075833 6.9104135e-007 -0.13870478 ;
	setAttr ".pt[13]" -type "float3" -2.7790666e-006 6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[14]" -type "float3" 0.95908505 6.9104135e-007 0.13015029 ;
	setAttr ".pt[15]" -type "float3" -4.3213367e-007 6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[16]" -type "float3" -1.0430813e-007 6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[17]" -type "float3" -1.2716215 6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[18]" -type "float3" -1.2716281 6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[19]" -type "float3" -1.2716215 6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[20]" -type "float3" -0.062112551 6.9476664e-007 -0.45457488 ;
	setAttr ".pt[21]" -type "float3" 0.51813322 6.9104135e-007 -0.56511092 ;
	setAttr ".pt[22]" -type "float3" 1.6698401 6.9104135e-007 -0.13149552 ;
	setAttr ".pt[23]" -type "float3" -0.2279994 6.9104135e-007 -0.35643774 ;
	setAttr ".pt[24]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[26]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.17676353 ;
	setAttr ".pt[30]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[32]" -type "float3" 0.062112514 0 -0.4308612 ;
	setAttr ".pt[33]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[34]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[35]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[36]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[38]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.17676358 ;
	setAttr ".pt[42]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[43]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[44]" -type "float3" 0.06211254 1.8626451e-009 -0.43086109 ;
	setAttr ".pt[45]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[46]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[47]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.23793036 ;
	setAttr ".pt[49]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.23793039 ;
	setAttr ".pt[51]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[52]" -type "float3" 0 0 0.23793036 ;
	setAttr ".pt[53]" -type "float3" 0 0 0.23793036 ;
	setAttr -s 54 ".vt[0:53]"  3.33421087 -0.5 -1.110223e-016 3.22703123 -0.5 -0.40000007
		 1.25753212 -0.5 -0.74641007 0.85753298 -0.5 -0.74641001 -0.39999962 -0.5 -0.74641007
		 -0.96576309 -0.5 -0.39999995 -1.094284058 -0.5 5.9604645e-008 -0.96576309 -0.5 0.40000004
		 -0.4000001 -0.5 0.74639463 0.82595825 -0.5 0.75193095 1.1101222 -0.5 0.36778653 3.22151041 -0.5 0.29599527
		 3.33421087 0.5 1.110223e-016 3.22703123 0.5 -0.40000007 1.25753212 0.5 -0.74641007
		 0.85753298 0.5 -0.74641001 -0.39999962 0.5 -0.74641007 -0.96576309 0.5 -0.39999995
		 -1.094284058 0.5 5.9604645e-008 -0.96576309 0.5 0.40000004 -0.4000001 0.5 0.74639463
		 0.82595825 0.5 0.75193095 1.1101222 0.5 0.36778653 3.22151041 0.5 0.29599527 3.53421092 0.5 1.110223e-016
		 3.40023637 0.5 -0.49999964 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.32867613 -2.56232929 0.5 5.1058404e-008 -2.46454144 0.5 0.32867646
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 3.34947515 0.5 0.44969997
		 3.53421092 -0.5 -1.110223e-016 3.40023637 -0.5 -0.49999964 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.32867616
		 -2.56232929 -0.5 5.1058404e-008 -2.46454144 -0.5 0.32867646 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 3.34947515 -0.5 0.44969997 -3.90912056 0.5 -0.21340971
		 -4.0069084167 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -4.0069084167 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 108 ".ed[0:107]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 53 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 36 -74
		mu 0 4 27 26 39 40
		f 4 -26 73 37 -75
		mu 0 4 28 27 40 41
		f 4 -27 74 38 -76
		mu 0 4 29 28 41 42
		f 4 -28 75 39 -77
		mu 0 4 30 29 42 43
		f 4 -29 76 40 -78
		mu 0 4 31 30 43 44
		f 4 -98 99 101 -103
		mu 0 4 65 66 67 68
		f 4 -105 102 106 -108
		mu 0 4 69 65 68 70
		f 4 -32 78 43 -80
		mu 0 4 34 33 46 47
		f 4 -33 79 44 -81
		mu 0 4 35 34 47 48
		f 4 -34 80 45 -82
		mu 0 4 36 35 48 49
		f 4 -35 81 46 -83
		mu 0 4 37 36 49 50
		f 4 -36 82 47 -73
		mu 0 4 38 37 50 51
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 98 -100 -96
		mu 0 4 31 44 67 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 -106
		mu 0 4 46 33 69 70;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legFrontRight" -p "legsRight";
	rename -uid "A0D7049C-4E93-6BA6-CD96-3698D7C8D0BF";
	setAttr ".t" -type "double3" 0.0094709875166166801 -0.31317363985524593 -0.39147949439004576 ;
	setAttr ".r" -type "double3" 0 9.0330053726131538 0 ;
	setAttr ".s" -type "double3" 0.26719579066158072 0.26719579066158072 0.26719579066158072 ;
	setAttr ".rp" -type "double3" -0.46698913320661334 0.0065997281898409789 -0.36161581341622312 ;
	setAttr ".rpt" -type "double3" -0.050983341802799398 0 0.077803618156110893 ;
	setAttr ".sp" -type "double3" -1.7477413549455303 0.024699970660091441 -1.353373915512879 ;
	setAttr ".spt" -type "double3" 1.2807522217389169 -0.018100242470250463 0.99175810209665594 ;
createNode transform -n "footFrontRight" -p "legFrontRight";
	rename -uid "8BE3AAB6-44C9-3089-4123-83855FCF07AB";
	setAttr ".t" -type "double3" -20.495841326580717 -1.0177744011472301 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999943 0 18.063903730066528 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 3.3994884709322015 0 0 ;
	setAttr ".rpt" -type "double3" -0.16755647362936268 1.0541050368967224 2.9988656149493072e-017 ;
	setAttr ".sp" -type "double3" 3.3994884709322015 0 0 ;
createNode mesh -n "footFrontRightShape" -p "footFrontRight";
	rename -uid "E262143E-4EBD-D582-3B21-85BCE417D79F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[0]" -type "float3" 0.02017992 -0.28985041 -0.15127221 ;
	setAttr ".pt[5]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[10]" -type "float3" 0.025889533 -0.26243788 -0.037939087 ;
	setAttr ".pt[11]" -type "float3" 0.02017992 0.28985041 -0.15127221 ;
	setAttr ".pt[12]" -type "float3" 0.047638502 0 -0.032959405 ;
	setAttr ".pt[16]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[17]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[21]" -type "float3" 0.025889533 0.26243788 -0.037939087 ;
	setAttr ".pt[22]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[24]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[26]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[32]" -type "float3" -0.1930242 7.3700858e-018 0.083554931 ;
	setAttr ".pt[37]" -type "float3" 0 2.0094906e-016 0 ;
	setAttr ".pt[41]" -type "float3" 0.060289465 -3.2275145e-017 0.041529823 ;
	setAttr ".pt[42]" -type "float3" 0.15553613 -4.4666122e-017 0.057473816 ;
	setAttr ".pt[45]" -type "float3" -0.024668649 0.21719882 -0.18461378 ;
	setAttr ".pt[46]" -type "float3" -0.024668649 7.2399347e-017 -0.0017049124 ;
	setAttr ".pt[47]" -type "float3" -0.024668649 -0.21719882 -0.18461378 ;
createNode mesh -n "polySurfaceShape5" -p "footFrontRight";
	rename -uid "CADBD342-4A14-3038-09A0-7EAC4E4A8330";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999994039535522 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0 0.75 0.083333336
		 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331
		 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75
		 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5
		 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988
		 0.5 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669
		 0 0.5 0 0.58333331 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988
		 0 0.5 0.5 0.41666669 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".vt[0:53]"  2.99634647 -0.50000072 -0.12447663 2.62783647 -0.50000072 -0.3865931
		 1.257532 -0.50000072 -0.74641049 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -0.96576029 -0.50000072 -0.39999956 -1.094287992 -0.50000072 6.4377673e-008 -0.96576029 -0.50000072 0.3999995
		 -0.40000018 -0.50000072 0.74639463 0.82595778 -0.50000072 0.75193137 1.1101222 -0.50000072 0.36778656
		 2.89986706 -0.50000072 0.21567634 2.99634647 0.50000072 -0.12447663 2.62783647 0.50000072 -0.3865931
		 1.257532 0.50000072 -0.74641049 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -0.96576029 0.50000072 -0.39999956 -1.094287992 0.50000072 6.4377673e-008 -0.96576029 0.50000072 0.3999995
		 -0.40000018 0.50000072 0.74639463 0.82595778 0.50000072 0.75193137 1.1101222 0.50000072 0.36778656
		 2.89986706 0.50000072 0.21567634 3.17533255 0.5 -0.21370898 2.7726388 0.5 -0.49151334
		 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 2.99829245 0.5 0.32222319
		 3.17533255 -0.5 -0.21370898 2.7726388 -0.5 -0.49151334 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 2.99829245 -0.5 0.32222319 -3.90912056 0.5 -0.21340971
		 -3.77871704 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -3.77871704 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 96 ".ed[0:95]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 12 24 1 13 25 1 14 26 1
		 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0 25 37 0
		 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1 37 1 1
		 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0 30 49 1
		 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0 52 53 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 -13 48 24 -50
		mu 0 4 1 0 13 14
		f 4 -14 49 25 -51
		mu 0 4 2 1 14 15
		f 4 -15 50 26 -52
		mu 0 4 3 2 15 16
		f 4 -16 51 27 -53
		mu 0 4 4 3 16 17
		f 4 -17 52 28 -54
		mu 0 4 5 4 17 18
		f 4 -18 53 29 -55
		mu 0 4 6 5 18 19
		f 4 -19 54 30 -56
		mu 0 4 7 6 19 20
		f 4 -20 55 31 -57
		mu 0 4 8 7 20 21
		f 4 -21 56 32 -58
		mu 0 4 9 8 21 22
		f 4 -22 57 33 -59
		mu 0 4 10 9 22 23
		f 4 -23 58 34 -60
		mu 0 4 11 10 23 24
		f 4 -24 59 35 -49
		mu 0 4 12 11 24 25
		f 4 -25 60 36 -62
		mu 0 4 14 13 26 27
		f 4 -26 61 37 -63
		mu 0 4 15 14 27 28
		f 4 -27 62 38 -64
		mu 0 4 16 15 28 29
		f 4 -28 63 39 -65
		mu 0 4 17 16 29 30
		f 4 -29 64 40 -66
		mu 0 4 18 17 30 31
		f 4 -86 87 89 -91
		mu 0 4 52 53 54 55
		f 4 -93 90 94 -96
		mu 0 4 56 52 55 57
		f 4 -32 66 43 -68
		mu 0 4 21 20 33 34
		f 4 -33 67 44 -69
		mu 0 4 22 21 34 35
		f 4 -34 68 45 -70
		mu 0 4 23 22 35 36
		f 4 -35 69 46 -71
		mu 0 4 24 23 36 37
		f 4 -36 70 47 -61
		mu 0 4 25 24 37 38
		f 4 -37 71 0 -73
		mu 0 4 27 26 39 40
		f 4 -38 72 1 -74
		mu 0 4 28 27 40 41
		f 4 -39 73 2 -75
		mu 0 4 29 28 41 42
		f 4 -40 74 3 -76
		mu 0 4 30 29 42 43
		f 4 -41 75 4 -77
		mu 0 4 31 30 43 44
		f 4 -42 76 5 -78
		mu 0 4 32 31 44 45
		f 4 -43 77 6 -79
		mu 0 4 33 32 45 46
		f 4 -44 78 7 -80
		mu 0 4 34 33 46 47
		f 4 -45 79 8 -81
		mu 0 4 35 34 47 48
		f 4 -46 80 9 -82
		mu 0 4 36 35 48 49
		f 4 -47 81 10 -83
		mu 0 4 37 36 49 50
		f 4 -48 82 11 -72
		mu 0 4 38 37 50 51
		f 4 -30 83 85 -85
		mu 0 4 19 18 53 52
		f 4 65 86 -88 -84
		mu 0 4 18 31 54 53
		f 4 41 88 -90 -87
		mu 0 4 31 32 55 54
		f 4 -31 84 92 -92
		mu 0 4 20 19 52 56
		f 4 42 93 -95 -89
		mu 0 4 32 33 57 55
		f 4 -67 91 95 -94
		mu 0 4 33 20 56 57;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legFrontMidRight" -p "legFrontRight";
	rename -uid "09639A00-4275-2A19-A679-699EBE0C4C1A";
	setAttr ".t" -type "double3" -13.336344007109831 0.010670930974769011 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 -4.7281572832829326 ;
	setAttr ".s" -type "double3" 1 0.83886907588957871 1 ;
	setAttr ".rp" -type "double3" 3.7928186495433174 0 0 ;
	setAttr ".rpt" -type "double3" -0.01290696629890006 -0.31263553092370672 -9.5348656683434232e-018 ;
	setAttr ".sp" -type "double3" 3.7928186495433174 0 0 ;
createNode mesh -n "legFrontMidRightShape" -p "legFrontMidRight";
	rename -uid "920F5628-4816-1C5B-344F-9CA232B0C0FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58333331346511841 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[1]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[13]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[24]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[25]" -type "float3" 0.17429079 -0.107757 0.054351158 ;
	setAttr ".pt[35]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[36]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[37]" -type "float3" 0.17429079 0.107757 0.054351158 ;
	setAttr ".pt[47]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[48]" -type "float3" 0.041373458 -0.18694898 0.085845932 ;
	setAttr ".pt[50]" -type "float3" 0.041373458 0.18694898 0.085845932 ;
	setAttr ".pt[52]" -type "float3" 0.13712741 -0.1840795 0.076923326 ;
	setAttr ".pt[53]" -type "float3" 0.13712741 0.1840795 0.076923326 ;
	setAttr ".pt[54]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[55]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[58]" -type "float3" 0.13712741 -2.0361234e-017 0.076923326 ;
	setAttr ".pt[65]" -type "float3" 0.28494743 5.8166192e-016 -0.27127227 ;
	setAttr ".pt[66]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[67]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
createNode transform -n "legFrontUpperRight" -p "legFrontRight";
	rename -uid "52A4C632-4A53-176B-C6C2-E7861D411EC0";
	setAttr ".t" -type "double3" -5.4174773092724404 0 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".rp" -type "double3" 3.6022004082668064 0 0 ;
	setAttr ".sp" -type "double3" 3.6022004082668064 0 0 ;
createNode mesh -n "legFrontUpperRightShape" -p "legFrontUpperRight";
	rename -uid "045399C1-4C32-DE70-0D2C-3DBFFD683B48";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[48]" -type "float3" 0.027137736 -0.17101918 0.16545191 ;
	setAttr ".pt[50]" -type "float3" 0.027137736 0.1710192 0.16545191 ;
	setAttr ".pt[52]" -type "float3" 0.071364447 -0.17736076 0 ;
	setAttr ".pt[53]" -type "float3" 0.071364447 0.17736076 0 ;
	setAttr ".pt[63]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[64]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[65]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[66]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[67]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
createNode mesh -n "polySurfaceShape6" -p "legFrontUpperRight";
	rename -uid "C541FF4F-4E41-CAF9-6CED-41A270BA05D5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.91666656732559204 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0041075833 -6.9104135e-007 -0.13870478 ;
	setAttr ".pt[1]" -type "float3" -2.7790666e-006 -6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[2]" -type "float3" 0.95908505 -6.9104135e-007 0.13015029 ;
	setAttr ".pt[3]" -type "float3" -4.3213367e-007 -6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[4]" -type "float3" -1.0430813e-007 -6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[5]" -type "float3" -1.2716215 -6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[6]" -type "float3" -1.2716281 -6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[7]" -type "float3" -1.2716215 -6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[8]" -type "float3" -0.062112618 -6.8545341e-007 -0.45457488 ;
	setAttr ".pt[9]" -type "float3" 0.51813322 -6.9104135e-007 -0.56511092 ;
	setAttr ".pt[10]" -type "float3" 1.6698401 -6.9104135e-007 -0.13149552 ;
	setAttr ".pt[11]" -type "float3" -0.2279994 -6.9104135e-007 -0.35643774 ;
	setAttr ".pt[12]" -type "float3" 0.0041075833 6.9104135e-007 -0.13870478 ;
	setAttr ".pt[13]" -type "float3" -2.7790666e-006 6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[14]" -type "float3" 0.95908505 6.9104135e-007 0.13015029 ;
	setAttr ".pt[15]" -type "float3" -4.3213367e-007 6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[16]" -type "float3" -1.0430813e-007 6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[17]" -type "float3" -1.2716215 6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[18]" -type "float3" -1.2716281 6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[19]" -type "float3" -1.2716215 6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[20]" -type "float3" -0.062112551 6.9476664e-007 -0.45457488 ;
	setAttr ".pt[21]" -type "float3" 0.51813322 6.9104135e-007 -0.56511092 ;
	setAttr ".pt[22]" -type "float3" 1.6698401 6.9104135e-007 -0.13149552 ;
	setAttr ".pt[23]" -type "float3" -0.2279994 6.9104135e-007 -0.35643774 ;
	setAttr ".pt[24]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[26]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.17676353 ;
	setAttr ".pt[30]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[32]" -type "float3" 0.062112514 0 -0.4308612 ;
	setAttr ".pt[33]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[34]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[35]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[36]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[38]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.17676358 ;
	setAttr ".pt[42]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[43]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[44]" -type "float3" 0.06211254 1.8626451e-009 -0.43086109 ;
	setAttr ".pt[45]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[46]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[47]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.23793036 ;
	setAttr ".pt[49]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.23793039 ;
	setAttr ".pt[51]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[52]" -type "float3" 0 0 0.23793036 ;
	setAttr ".pt[53]" -type "float3" 0 0 0.23793036 ;
	setAttr -s 54 ".vt[0:53]"  3.33421087 -0.5 -1.110223e-016 3.22703123 -0.5 -0.40000007
		 1.25753212 -0.5 -0.74641007 0.85753298 -0.5 -0.74641001 -0.39999962 -0.5 -0.74641007
		 -0.96576309 -0.5 -0.39999995 -1.094284058 -0.5 5.9604645e-008 -0.96576309 -0.5 0.40000004
		 -0.4000001 -0.5 0.74639463 0.82595825 -0.5 0.75193095 1.1101222 -0.5 0.36778653 3.22151041 -0.5 0.29599527
		 3.33421087 0.5 1.110223e-016 3.22703123 0.5 -0.40000007 1.25753212 0.5 -0.74641007
		 0.85753298 0.5 -0.74641001 -0.39999962 0.5 -0.74641007 -0.96576309 0.5 -0.39999995
		 -1.094284058 0.5 5.9604645e-008 -0.96576309 0.5 0.40000004 -0.4000001 0.5 0.74639463
		 0.82595825 0.5 0.75193095 1.1101222 0.5 0.36778653 3.22151041 0.5 0.29599527 3.53421092 0.5 1.110223e-016
		 3.40023637 0.5 -0.49999964 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.32867613 -2.56232929 0.5 5.1058404e-008 -2.46454144 0.5 0.32867646
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 3.34947515 0.5 0.44969997
		 3.53421092 -0.5 -1.110223e-016 3.40023637 -0.5 -0.49999964 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.32867616
		 -2.56232929 -0.5 5.1058404e-008 -2.46454144 -0.5 0.32867646 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 3.34947515 -0.5 0.44969997 -3.90912056 0.5 -0.21340971
		 -4.0069084167 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -4.0069084167 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 108 ".ed[0:107]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 53 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 36 -74
		mu 0 4 27 26 39 40
		f 4 -26 73 37 -75
		mu 0 4 28 27 40 41
		f 4 -27 74 38 -76
		mu 0 4 29 28 41 42
		f 4 -28 75 39 -77
		mu 0 4 30 29 42 43
		f 4 -29 76 40 -78
		mu 0 4 31 30 43 44
		f 4 -98 99 101 -103
		mu 0 4 65 66 67 68
		f 4 -105 102 106 -108
		mu 0 4 69 65 68 70
		f 4 -32 78 43 -80
		mu 0 4 34 33 46 47
		f 4 -33 79 44 -81
		mu 0 4 35 34 47 48
		f 4 -34 80 45 -82
		mu 0 4 36 35 48 49
		f 4 -35 81 46 -83
		mu 0 4 37 36 49 50
		f 4 -36 82 47 -73
		mu 0 4 38 37 50 51
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 98 -100 -96
		mu 0 4 31 44 67 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 -106
		mu 0 4 46 33 69 70;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legsLeft" -p "scorpion";
	rename -uid "1735EC97-47BA-A708-62C9-CAB5C60585B6";
	setAttr ".s" -type "double3" -1 1 1 ;
	setAttr ".rp" -type "double3" 0 0 -1.3522671536607827 ;
	setAttr ".sp" -type "double3" 0 0 -1.3522671536607827 ;
createNode transform -n "legBackLeft" -p "legsLeft";
	rename -uid "079A4667-4A48-89B8-A8AB-969906FF35C1";
	setAttr ".t" -type "double3" -0.13395182330570071 -0.31317363985524593 -1.6926682036309559 ;
	setAttr ".r" -type "double3" 0 -12.89027098622995 0 ;
	setAttr ".s" -type "double3" 0.26719579066158072 0.26719579066158072 0.26719579066158072 ;
	setAttr ".rp" -type "double3" -0.46698913320661334 0.0065997281898409789 -0.36161581341622312 ;
	setAttr ".rpt" -type "double3" 0.092439469019518106 0 -0.095065033678413527 ;
	setAttr ".sp" -type "double3" -1.7477413549455303 0.024699970660091441 -1.353373915512879 ;
	setAttr ".spt" -type "double3" 1.2807522217389169 -0.018100242470250463 0.99175810209665594 ;
createNode transform -n "footBackLeft" -p "legBackLeft";
	rename -uid "185E612C-4725-4DAC-4F19-5CAD4C564EB6";
	setAttr ".t" -type "double3" -20.495841326580717 -1.0177744011472301 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999943 0 18.063903730066528 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 3.3994884709322015 0 0 ;
	setAttr ".rpt" -type "double3" -0.16755647362936268 1.0541050368967224 2.9988656149493072e-017 ;
	setAttr ".sp" -type "double3" 3.3994884709322015 0 0 ;
createNode mesh -n "footBackLeftShape" -p "footBackLeft";
	rename -uid "CD579959-490E-DC59-C087-1BA36171B1BF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.58333331 0.5 0.66666663
		 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25 0.083333336
		 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.58333331 0.25 0.66666663
		 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.41666669 0.25 0.41666669
		 0.5 0.25 0.375 0.33333334 0.375 0.41666669 0.375 0.41666669 0.375 0.41666669 0.375
		 0.5 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375 0.83333325
		 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336 0.375 0.16666667 0.375
		 0.95833325 0.25 0.95833325 0.375 0.45833328 0.5 0.95833325 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[0]" -type "float3" 0.02017992 -0.28985041 -0.15127221 ;
	setAttr ".pt[5]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[10]" -type "float3" 0.025889533 -0.26243788 -0.037939087 ;
	setAttr ".pt[11]" -type "float3" 0.02017992 0.28985041 -0.15127221 ;
	setAttr ".pt[12]" -type "float3" 0.047638502 0 -0.032959405 ;
	setAttr ".pt[16]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[17]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[21]" -type "float3" 0.025889533 0.26243788 -0.037939087 ;
	setAttr ".pt[22]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[24]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[26]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[32]" -type "float3" -0.1930242 7.3700858e-018 0.083554931 ;
	setAttr ".pt[37]" -type "float3" 0 2.0094906e-016 0 ;
	setAttr ".pt[41]" -type "float3" 0.060289465 -3.2275145e-017 0.041529823 ;
	setAttr ".pt[42]" -type "float3" 0.15553613 -4.4666122e-017 0.057473816 ;
	setAttr ".pt[45]" -type "float3" -0.024668649 0.21719882 -0.18461378 ;
	setAttr ".pt[46]" -type "float3" -0.024668649 7.2399347e-017 -0.0017049124 ;
	setAttr ".pt[47]" -type "float3" -0.024668649 -0.21719882 -0.18461378 ;
	setAttr -s 48 ".vt[0:47]"  3.17533255 0.5 -0.21370898 2.7726388 0.5 -0.49151334
		 1.07973671 0.5 -0.66901433 0.43106297 0.5 -1.25843799 -0.63195831 0.5 -1.47715807
		 -1.58145428 0.5 -1.73791444 -1.8853091 0.5 -0.91408497 -0.6682812 0.5 -0.68961859
		 0.063656807 0.5 0.32138163 0.99895269 0.5 -0.30368894 2.99829245 0.5 0.32222319 3.17533255 -0.5 -0.21370898
		 2.7726388 -0.5 -0.49151334 1.07973671 -0.5 -0.66901433 0.43106297 -0.5 -1.25843799
		 -0.63195831 -0.5 -1.47715807 -1.58145428 -0.5 -1.73791456 -1.8853091 -0.5 -0.91408497
		 -0.6682812 -0.5 -0.68961859 0.063656807 -0.5 0.32138163 0.99895269 -0.5 -0.30368894
		 2.99829245 -0.5 0.32222319 -2.67246151 0.5 -2.29228878 -2.8498466 0.5 -2.19353032
		 -2.67246151 -0.5 -2.29228878 -2.8498466 -0.5 -2.19353032 -2.85031152 0.5 -1.92414832
		 -2.85031152 -0.5 -1.92414832 -2.41280341 -0.5 -2.30735016 -2.41280341 0.5 -2.30735016
		 0.53243601 2.8429748e-016 -1.62425566 -0.53058529 2.8429748e-016 -1.84297574 -1.48008132 2.8429748e-016 -2.10373211
		 -2.18619084 4.6353785e-017 -2.36699557 -2.67246151 0 -2.29228878 -2.8498466 0 -2.19353032
		 -2.85031152 0 -1.92414832 -1.8853091 0 -0.91408497 -0.6682812 0 -0.68961859 0.063656807 0 0.32138163
		 0.99895269 0 -0.30368894 2.99829245 0 0.32222319 3.2767055 2.8429748e-016 -0.57952666
		 2.87401175 2.8429748e-016 -0.85733104 1.18110967 2.8429748e-016 -1.034832001 3.086812496 -0.5 0.054257102
		 3.13749886 1.4214874e-016 -0.12865174 3.086812496 0.5 0.054257102;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 6 7 0 7 8 0
		 8 9 0 9 10 0 10 47 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 45 0 0 42 0 1 43 0 2 44 0 3 30 0 4 31 0 5 32 1 6 37 1 7 38 0 8 39 0 9 40 0
		 10 41 0 5 29 0 22 23 0 16 28 0 22 34 0 24 25 0 23 35 0 6 26 0 23 26 0 17 27 0 25 27 0
		 26 36 0 28 24 0 29 22 0 28 33 1 30 14 0 31 15 0 30 31 1 32 16 1 31 32 1 33 29 1 32 33 1
		 34 24 0 33 34 1 35 25 0 34 35 1 36 27 0 35 36 1 37 17 1 36 37 1 38 18 0 37 38 1 39 19 0
		 38 39 1 40 20 0 39 40 1 41 21 0 40 41 1 42 11 0 41 46 1 43 12 0 42 43 1 44 13 0 43 44 1
		 44 30 1 45 11 0 46 42 1 45 46 1 47 0 0 46 47 1;
	setAttr -s 34 -ch 160 ".fc[0:33]" -type "polyFaces" 
		f 4 -1 20 71 -22
		mu 0 4 1 0 44 46
		f 4 -2 21 73 -23
		mu 0 4 2 1 46 47
		f 4 -3 22 74 -24
		mu 0 4 3 2 47 32
		f 4 -4 23 47 -25
		mu 0 4 4 3 32 33
		f 4 -5 24 49 -26
		mu 0 4 5 4 33 34
		f 4 -33 34 55 -37
		mu 0 4 24 25 36 37
		f 4 -39 36 57 -42
		mu 0 4 28 24 37 38
		f 4 -6 26 61 -28
		mu 0 4 7 6 39 40
		f 4 -7 27 63 -29
		mu 0 4 8 7 40 41
		f 4 -8 28 65 -30
		mu 0 4 9 8 41 42
		f 4 -9 29 67 -31
		mu 0 4 10 9 42 43
		f 4 -10 30 69 79
		mu 0 4 51 10 43 49
		f 4 25 51 50 -32
		mu 0 4 5 34 35 31
		f 4 -27 37 41 59
		mu 0 4 39 6 28 38
		f 16 1 2 3 4 31 43 32 38 -38 5 6 7 8 9 78 0
		mu 0 16 1 2 3 4 5 31 25 24 28 6 7 8 9 10 50 0
		f 16 -11 -76 -20 -19 -18 -17 -16 39 -41 -36 -43 -34 -15 -14 -13 -12
		mu 0 16 13 23 48 22 21 20 19 18 29 27 26 30 17 16 15 14
		f 4 -51 53 -35 -44
		mu 0 4 31 35 36 25
		f 4 -48 45 13 -47
		mu 0 4 33 32 15 16
		f 4 -50 46 14 -49
		mu 0 4 34 33 16 17
		f 4 -52 48 33 44
		mu 0 4 35 34 17 30
		f 4 -54 -45 42 -53
		mu 0 4 36 35 30 26
		f 4 -56 52 35 -55
		mu 0 4 37 36 26 27
		f 4 -58 54 40 -57
		mu 0 4 38 37 27 29
		f 4 -59 -60 56 -40
		mu 0 4 18 39 38 29
		f 4 -62 58 15 -61
		mu 0 4 40 39 18 19
		f 4 -64 60 16 -63
		mu 0 4 41 40 19 20
		f 4 -66 62 17 -65
		mu 0 4 42 41 20 21
		f 4 -68 64 18 -67
		mu 0 4 43 42 21 22
		f 4 -70 66 19 77
		mu 0 4 49 43 22 48
		f 4 -72 68 10 -71
		mu 0 4 46 44 12 13
		f 4 -74 70 11 -73
		mu 0 4 47 46 13 14
		f 4 -75 72 12 -46
		mu 0 4 32 47 14 15
		f 4 -77 -78 75 -69
		mu 0 4 45 49 48 23
		f 4 -79 -80 76 -21
		mu 0 4 11 51 49 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "footBackLeft";
	rename -uid "E1A1114F-4FE5-7635-59AC-259ECC521FE4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999994039535522 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0 0.75 0.083333336
		 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331
		 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75
		 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5
		 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988
		 0.5 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669
		 0 0.5 0 0.58333331 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988
		 0 0.5 0.5 0.41666669 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".vt[0:53]"  2.99634647 -0.50000072 -0.12447663 2.62783647 -0.50000072 -0.3865931
		 1.257532 -0.50000072 -0.74641049 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -0.96576029 -0.50000072 -0.39999956 -1.094287992 -0.50000072 6.4377673e-008 -0.96576029 -0.50000072 0.3999995
		 -0.40000018 -0.50000072 0.74639463 0.82595778 -0.50000072 0.75193137 1.1101222 -0.50000072 0.36778656
		 2.89986706 -0.50000072 0.21567634 2.99634647 0.50000072 -0.12447663 2.62783647 0.50000072 -0.3865931
		 1.257532 0.50000072 -0.74641049 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -0.96576029 0.50000072 -0.39999956 -1.094287992 0.50000072 6.4377673e-008 -0.96576029 0.50000072 0.3999995
		 -0.40000018 0.50000072 0.74639463 0.82595778 0.50000072 0.75193137 1.1101222 0.50000072 0.36778656
		 2.89986706 0.50000072 0.21567634 3.17533255 0.5 -0.21370898 2.7726388 0.5 -0.49151334
		 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 2.99829245 0.5 0.32222319
		 3.17533255 -0.5 -0.21370898 2.7726388 -0.5 -0.49151334 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 2.99829245 -0.5 0.32222319 -3.90912056 0.5 -0.21340971
		 -3.77871704 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -3.77871704 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 96 ".ed[0:95]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 12 24 1 13 25 1 14 26 1
		 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0 25 37 0
		 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1 37 1 1
		 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0 30 49 1
		 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0 52 53 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 -13 48 24 -50
		mu 0 4 1 0 13 14
		f 4 -14 49 25 -51
		mu 0 4 2 1 14 15
		f 4 -15 50 26 -52
		mu 0 4 3 2 15 16
		f 4 -16 51 27 -53
		mu 0 4 4 3 16 17
		f 4 -17 52 28 -54
		mu 0 4 5 4 17 18
		f 4 -18 53 29 -55
		mu 0 4 6 5 18 19
		f 4 -19 54 30 -56
		mu 0 4 7 6 19 20
		f 4 -20 55 31 -57
		mu 0 4 8 7 20 21
		f 4 -21 56 32 -58
		mu 0 4 9 8 21 22
		f 4 -22 57 33 -59
		mu 0 4 10 9 22 23
		f 4 -23 58 34 -60
		mu 0 4 11 10 23 24
		f 4 -24 59 35 -49
		mu 0 4 12 11 24 25
		f 4 -25 60 36 -62
		mu 0 4 14 13 26 27
		f 4 -26 61 37 -63
		mu 0 4 15 14 27 28
		f 4 -27 62 38 -64
		mu 0 4 16 15 28 29
		f 4 -28 63 39 -65
		mu 0 4 17 16 29 30
		f 4 -29 64 40 -66
		mu 0 4 18 17 30 31
		f 4 -86 87 89 -91
		mu 0 4 52 53 54 55
		f 4 -93 90 94 -96
		mu 0 4 56 52 55 57
		f 4 -32 66 43 -68
		mu 0 4 21 20 33 34
		f 4 -33 67 44 -69
		mu 0 4 22 21 34 35
		f 4 -34 68 45 -70
		mu 0 4 23 22 35 36
		f 4 -35 69 46 -71
		mu 0 4 24 23 36 37
		f 4 -36 70 47 -61
		mu 0 4 25 24 37 38
		f 4 -37 71 0 -73
		mu 0 4 27 26 39 40
		f 4 -38 72 1 -74
		mu 0 4 28 27 40 41
		f 4 -39 73 2 -75
		mu 0 4 29 28 41 42
		f 4 -40 74 3 -76
		mu 0 4 30 29 42 43
		f 4 -41 75 4 -77
		mu 0 4 31 30 43 44
		f 4 -42 76 5 -78
		mu 0 4 32 31 44 45
		f 4 -43 77 6 -79
		mu 0 4 33 32 45 46
		f 4 -44 78 7 -80
		mu 0 4 34 33 46 47
		f 4 -45 79 8 -81
		mu 0 4 35 34 47 48
		f 4 -46 80 9 -82
		mu 0 4 36 35 48 49
		f 4 -47 81 10 -83
		mu 0 4 37 36 49 50
		f 4 -48 82 11 -72
		mu 0 4 38 37 50 51
		f 4 -30 83 85 -85
		mu 0 4 19 18 53 52
		f 4 65 86 -88 -84
		mu 0 4 18 31 54 53
		f 4 41 88 -90 -87
		mu 0 4 31 32 55 54
		f 4 -31 84 92 -92
		mu 0 4 20 19 52 56
		f 4 42 93 -95 -89
		mu 0 4 32 33 57 55
		f 4 -67 91 95 -94
		mu 0 4 33 20 56 57;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legBackMidLeft" -p "legBackLeft";
	rename -uid "9C8B1D55-457A-680F-75D8-A2AF26B1EA50";
	setAttr ".t" -type "double3" -13.336344007109831 0.010670930974769011 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 -4.7281572832829326 ;
	setAttr ".s" -type "double3" 1 0.83886907588957871 1 ;
	setAttr ".rp" -type "double3" 3.7928186495433174 0 0 ;
	setAttr ".rpt" -type "double3" -0.01290696629890006 -0.31263553092370672 -9.5348656683434232e-018 ;
	setAttr ".sp" -type "double3" 3.7928186495433174 0 0 ;
createNode mesh -n "legBackMidLeftShape" -p "legBackMidLeft";
	rename -uid "F8E4000C-4DAF-8F02-FCD4-08827C5892ED";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58333331346511841 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.33333334 0.375 0.41666669
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375
		 0.74999994 0.375 0.83333325 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336
		 0.375 0.16666667 0.375 0.25 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[1]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[13]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[24]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[25]" -type "float3" 0.17429079 -0.107757 0.054351158 ;
	setAttr ".pt[35]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[36]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[37]" -type "float3" 0.17429079 0.107757 0.054351158 ;
	setAttr ".pt[47]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[48]" -type "float3" 0.041373458 -0.18694898 0.085845932 ;
	setAttr ".pt[50]" -type "float3" 0.041373458 0.18694898 0.085845932 ;
	setAttr ".pt[52]" -type "float3" 0.13712741 -0.1840795 0.076923326 ;
	setAttr ".pt[53]" -type "float3" 0.13712741 0.1840795 0.076923326 ;
	setAttr ".pt[54]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[55]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[58]" -type "float3" 0.13712741 -2.0361234e-017 0.076923326 ;
	setAttr ".pt[65]" -type "float3" 0.28494743 5.8166192e-016 -0.27127227 ;
	setAttr ".pt[66]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[67]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr -s 68 ".vt[0:67]"  3.33421493 -0.50000072 -7.05768e-010 3.22702837 -0.50000072 -0.39999962
		 1.257532 -0.50000072 -0.74641049 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -0.96576029 -0.50000072 -0.39999956 -1.094287992 -0.50000072 6.4377673e-008 -0.96576029 -0.50000072 0.3999995
		 -0.40000018 -0.50000072 0.74639463 0.82595778 -0.50000072 0.75193137 1.1101222 -0.50000072 0.36778656
		 3.22151446 -0.50000072 0.2959947 3.33421493 0.50000072 -7.0576778e-010 3.22702837 0.50000072 -0.39999962
		 1.257532 0.50000072 -0.74641049 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -0.96576029 0.50000072 -0.39999956 -1.094287992 0.50000072 6.4377673e-008 -0.96576029 0.50000072 0.3999995
		 -0.40000018 0.50000072 0.74639463 0.82595778 0.50000072 0.75193137 1.1101222 0.50000072 0.36778656
		 3.22151446 0.50000072 0.2959947 3.53421092 0.5 1.110223e-016 3.40023637 0.5 -0.49999964
		 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 3.34947515 0.5 0.44969997
		 3.53421092 -0.5 -1.110223e-016 3.40023637 -0.5 -0.49999964 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 3.34947515 -0.5 0.44969997 -3.90912056 0.5 -0.21340971
		 -3.77871704 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -3.77871704 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003 -0.49999952 0 -0.93282592
		 -2.46454144 0 -0.5054397 -3.90912056 0 -0.21340972 -3.77871704 0 8.5410491e-008 -3.90912056 0 0.21341003
		 -2.46454144 0 0.50544006 -0.5 0 0.93301272 0.8891077 0 0.9275071 1.21012211 0 0.55440468
		 3.34947515 0 0.44969997 3.53421092 0 0 3.40023637 0 -0.49999964 1.3575325 0 -0.93282592
		 0.85753298 0 -0.93319947;
	setAttr -s 136 ".ed[0:135]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 64 0
		 25 65 0 26 66 0 27 67 0 28 54 0 29 55 1 31 59 1 32 60 0 33 61 0 34 62 0 35 63 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 56 0 42 51 1 50 51 0 49 57 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 58 0 54 40 0 55 41 1 54 55 1 56 50 0 55 56 1 57 51 0 56 57 1 58 53 0 57 58 1 59 43 1
		 58 59 1 60 44 0 59 60 1 61 45 0 60 61 1 62 46 0 61 62 1 63 47 0 62 63 1 64 36 0 63 64 1
		 65 37 0 64 65 1 66 38 0 65 66 1 67 39 0 66 67 1 67 54 1;
	setAttr -s 68 -ch 272 ".fc[0:67]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 130 -74
		mu 0 4 27 26 81 83
		f 4 -26 73 132 -75
		mu 0 4 28 27 83 84
		f 4 -27 74 134 -76
		mu 0 4 29 28 84 85
		f 4 -28 75 135 -77
		mu 0 4 30 29 85 71
		f 4 -29 76 110 -78
		mu 0 4 31 30 71 72
		f 4 -98 99 114 -103
		mu 0 4 65 66 73 74
		f 4 -105 102 116 -108
		mu 0 4 69 65 74 75
		f 4 -32 78 120 -80
		mu 0 4 34 33 76 77
		f 4 -33 79 122 -81
		mu 0 4 35 34 77 78
		f 4 -34 80 124 -82
		mu 0 4 36 35 78 79
		f 4 -35 81 126 -83
		mu 0 4 37 36 79 80
		f 4 -36 82 128 -73
		mu 0 4 38 37 80 82
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 112 -100 -96
		mu 0 4 31 72 73 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 118
		mu 0 4 76 33 69 75
		f 4 -111 108 40 -110
		mu 0 4 72 71 43 44
		f 4 -113 109 98 -112
		mu 0 4 73 72 44 67
		f 4 -115 111 101 -114
		mu 0 4 74 73 67 68
		f 4 -117 113 106 -116
		mu 0 4 75 74 68 70
		f 4 -118 -119 115 -106
		mu 0 4 46 76 75 70
		f 4 -121 117 43 -120
		mu 0 4 77 76 46 47
		f 4 -123 119 44 -122
		mu 0 4 78 77 47 48
		f 4 -125 121 45 -124
		mu 0 4 79 78 48 49
		f 4 -127 123 46 -126
		mu 0 4 80 79 49 50
		f 4 -129 125 47 -128
		mu 0 4 82 80 50 51
		f 4 -131 127 36 -130
		mu 0 4 83 81 39 40
		f 4 -133 129 37 -132
		mu 0 4 84 83 40 41
		f 4 -135 131 38 -134
		mu 0 4 85 84 41 42
		f 4 -136 133 39 -109
		mu 0 4 71 85 42 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legBackUpperLeft" -p "legBackLeft";
	rename -uid "B064BB34-46D7-40B6-579F-DF84E3CD03F6";
	setAttr ".t" -type "double3" -5.4174773092724404 0 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".rp" -type "double3" 3.6022004082668064 0 0 ;
	setAttr ".sp" -type "double3" 3.6022004082668064 0 0 ;
createNode mesh -n "legBackUpperLeftShape" -p "legBackUpperLeft";
	rename -uid "D12413AB-4CE4-A1E6-E80E-24880C9D9291";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.41666669 0.375 0.5
		 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375 0.83333325
		 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336 0.375 0.16666667 0.375
		 0.25 0.375 0.33333334 0.375 0.41666669 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[48]" -type "float3" 0.027137736 -0.17101918 0.16545191 ;
	setAttr ".pt[50]" -type "float3" 0.027137736 0.1710192 0.16545191 ;
	setAttr ".pt[52]" -type "float3" 0.071364447 -0.17736076 0 ;
	setAttr ".pt[53]" -type "float3" 0.071364447 0.17736076 0 ;
	setAttr ".pt[63]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[64]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[65]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[66]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[67]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr -s 68 ".vt[0:67]"  3.33831835 -0.50000072 -0.13870478 3.22702837 -0.50000072 -0.39999962
		 2.21661711 -0.50000072 -0.61625981 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -2.23738456 -0.50000072 -0.39999956 -2.3659122 -0.50000072 6.4377673e-008 -2.23738456 -0.50000072 0.3999995
		 -0.46211272 -0.50000072 0.29181975 1.34409142 -0.50000072 0.18682003 2.7799623 -0.50000072 0.23629101
		 2.99351096 -0.50000072 -0.060442477 3.33831835 0.50000072 -0.13870478 3.22702837 0.50000072 -0.39999962
		 2.21661711 0.50000072 -0.61625981 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -2.23738456 0.50000072 -0.39999956 -2.3659122 0.50000072 6.4377673e-008 -2.23738456 0.50000072 0.3999995
		 -0.46211264 0.50000072 0.29181975 1.34409142 0.50000072 0.18682003 2.7799623 0.50000072 0.23629101
		 2.99351096 0.50000072 -0.060442477 3.5135324 0.5 -0.042275865 3.40023637 0.5 -0.49999964
		 2.31661773 0.5 -0.80267519 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.43788749 0.5 0.50215149 1.40724134 0.5 0.3623957 2.87996221 0.5 0.42290911 3.12147164 0.5 0.093262792
		 3.5135324 -0.5 -0.042275865 3.40023637 -0.5 -0.49999964 2.31661773 -0.5 -0.80267519
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.43788746 -0.5 0.50215161
		 1.40724134 -0.5 0.3623957 2.87996221 -0.5 0.42290911 3.12147164 -0.5 0.093262792
		 -3.90912056 0.5 -0.45134008 -3.77871704 0.5 6.1950374e-009 -3.90912056 -0.5 -0.45134011
		 -3.77871704 -0.5 6.1950374e-009 -3.90912056 0.5 0.45134038 -3.90912056 -0.5 0.45134038
		 -3.90912056 0 -0.45134008 -3.77871704 0 6.1950374e-009 -3.90912056 0 0.45134038 -2.46454144 0 0.50544006
		 -0.43788749 0 0.50215155 1.40724134 0 0.3623957 2.87996221 0 0.42290911 3.12147164 0 0.093262792
		 3.5135324 0 -0.042275865 3.40023637 0 -0.49999964 2.31661773 0 -0.80267519 0.85753298 0 -0.93319947
		 -0.49999952 0 -0.93282592 -2.46454144 0 -0.5054397;
	setAttr -s 136 ".ed[0:135]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 62 0
		 25 63 0 26 64 0 27 65 0 28 66 0 29 67 1 31 57 1 32 58 0 33 59 0 34 60 0 35 61 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 54 0 42 51 1 50 51 0 49 55 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 56 0 54 50 0 55 51 0 54 55 1 56 53 0 55 56 1 57 43 1 56 57 1 58 44 0 57 58 1 59 45 0
		 58 59 1 60 46 0 59 60 1 61 47 0 60 61 1 62 36 0 61 62 1 63 37 0 62 63 1 64 38 0 63 64 1
		 65 39 0 64 65 1 66 40 0 65 66 1 67 41 1 66 67 1 67 54 1;
	setAttr -s 68 -ch 272 ".fc[0:67]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 126 -74
		mu 0 4 27 26 79 81
		f 4 -26 73 128 -75
		mu 0 4 28 27 81 82
		f 4 -27 74 130 -76
		mu 0 4 29 28 82 83
		f 4 -28 75 132 -77
		mu 0 4 30 29 83 84
		f 4 -29 76 134 -78
		mu 0 4 31 30 84 85
		f 4 -98 99 110 -103
		mu 0 4 65 66 71 72
		f 4 -105 102 112 -108
		mu 0 4 69 65 72 73
		f 4 -32 78 116 -80
		mu 0 4 34 33 74 75
		f 4 -33 79 118 -81
		mu 0 4 35 34 75 76
		f 4 -34 80 120 -82
		mu 0 4 36 35 76 77
		f 4 -35 81 122 -83
		mu 0 4 37 36 77 78
		f 4 -36 82 124 -73
		mu 0 4 38 37 78 80
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 135 -100 -96
		mu 0 4 31 85 71 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 114
		mu 0 4 74 33 69 73
		f 4 -111 108 101 -110
		mu 0 4 72 71 67 68
		f 4 -113 109 106 -112
		mu 0 4 73 72 68 70
		f 4 -114 -115 111 -106
		mu 0 4 46 74 73 70
		f 4 -117 113 43 -116
		mu 0 4 75 74 46 47
		f 4 -119 115 44 -118
		mu 0 4 76 75 47 48
		f 4 -121 117 45 -120
		mu 0 4 77 76 48 49
		f 4 -123 119 46 -122
		mu 0 4 78 77 49 50
		f 4 -125 121 47 -124
		mu 0 4 80 78 50 51
		f 4 -127 123 36 -126
		mu 0 4 81 79 39 40
		f 4 -129 125 37 -128
		mu 0 4 82 81 40 41
		f 4 -131 127 38 -130
		mu 0 4 83 82 41 42
		f 4 -133 129 39 -132
		mu 0 4 84 83 42 43
		f 4 -135 131 40 -134
		mu 0 4 85 84 43 44
		f 4 -136 133 98 -109
		mu 0 4 71 85 44 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "legBackUpperLeft";
	rename -uid "47E4C63D-4672-FD08-CA60-AA93231FAD5D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.91666656732559204 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0041075833 -6.9104135e-007 -0.13870478 ;
	setAttr ".pt[1]" -type "float3" -2.7790666e-006 -6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[2]" -type "float3" 0.95908505 -6.9104135e-007 0.13015029 ;
	setAttr ".pt[3]" -type "float3" -4.3213367e-007 -6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[4]" -type "float3" -1.0430813e-007 -6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[5]" -type "float3" -1.2716215 -6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[6]" -type "float3" -1.2716281 -6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[7]" -type "float3" -1.2716215 -6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[8]" -type "float3" -0.062112618 -6.8545341e-007 -0.45457488 ;
	setAttr ".pt[9]" -type "float3" 0.51813322 -6.9104135e-007 -0.56511092 ;
	setAttr ".pt[10]" -type "float3" 1.6698401 -6.9104135e-007 -0.13149552 ;
	setAttr ".pt[11]" -type "float3" -0.2279994 -6.9104135e-007 -0.35643774 ;
	setAttr ".pt[12]" -type "float3" 0.0041075833 6.9104135e-007 -0.13870478 ;
	setAttr ".pt[13]" -type "float3" -2.7790666e-006 6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[14]" -type "float3" 0.95908505 6.9104135e-007 0.13015029 ;
	setAttr ".pt[15]" -type "float3" -4.3213367e-007 6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[16]" -type "float3" -1.0430813e-007 6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[17]" -type "float3" -1.2716215 6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[18]" -type "float3" -1.2716281 6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[19]" -type "float3" -1.2716215 6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[20]" -type "float3" -0.062112551 6.9476664e-007 -0.45457488 ;
	setAttr ".pt[21]" -type "float3" 0.51813322 6.9104135e-007 -0.56511092 ;
	setAttr ".pt[22]" -type "float3" 1.6698401 6.9104135e-007 -0.13149552 ;
	setAttr ".pt[23]" -type "float3" -0.2279994 6.9104135e-007 -0.35643774 ;
	setAttr ".pt[24]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[26]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.17676353 ;
	setAttr ".pt[30]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[32]" -type "float3" 0.062112514 0 -0.4308612 ;
	setAttr ".pt[33]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[34]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[35]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[36]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[38]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.17676358 ;
	setAttr ".pt[42]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[43]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[44]" -type "float3" 0.06211254 1.8626451e-009 -0.43086109 ;
	setAttr ".pt[45]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[46]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[47]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.23793036 ;
	setAttr ".pt[49]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.23793039 ;
	setAttr ".pt[51]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[52]" -type "float3" 0 0 0.23793036 ;
	setAttr ".pt[53]" -type "float3" 0 0 0.23793036 ;
	setAttr -s 54 ".vt[0:53]"  3.33421087 -0.5 -1.110223e-016 3.22703123 -0.5 -0.40000007
		 1.25753212 -0.5 -0.74641007 0.85753298 -0.5 -0.74641001 -0.39999962 -0.5 -0.74641007
		 -0.96576309 -0.5 -0.39999995 -1.094284058 -0.5 5.9604645e-008 -0.96576309 -0.5 0.40000004
		 -0.4000001 -0.5 0.74639463 0.82595825 -0.5 0.75193095 1.1101222 -0.5 0.36778653 3.22151041 -0.5 0.29599527
		 3.33421087 0.5 1.110223e-016 3.22703123 0.5 -0.40000007 1.25753212 0.5 -0.74641007
		 0.85753298 0.5 -0.74641001 -0.39999962 0.5 -0.74641007 -0.96576309 0.5 -0.39999995
		 -1.094284058 0.5 5.9604645e-008 -0.96576309 0.5 0.40000004 -0.4000001 0.5 0.74639463
		 0.82595825 0.5 0.75193095 1.1101222 0.5 0.36778653 3.22151041 0.5 0.29599527 3.53421092 0.5 1.110223e-016
		 3.40023637 0.5 -0.49999964 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.32867613 -2.56232929 0.5 5.1058404e-008 -2.46454144 0.5 0.32867646
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 3.34947515 0.5 0.44969997
		 3.53421092 -0.5 -1.110223e-016 3.40023637 -0.5 -0.49999964 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.32867616
		 -2.56232929 -0.5 5.1058404e-008 -2.46454144 -0.5 0.32867646 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 3.34947515 -0.5 0.44969997 -3.90912056 0.5 -0.21340971
		 -4.0069084167 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -4.0069084167 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 108 ".ed[0:107]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 53 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 36 -74
		mu 0 4 27 26 39 40
		f 4 -26 73 37 -75
		mu 0 4 28 27 40 41
		f 4 -27 74 38 -76
		mu 0 4 29 28 41 42
		f 4 -28 75 39 -77
		mu 0 4 30 29 42 43
		f 4 -29 76 40 -78
		mu 0 4 31 30 43 44
		f 4 -98 99 101 -103
		mu 0 4 65 66 67 68
		f 4 -105 102 106 -108
		mu 0 4 69 65 68 70
		f 4 -32 78 43 -80
		mu 0 4 34 33 46 47
		f 4 -33 79 44 -81
		mu 0 4 35 34 47 48
		f 4 -34 80 45 -82
		mu 0 4 36 35 48 49
		f 4 -35 81 46 -83
		mu 0 4 37 36 49 50
		f 4 -36 82 47 -73
		mu 0 4 38 37 50 51
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 98 -100 -96
		mu 0 4 31 44 67 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 -106
		mu 0 4 46 33 69 70;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legMidLeft" -p "legsLeft";
	rename -uid "2E77D054-466E-CC9C-363C-DC9C2A3503E1";
	setAttr ".t" -type "double3" -0.16322988055354598 -0.31317363985524593 -1.0857241666237676 ;
	setAttr ".r" -type "double3" 0 0.64112491190878185 0 ;
	setAttr ".s" -type "double3" 0.26719579066158078 0.26719579066158072 0.26719579066158078 ;
	setAttr ".rp" -type "double3" -0.46698913320661367 0.0065997281898409789 -0.3616158134162234 ;
	setAttr ".rpt" -type "double3" -0.0040170670999827929 0 0.0052480170057122291 ;
	setAttr ".sp" -type "double3" -1.7477413549455303 0.024699970660091441 -1.353373915512879 ;
	setAttr ".spt" -type "double3" 1.2807522217389167 -0.018100242470250463 0.99175810209665571 ;
createNode transform -n "footMidLeft" -p "legMidLeft";
	rename -uid "38F88B31-4601-AC5D-13C2-26BE41247827";
	setAttr ".t" -type "double3" -20.495841326580717 -1.0177744011472301 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999943 0 18.063903730066528 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 3.3994884709322015 0 0 ;
	setAttr ".rpt" -type "double3" -0.16755647362936268 1.0541050368967224 2.9988656149493072e-017 ;
	setAttr ".sp" -type "double3" 3.3994884709322015 0 0 ;
createNode mesh -n "footMidLeftShape" -p "footMidLeft";
	rename -uid "BE692872-47A3-3BB7-C957-51B4D67C2187";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.58333331 0.5 0.66666663
		 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25 0.083333336
		 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.58333331 0.25 0.66666663
		 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.41666669 0.25 0.41666669
		 0.5 0.25 0.375 0.33333334 0.375 0.41666669 0.375 0.41666669 0.375 0.41666669 0.375
		 0.5 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375 0.83333325
		 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336 0.375 0.16666667 0.375
		 0.95833325 0.25 0.95833325 0.375 0.45833328 0.5 0.95833325 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[0]" -type "float3" 0.02017992 -0.28985041 -0.15127221 ;
	setAttr ".pt[5]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[10]" -type "float3" 0.025889533 -0.26243788 -0.037939087 ;
	setAttr ".pt[11]" -type "float3" 0.02017992 0.28985041 -0.15127221 ;
	setAttr ".pt[12]" -type "float3" 0.047638502 0 -0.032959405 ;
	setAttr ".pt[16]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[17]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[21]" -type "float3" 0.025889533 0.26243788 -0.037939087 ;
	setAttr ".pt[22]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[24]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[26]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[32]" -type "float3" -0.1930242 7.3700858e-018 0.083554931 ;
	setAttr ".pt[37]" -type "float3" 0 2.0094906e-016 0 ;
	setAttr ".pt[41]" -type "float3" 0.060289465 -3.2275145e-017 0.041529823 ;
	setAttr ".pt[42]" -type "float3" 0.15553613 -4.4666122e-017 0.057473816 ;
	setAttr ".pt[45]" -type "float3" -0.024668649 0.21719882 -0.18461378 ;
	setAttr ".pt[46]" -type "float3" -0.024668649 7.2399347e-017 -0.0017049124 ;
	setAttr ".pt[47]" -type "float3" -0.024668649 -0.21719882 -0.18461378 ;
	setAttr -s 48 ".vt[0:47]"  3.17533255 0.5 -0.21370898 2.7726388 0.5 -0.49151334
		 1.07973671 0.5 -0.66901433 0.43106297 0.5 -1.25843799 -0.63195831 0.5 -1.47715807
		 -1.58145428 0.5 -1.73791444 -1.8853091 0.5 -0.91408497 -0.6682812 0.5 -0.68961859
		 0.063656807 0.5 0.32138163 0.99895269 0.5 -0.30368894 2.99829245 0.5 0.32222319 3.17533255 -0.5 -0.21370898
		 2.7726388 -0.5 -0.49151334 1.07973671 -0.5 -0.66901433 0.43106297 -0.5 -1.25843799
		 -0.63195831 -0.5 -1.47715807 -1.58145428 -0.5 -1.73791456 -1.8853091 -0.5 -0.91408497
		 -0.6682812 -0.5 -0.68961859 0.063656807 -0.5 0.32138163 0.99895269 -0.5 -0.30368894
		 2.99829245 -0.5 0.32222319 -2.67246151 0.5 -2.29228878 -2.8498466 0.5 -2.19353032
		 -2.67246151 -0.5 -2.29228878 -2.8498466 -0.5 -2.19353032 -2.85031152 0.5 -1.92414832
		 -2.85031152 -0.5 -1.92414832 -2.41280341 -0.5 -2.30735016 -2.41280341 0.5 -2.30735016
		 0.53243601 2.8429748e-016 -1.62425566 -0.53058529 2.8429748e-016 -1.84297574 -1.48008132 2.8429748e-016 -2.10373211
		 -2.18619084 4.6353785e-017 -2.36699557 -2.67246151 0 -2.29228878 -2.8498466 0 -2.19353032
		 -2.85031152 0 -1.92414832 -1.8853091 0 -0.91408497 -0.6682812 0 -0.68961859 0.063656807 0 0.32138163
		 0.99895269 0 -0.30368894 2.99829245 0 0.32222319 3.2767055 2.8429748e-016 -0.57952666
		 2.87401175 2.8429748e-016 -0.85733104 1.18110967 2.8429748e-016 -1.034832001 3.086812496 -0.5 0.054257102
		 3.13749886 1.4214874e-016 -0.12865174 3.086812496 0.5 0.054257102;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 6 7 0 7 8 0
		 8 9 0 9 10 0 10 47 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 45 0 0 42 0 1 43 0 2 44 0 3 30 0 4 31 0 5 32 1 6 37 1 7 38 0 8 39 0 9 40 0
		 10 41 0 5 29 0 22 23 0 16 28 0 22 34 0 24 25 0 23 35 0 6 26 0 23 26 0 17 27 0 25 27 0
		 26 36 0 28 24 0 29 22 0 28 33 1 30 14 0 31 15 0 30 31 1 32 16 1 31 32 1 33 29 1 32 33 1
		 34 24 0 33 34 1 35 25 0 34 35 1 36 27 0 35 36 1 37 17 1 36 37 1 38 18 0 37 38 1 39 19 0
		 38 39 1 40 20 0 39 40 1 41 21 0 40 41 1 42 11 0 41 46 1 43 12 0 42 43 1 44 13 0 43 44 1
		 44 30 1 45 11 0 46 42 1 45 46 1 47 0 0 46 47 1;
	setAttr -s 34 -ch 160 ".fc[0:33]" -type "polyFaces" 
		f 4 -1 20 71 -22
		mu 0 4 1 0 44 46
		f 4 -2 21 73 -23
		mu 0 4 2 1 46 47
		f 4 -3 22 74 -24
		mu 0 4 3 2 47 32
		f 4 -4 23 47 -25
		mu 0 4 4 3 32 33
		f 4 -5 24 49 -26
		mu 0 4 5 4 33 34
		f 4 -33 34 55 -37
		mu 0 4 24 25 36 37
		f 4 -39 36 57 -42
		mu 0 4 28 24 37 38
		f 4 -6 26 61 -28
		mu 0 4 7 6 39 40
		f 4 -7 27 63 -29
		mu 0 4 8 7 40 41
		f 4 -8 28 65 -30
		mu 0 4 9 8 41 42
		f 4 -9 29 67 -31
		mu 0 4 10 9 42 43
		f 4 -10 30 69 79
		mu 0 4 51 10 43 49
		f 4 25 51 50 -32
		mu 0 4 5 34 35 31
		f 4 -27 37 41 59
		mu 0 4 39 6 28 38
		f 16 1 2 3 4 31 43 32 38 -38 5 6 7 8 9 78 0
		mu 0 16 1 2 3 4 5 31 25 24 28 6 7 8 9 10 50 0
		f 16 -11 -76 -20 -19 -18 -17 -16 39 -41 -36 -43 -34 -15 -14 -13 -12
		mu 0 16 13 23 48 22 21 20 19 18 29 27 26 30 17 16 15 14
		f 4 -51 53 -35 -44
		mu 0 4 31 35 36 25
		f 4 -48 45 13 -47
		mu 0 4 33 32 15 16
		f 4 -50 46 14 -49
		mu 0 4 34 33 16 17
		f 4 -52 48 33 44
		mu 0 4 35 34 17 30
		f 4 -54 -45 42 -53
		mu 0 4 36 35 30 26
		f 4 -56 52 35 -55
		mu 0 4 37 36 26 27
		f 4 -58 54 40 -57
		mu 0 4 38 37 27 29
		f 4 -59 -60 56 -40
		mu 0 4 18 39 38 29
		f 4 -62 58 15 -61
		mu 0 4 40 39 18 19
		f 4 -64 60 16 -63
		mu 0 4 41 40 19 20
		f 4 -66 62 17 -65
		mu 0 4 42 41 20 21
		f 4 -68 64 18 -67
		mu 0 4 43 42 21 22
		f 4 -70 66 19 77
		mu 0 4 49 43 22 48
		f 4 -72 68 10 -71
		mu 0 4 46 44 12 13
		f 4 -74 70 11 -73
		mu 0 4 47 46 13 14
		f 4 -75 72 12 -46
		mu 0 4 32 47 14 15
		f 4 -77 -78 75 -69
		mu 0 4 45 49 48 23
		f 4 -79 -80 76 -21
		mu 0 4 11 51 49 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "footMidLeft";
	rename -uid "AFDF5F80-4D6B-866A-7E15-78BE55761895";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999994039535522 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0 0.75 0.083333336
		 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331
		 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75
		 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5
		 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988
		 0.5 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669
		 0 0.5 0 0.58333331 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988
		 0 0.5 0.5 0.41666669 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".vt[0:53]"  2.99634647 -0.50000072 -0.12447663 2.62783647 -0.50000072 -0.3865931
		 1.257532 -0.50000072 -0.74641049 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -0.96576029 -0.50000072 -0.39999956 -1.094287992 -0.50000072 6.4377673e-008 -0.96576029 -0.50000072 0.3999995
		 -0.40000018 -0.50000072 0.74639463 0.82595778 -0.50000072 0.75193137 1.1101222 -0.50000072 0.36778656
		 2.89986706 -0.50000072 0.21567634 2.99634647 0.50000072 -0.12447663 2.62783647 0.50000072 -0.3865931
		 1.257532 0.50000072 -0.74641049 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -0.96576029 0.50000072 -0.39999956 -1.094287992 0.50000072 6.4377673e-008 -0.96576029 0.50000072 0.3999995
		 -0.40000018 0.50000072 0.74639463 0.82595778 0.50000072 0.75193137 1.1101222 0.50000072 0.36778656
		 2.89986706 0.50000072 0.21567634 3.17533255 0.5 -0.21370898 2.7726388 0.5 -0.49151334
		 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 2.99829245 0.5 0.32222319
		 3.17533255 -0.5 -0.21370898 2.7726388 -0.5 -0.49151334 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 2.99829245 -0.5 0.32222319 -3.90912056 0.5 -0.21340971
		 -3.77871704 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -3.77871704 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 96 ".ed[0:95]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 12 24 1 13 25 1 14 26 1
		 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0 25 37 0
		 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1 37 1 1
		 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0 30 49 1
		 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0 52 53 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 -13 48 24 -50
		mu 0 4 1 0 13 14
		f 4 -14 49 25 -51
		mu 0 4 2 1 14 15
		f 4 -15 50 26 -52
		mu 0 4 3 2 15 16
		f 4 -16 51 27 -53
		mu 0 4 4 3 16 17
		f 4 -17 52 28 -54
		mu 0 4 5 4 17 18
		f 4 -18 53 29 -55
		mu 0 4 6 5 18 19
		f 4 -19 54 30 -56
		mu 0 4 7 6 19 20
		f 4 -20 55 31 -57
		mu 0 4 8 7 20 21
		f 4 -21 56 32 -58
		mu 0 4 9 8 21 22
		f 4 -22 57 33 -59
		mu 0 4 10 9 22 23
		f 4 -23 58 34 -60
		mu 0 4 11 10 23 24
		f 4 -24 59 35 -49
		mu 0 4 12 11 24 25
		f 4 -25 60 36 -62
		mu 0 4 14 13 26 27
		f 4 -26 61 37 -63
		mu 0 4 15 14 27 28
		f 4 -27 62 38 -64
		mu 0 4 16 15 28 29
		f 4 -28 63 39 -65
		mu 0 4 17 16 29 30
		f 4 -29 64 40 -66
		mu 0 4 18 17 30 31
		f 4 -86 87 89 -91
		mu 0 4 52 53 54 55
		f 4 -93 90 94 -96
		mu 0 4 56 52 55 57
		f 4 -32 66 43 -68
		mu 0 4 21 20 33 34
		f 4 -33 67 44 -69
		mu 0 4 22 21 34 35
		f 4 -34 68 45 -70
		mu 0 4 23 22 35 36
		f 4 -35 69 46 -71
		mu 0 4 24 23 36 37
		f 4 -36 70 47 -61
		mu 0 4 25 24 37 38
		f 4 -37 71 0 -73
		mu 0 4 27 26 39 40
		f 4 -38 72 1 -74
		mu 0 4 28 27 40 41
		f 4 -39 73 2 -75
		mu 0 4 29 28 41 42
		f 4 -40 74 3 -76
		mu 0 4 30 29 42 43
		f 4 -41 75 4 -77
		mu 0 4 31 30 43 44
		f 4 -42 76 5 -78
		mu 0 4 32 31 44 45
		f 4 -43 77 6 -79
		mu 0 4 33 32 45 46
		f 4 -44 78 7 -80
		mu 0 4 34 33 46 47
		f 4 -45 79 8 -81
		mu 0 4 35 34 47 48
		f 4 -46 80 9 -82
		mu 0 4 36 35 48 49
		f 4 -47 81 10 -83
		mu 0 4 37 36 49 50
		f 4 -48 82 11 -72
		mu 0 4 38 37 50 51
		f 4 -30 83 85 -85
		mu 0 4 19 18 53 52
		f 4 65 86 -88 -84
		mu 0 4 18 31 54 53
		f 4 41 88 -90 -87
		mu 0 4 31 32 55 54
		f 4 -31 84 92 -92
		mu 0 4 20 19 52 56
		f 4 42 93 -95 -89
		mu 0 4 32 33 57 55
		f 4 -67 91 95 -94
		mu 0 4 33 20 56 57;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legMidMidLeft" -p "legMidLeft";
	rename -uid "B185C027-4DBA-500C-67A4-12B2761309FF";
	setAttr ".t" -type "double3" -13.336344007109831 0.010670930974769011 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 -4.7281572832829326 ;
	setAttr ".s" -type "double3" 1 0.83886907588957871 1 ;
	setAttr ".rp" -type "double3" 3.7928186495433174 0 0 ;
	setAttr ".rpt" -type "double3" -0.01290696629890006 -0.31263553092370672 -9.5348656683434232e-018 ;
	setAttr ".sp" -type "double3" 3.7928186495433174 0 0 ;
createNode mesh -n "legMidMidLeftShape" -p "legMidMidLeft";
	rename -uid "A701F838-4E00-C010-CAB2-AC8E05DF3EC1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58333331346511841 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.33333334 0.375 0.41666669
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375
		 0.74999994 0.375 0.83333325 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336
		 0.375 0.16666667 0.375 0.25 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[1]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[13]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[24]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[25]" -type "float3" 0.17429079 -0.107757 0.054351158 ;
	setAttr ".pt[35]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[36]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[37]" -type "float3" 0.17429079 0.107757 0.054351158 ;
	setAttr ".pt[47]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[48]" -type "float3" 0.041373458 -0.18694898 0.085845932 ;
	setAttr ".pt[50]" -type "float3" 0.041373458 0.18694898 0.085845932 ;
	setAttr ".pt[52]" -type "float3" 0.13712741 -0.1840795 0.076923326 ;
	setAttr ".pt[53]" -type "float3" 0.13712741 0.1840795 0.076923326 ;
	setAttr ".pt[54]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[55]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[58]" -type "float3" 0.13712741 -2.0361234e-017 0.076923326 ;
	setAttr ".pt[65]" -type "float3" 0.28494743 5.8166192e-016 -0.27127227 ;
	setAttr ".pt[66]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[67]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr -s 68 ".vt[0:67]"  3.33421493 -0.50000072 -7.05768e-010 3.22702837 -0.50000072 -0.39999962
		 1.257532 -0.50000072 -0.74641049 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -0.96576029 -0.50000072 -0.39999956 -1.094287992 -0.50000072 6.4377673e-008 -0.96576029 -0.50000072 0.3999995
		 -0.40000018 -0.50000072 0.74639463 0.82595778 -0.50000072 0.75193137 1.1101222 -0.50000072 0.36778656
		 3.22151446 -0.50000072 0.2959947 3.33421493 0.50000072 -7.0576778e-010 3.22702837 0.50000072 -0.39999962
		 1.257532 0.50000072 -0.74641049 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -0.96576029 0.50000072 -0.39999956 -1.094287992 0.50000072 6.4377673e-008 -0.96576029 0.50000072 0.3999995
		 -0.40000018 0.50000072 0.74639463 0.82595778 0.50000072 0.75193137 1.1101222 0.50000072 0.36778656
		 3.22151446 0.50000072 0.2959947 3.53421092 0.5 1.110223e-016 3.40023637 0.5 -0.49999964
		 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 3.34947515 0.5 0.44969997
		 3.53421092 -0.5 -1.110223e-016 3.40023637 -0.5 -0.49999964 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 3.34947515 -0.5 0.44969997 -3.90912056 0.5 -0.21340971
		 -3.77871704 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -3.77871704 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003 -0.49999952 0 -0.93282592
		 -2.46454144 0 -0.5054397 -3.90912056 0 -0.21340972 -3.77871704 0 8.5410491e-008 -3.90912056 0 0.21341003
		 -2.46454144 0 0.50544006 -0.5 0 0.93301272 0.8891077 0 0.9275071 1.21012211 0 0.55440468
		 3.34947515 0 0.44969997 3.53421092 0 0 3.40023637 0 -0.49999964 1.3575325 0 -0.93282592
		 0.85753298 0 -0.93319947;
	setAttr -s 136 ".ed[0:135]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 64 0
		 25 65 0 26 66 0 27 67 0 28 54 0 29 55 1 31 59 1 32 60 0 33 61 0 34 62 0 35 63 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 56 0 42 51 1 50 51 0 49 57 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 58 0 54 40 0 55 41 1 54 55 1 56 50 0 55 56 1 57 51 0 56 57 1 58 53 0 57 58 1 59 43 1
		 58 59 1 60 44 0 59 60 1 61 45 0 60 61 1 62 46 0 61 62 1 63 47 0 62 63 1 64 36 0 63 64 1
		 65 37 0 64 65 1 66 38 0 65 66 1 67 39 0 66 67 1 67 54 1;
	setAttr -s 68 -ch 272 ".fc[0:67]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 130 -74
		mu 0 4 27 26 81 83
		f 4 -26 73 132 -75
		mu 0 4 28 27 83 84
		f 4 -27 74 134 -76
		mu 0 4 29 28 84 85
		f 4 -28 75 135 -77
		mu 0 4 30 29 85 71
		f 4 -29 76 110 -78
		mu 0 4 31 30 71 72
		f 4 -98 99 114 -103
		mu 0 4 65 66 73 74
		f 4 -105 102 116 -108
		mu 0 4 69 65 74 75
		f 4 -32 78 120 -80
		mu 0 4 34 33 76 77
		f 4 -33 79 122 -81
		mu 0 4 35 34 77 78
		f 4 -34 80 124 -82
		mu 0 4 36 35 78 79
		f 4 -35 81 126 -83
		mu 0 4 37 36 79 80
		f 4 -36 82 128 -73
		mu 0 4 38 37 80 82
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 112 -100 -96
		mu 0 4 31 72 73 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 118
		mu 0 4 76 33 69 75
		f 4 -111 108 40 -110
		mu 0 4 72 71 43 44
		f 4 -113 109 98 -112
		mu 0 4 73 72 44 67
		f 4 -115 111 101 -114
		mu 0 4 74 73 67 68
		f 4 -117 113 106 -116
		mu 0 4 75 74 68 70
		f 4 -118 -119 115 -106
		mu 0 4 46 76 75 70
		f 4 -121 117 43 -120
		mu 0 4 77 76 46 47
		f 4 -123 119 44 -122
		mu 0 4 78 77 47 48
		f 4 -125 121 45 -124
		mu 0 4 79 78 48 49
		f 4 -127 123 46 -126
		mu 0 4 80 79 49 50
		f 4 -129 125 47 -128
		mu 0 4 82 80 50 51
		f 4 -131 127 36 -130
		mu 0 4 83 81 39 40
		f 4 -133 129 37 -132
		mu 0 4 84 83 40 41
		f 4 -135 131 38 -134
		mu 0 4 85 84 41 42
		f 4 -136 133 39 -109
		mu 0 4 71 85 42 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legMidUpperLeft" -p "legMidLeft";
	rename -uid "ED79728A-4AB7-73BC-195B-EE89E6596142";
	setAttr ".t" -type "double3" -5.4174773092724404 0 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".rp" -type "double3" 3.6022004082668064 0 0 ;
	setAttr ".sp" -type "double3" 3.6022004082668064 0 0 ;
createNode mesh -n "legMidUpperLeftShape" -p "legMidUpperLeft";
	rename -uid "5939B786-4FC8-968E-5232-499F886D7B61";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.41666669 0.375 0.5
		 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375 0.83333325
		 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336 0.375 0.16666667 0.375
		 0.25 0.375 0.33333334 0.375 0.41666669 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[48]" -type "float3" 0.027137736 -0.17101918 0.16545191 ;
	setAttr ".pt[50]" -type "float3" 0.027137736 0.1710192 0.16545191 ;
	setAttr ".pt[52]" -type "float3" 0.071364447 -0.17736076 0 ;
	setAttr ".pt[53]" -type "float3" 0.071364447 0.17736076 0 ;
	setAttr ".pt[63]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[64]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[65]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[66]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[67]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr -s 68 ".vt[0:67]"  3.33831835 -0.50000072 -0.13870478 3.22702837 -0.50000072 -0.39999962
		 2.21661711 -0.50000072 -0.61625981 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -2.23738456 -0.50000072 -0.39999956 -2.3659122 -0.50000072 6.4377673e-008 -2.23738456 -0.50000072 0.3999995
		 -0.46211272 -0.50000072 0.29181975 1.34409142 -0.50000072 0.18682003 2.7799623 -0.50000072 0.23629101
		 2.99351096 -0.50000072 -0.060442477 3.33831835 0.50000072 -0.13870478 3.22702837 0.50000072 -0.39999962
		 2.21661711 0.50000072 -0.61625981 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -2.23738456 0.50000072 -0.39999956 -2.3659122 0.50000072 6.4377673e-008 -2.23738456 0.50000072 0.3999995
		 -0.46211264 0.50000072 0.29181975 1.34409142 0.50000072 0.18682003 2.7799623 0.50000072 0.23629101
		 2.99351096 0.50000072 -0.060442477 3.5135324 0.5 -0.042275865 3.40023637 0.5 -0.49999964
		 2.31661773 0.5 -0.80267519 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.43788749 0.5 0.50215149 1.40724134 0.5 0.3623957 2.87996221 0.5 0.42290911 3.12147164 0.5 0.093262792
		 3.5135324 -0.5 -0.042275865 3.40023637 -0.5 -0.49999964 2.31661773 -0.5 -0.80267519
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.43788746 -0.5 0.50215161
		 1.40724134 -0.5 0.3623957 2.87996221 -0.5 0.42290911 3.12147164 -0.5 0.093262792
		 -3.90912056 0.5 -0.45134008 -3.77871704 0.5 6.1950374e-009 -3.90912056 -0.5 -0.45134011
		 -3.77871704 -0.5 6.1950374e-009 -3.90912056 0.5 0.45134038 -3.90912056 -0.5 0.45134038
		 -3.90912056 0 -0.45134008 -3.77871704 0 6.1950374e-009 -3.90912056 0 0.45134038 -2.46454144 0 0.50544006
		 -0.43788749 0 0.50215155 1.40724134 0 0.3623957 2.87996221 0 0.42290911 3.12147164 0 0.093262792
		 3.5135324 0 -0.042275865 3.40023637 0 -0.49999964 2.31661773 0 -0.80267519 0.85753298 0 -0.93319947
		 -0.49999952 0 -0.93282592 -2.46454144 0 -0.5054397;
	setAttr -s 136 ".ed[0:135]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 62 0
		 25 63 0 26 64 0 27 65 0 28 66 0 29 67 1 31 57 1 32 58 0 33 59 0 34 60 0 35 61 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 54 0 42 51 1 50 51 0 49 55 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 56 0 54 50 0 55 51 0 54 55 1 56 53 0 55 56 1 57 43 1 56 57 1 58 44 0 57 58 1 59 45 0
		 58 59 1 60 46 0 59 60 1 61 47 0 60 61 1 62 36 0 61 62 1 63 37 0 62 63 1 64 38 0 63 64 1
		 65 39 0 64 65 1 66 40 0 65 66 1 67 41 1 66 67 1 67 54 1;
	setAttr -s 68 -ch 272 ".fc[0:67]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 126 -74
		mu 0 4 27 26 79 81
		f 4 -26 73 128 -75
		mu 0 4 28 27 81 82
		f 4 -27 74 130 -76
		mu 0 4 29 28 82 83
		f 4 -28 75 132 -77
		mu 0 4 30 29 83 84
		f 4 -29 76 134 -78
		mu 0 4 31 30 84 85
		f 4 -98 99 110 -103
		mu 0 4 65 66 71 72
		f 4 -105 102 112 -108
		mu 0 4 69 65 72 73
		f 4 -32 78 116 -80
		mu 0 4 34 33 74 75
		f 4 -33 79 118 -81
		mu 0 4 35 34 75 76
		f 4 -34 80 120 -82
		mu 0 4 36 35 76 77
		f 4 -35 81 122 -83
		mu 0 4 37 36 77 78
		f 4 -36 82 124 -73
		mu 0 4 38 37 78 80
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 135 -100 -96
		mu 0 4 31 85 71 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 114
		mu 0 4 74 33 69 73
		f 4 -111 108 101 -110
		mu 0 4 72 71 67 68
		f 4 -113 109 106 -112
		mu 0 4 73 72 68 70
		f 4 -114 -115 111 -106
		mu 0 4 46 74 73 70
		f 4 -117 113 43 -116
		mu 0 4 75 74 46 47
		f 4 -119 115 44 -118
		mu 0 4 76 75 47 48
		f 4 -121 117 45 -120
		mu 0 4 77 76 48 49
		f 4 -123 119 46 -122
		mu 0 4 78 77 49 50
		f 4 -125 121 47 -124
		mu 0 4 80 78 50 51
		f 4 -127 123 36 -126
		mu 0 4 81 79 39 40
		f 4 -129 125 37 -128
		mu 0 4 82 81 40 41
		f 4 -131 127 38 -130
		mu 0 4 83 82 41 42
		f 4 -133 129 39 -132
		mu 0 4 84 83 42 43
		f 4 -135 131 40 -134
		mu 0 4 85 84 43 44
		f 4 -136 133 98 -109
		mu 0 4 71 85 44 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "legMidUpperLeft";
	rename -uid "9780A6E0-443D-E4EC-4479-90A5E0148CE5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.91666656732559204 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0041075833 -6.9104135e-007 -0.13870478 ;
	setAttr ".pt[1]" -type "float3" -2.7790666e-006 -6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[2]" -type "float3" 0.95908505 -6.9104135e-007 0.13015029 ;
	setAttr ".pt[3]" -type "float3" -4.3213367e-007 -6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[4]" -type "float3" -1.0430813e-007 -6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[5]" -type "float3" -1.2716215 -6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[6]" -type "float3" -1.2716281 -6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[7]" -type "float3" -1.2716215 -6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[8]" -type "float3" -0.062112618 -6.8545341e-007 -0.45457488 ;
	setAttr ".pt[9]" -type "float3" 0.51813322 -6.9104135e-007 -0.56511092 ;
	setAttr ".pt[10]" -type "float3" 1.6698401 -6.9104135e-007 -0.13149552 ;
	setAttr ".pt[11]" -type "float3" -0.2279994 -6.9104135e-007 -0.35643774 ;
	setAttr ".pt[12]" -type "float3" 0.0041075833 6.9104135e-007 -0.13870478 ;
	setAttr ".pt[13]" -type "float3" -2.7790666e-006 6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[14]" -type "float3" 0.95908505 6.9104135e-007 0.13015029 ;
	setAttr ".pt[15]" -type "float3" -4.3213367e-007 6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[16]" -type "float3" -1.0430813e-007 6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[17]" -type "float3" -1.2716215 6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[18]" -type "float3" -1.2716281 6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[19]" -type "float3" -1.2716215 6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[20]" -type "float3" -0.062112551 6.9476664e-007 -0.45457488 ;
	setAttr ".pt[21]" -type "float3" 0.51813322 6.9104135e-007 -0.56511092 ;
	setAttr ".pt[22]" -type "float3" 1.6698401 6.9104135e-007 -0.13149552 ;
	setAttr ".pt[23]" -type "float3" -0.2279994 6.9104135e-007 -0.35643774 ;
	setAttr ".pt[24]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[26]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.17676353 ;
	setAttr ".pt[30]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[32]" -type "float3" 0.062112514 0 -0.4308612 ;
	setAttr ".pt[33]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[34]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[35]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[36]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[38]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.17676358 ;
	setAttr ".pt[42]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[43]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[44]" -type "float3" 0.06211254 1.8626451e-009 -0.43086109 ;
	setAttr ".pt[45]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[46]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[47]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.23793036 ;
	setAttr ".pt[49]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.23793039 ;
	setAttr ".pt[51]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[52]" -type "float3" 0 0 0.23793036 ;
	setAttr ".pt[53]" -type "float3" 0 0 0.23793036 ;
	setAttr -s 54 ".vt[0:53]"  3.33421087 -0.5 -1.110223e-016 3.22703123 -0.5 -0.40000007
		 1.25753212 -0.5 -0.74641007 0.85753298 -0.5 -0.74641001 -0.39999962 -0.5 -0.74641007
		 -0.96576309 -0.5 -0.39999995 -1.094284058 -0.5 5.9604645e-008 -0.96576309 -0.5 0.40000004
		 -0.4000001 -0.5 0.74639463 0.82595825 -0.5 0.75193095 1.1101222 -0.5 0.36778653 3.22151041 -0.5 0.29599527
		 3.33421087 0.5 1.110223e-016 3.22703123 0.5 -0.40000007 1.25753212 0.5 -0.74641007
		 0.85753298 0.5 -0.74641001 -0.39999962 0.5 -0.74641007 -0.96576309 0.5 -0.39999995
		 -1.094284058 0.5 5.9604645e-008 -0.96576309 0.5 0.40000004 -0.4000001 0.5 0.74639463
		 0.82595825 0.5 0.75193095 1.1101222 0.5 0.36778653 3.22151041 0.5 0.29599527 3.53421092 0.5 1.110223e-016
		 3.40023637 0.5 -0.49999964 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.32867613 -2.56232929 0.5 5.1058404e-008 -2.46454144 0.5 0.32867646
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 3.34947515 0.5 0.44969997
		 3.53421092 -0.5 -1.110223e-016 3.40023637 -0.5 -0.49999964 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.32867616
		 -2.56232929 -0.5 5.1058404e-008 -2.46454144 -0.5 0.32867646 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 3.34947515 -0.5 0.44969997 -3.90912056 0.5 -0.21340971
		 -4.0069084167 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -4.0069084167 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 108 ".ed[0:107]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 53 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 36 -74
		mu 0 4 27 26 39 40
		f 4 -26 73 37 -75
		mu 0 4 28 27 40 41
		f 4 -27 74 38 -76
		mu 0 4 29 28 41 42
		f 4 -28 75 39 -77
		mu 0 4 30 29 42 43
		f 4 -29 76 40 -78
		mu 0 4 31 30 43 44
		f 4 -98 99 101 -103
		mu 0 4 65 66 67 68
		f 4 -105 102 106 -108
		mu 0 4 69 65 68 70
		f 4 -32 78 43 -80
		mu 0 4 34 33 46 47
		f 4 -33 79 44 -81
		mu 0 4 35 34 47 48
		f 4 -34 80 45 -82
		mu 0 4 36 35 48 49
		f 4 -35 81 46 -83
		mu 0 4 37 36 49 50
		f 4 -36 82 47 -73
		mu 0 4 38 37 50 51
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 98 -100 -96
		mu 0 4 31 44 67 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 -106
		mu 0 4 46 33 69 70;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legFrontLeft" -p "legsLeft";
	rename -uid "DAEBE3BB-40DB-C9A6-082B-578CA8C0B678";
	setAttr ".t" -type "double3" 0.0094709875166166801 -0.31317363985524593 -0.39147949439004576 ;
	setAttr ".r" -type "double3" 0 9.0330053726131538 0 ;
	setAttr ".s" -type "double3" 0.26719579066158072 0.26719579066158072 0.26719579066158072 ;
	setAttr ".rp" -type "double3" -0.46698913320661334 0.0065997281898409789 -0.36161581341622312 ;
	setAttr ".rpt" -type "double3" -0.050983341802799398 0 0.077803618156110893 ;
	setAttr ".sp" -type "double3" -1.7477413549455303 0.024699970660091441 -1.353373915512879 ;
	setAttr ".spt" -type "double3" 1.2807522217389169 -0.018100242470250463 0.99175810209665594 ;
createNode transform -n "footFrontLeft" -p "legFrontLeft";
	rename -uid "08CC3265-45E0-F132-0D7E-9386537C4126";
	setAttr ".t" -type "double3" -20.495841326580717 -1.0177744011472301 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999943 0 18.063903730066528 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 3.3994884709322015 0 0 ;
	setAttr ".rpt" -type "double3" -0.16755647362936268 1.0541050368967224 2.9988656149493072e-017 ;
	setAttr ".sp" -type "double3" 3.3994884709322015 0 0 ;
createNode mesh -n "footFrontLeftShape" -p "footFrontLeft";
	rename -uid "DD4D379B-4473-7FA5-5DC2-9ABD3B04E5A0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.58333331 0.5 0.66666663
		 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25 0.083333336
		 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.58333331 0.25 0.66666663
		 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.41666669 0.25 0.41666669
		 0.5 0.25 0.375 0.33333334 0.375 0.41666669 0.375 0.41666669 0.375 0.41666669 0.375
		 0.5 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375 0.83333325
		 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336 0.375 0.16666667 0.375
		 0.95833325 0.25 0.95833325 0.375 0.45833328 0.5 0.95833325 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[0]" -type "float3" 0.02017992 -0.28985041 -0.15127221 ;
	setAttr ".pt[5]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.22624853 0 ;
	setAttr ".pt[10]" -type "float3" 0.025889533 -0.26243788 -0.037939087 ;
	setAttr ".pt[11]" -type "float3" 0.02017992 0.28985041 -0.15127221 ;
	setAttr ".pt[12]" -type "float3" 0.047638502 0 -0.032959405 ;
	setAttr ".pt[16]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[17]" -type "float3" 0 0.22624853 0 ;
	setAttr ".pt[21]" -type "float3" 0.025889533 0.26243788 -0.037939087 ;
	setAttr ".pt[22]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[24]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[26]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.24932756 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.24932756 0 ;
	setAttr ".pt[32]" -type "float3" -0.1930242 7.3700858e-018 0.083554931 ;
	setAttr ".pt[37]" -type "float3" 0 2.0094906e-016 0 ;
	setAttr ".pt[41]" -type "float3" 0.060289465 -3.2275145e-017 0.041529823 ;
	setAttr ".pt[42]" -type "float3" 0.15553613 -4.4666122e-017 0.057473816 ;
	setAttr ".pt[45]" -type "float3" -0.024668649 0.21719882 -0.18461378 ;
	setAttr ".pt[46]" -type "float3" -0.024668649 7.2399347e-017 -0.0017049124 ;
	setAttr ".pt[47]" -type "float3" -0.024668649 -0.21719882 -0.18461378 ;
	setAttr -s 48 ".vt[0:47]"  3.17533255 0.5 -0.21370898 2.7726388 0.5 -0.49151334
		 1.07973671 0.5 -0.66901433 0.43106297 0.5 -1.25843799 -0.63195831 0.5 -1.47715807
		 -1.58145428 0.5 -1.73791444 -1.8853091 0.5 -0.91408497 -0.6682812 0.5 -0.68961859
		 0.063656807 0.5 0.32138163 0.99895269 0.5 -0.30368894 2.99829245 0.5 0.32222319 3.17533255 -0.5 -0.21370898
		 2.7726388 -0.5 -0.49151334 1.07973671 -0.5 -0.66901433 0.43106297 -0.5 -1.25843799
		 -0.63195831 -0.5 -1.47715807 -1.58145428 -0.5 -1.73791456 -1.8853091 -0.5 -0.91408497
		 -0.6682812 -0.5 -0.68961859 0.063656807 -0.5 0.32138163 0.99895269 -0.5 -0.30368894
		 2.99829245 -0.5 0.32222319 -2.67246151 0.5 -2.29228878 -2.8498466 0.5 -2.19353032
		 -2.67246151 -0.5 -2.29228878 -2.8498466 -0.5 -2.19353032 -2.85031152 0.5 -1.92414832
		 -2.85031152 -0.5 -1.92414832 -2.41280341 -0.5 -2.30735016 -2.41280341 0.5 -2.30735016
		 0.53243601 2.8429748e-016 -1.62425566 -0.53058529 2.8429748e-016 -1.84297574 -1.48008132 2.8429748e-016 -2.10373211
		 -2.18619084 4.6353785e-017 -2.36699557 -2.67246151 0 -2.29228878 -2.8498466 0 -2.19353032
		 -2.85031152 0 -1.92414832 -1.8853091 0 -0.91408497 -0.6682812 0 -0.68961859 0.063656807 0 0.32138163
		 0.99895269 0 -0.30368894 2.99829245 0 0.32222319 3.2767055 2.8429748e-016 -0.57952666
		 2.87401175 2.8429748e-016 -0.85733104 1.18110967 2.8429748e-016 -1.034832001 3.086812496 -0.5 0.054257102
		 3.13749886 1.4214874e-016 -0.12865174 3.086812496 0.5 0.054257102;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 6 7 0 7 8 0
		 8 9 0 9 10 0 10 47 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 45 0 0 42 0 1 43 0 2 44 0 3 30 0 4 31 0 5 32 1 6 37 1 7 38 0 8 39 0 9 40 0
		 10 41 0 5 29 0 22 23 0 16 28 0 22 34 0 24 25 0 23 35 0 6 26 0 23 26 0 17 27 0 25 27 0
		 26 36 0 28 24 0 29 22 0 28 33 1 30 14 0 31 15 0 30 31 1 32 16 1 31 32 1 33 29 1 32 33 1
		 34 24 0 33 34 1 35 25 0 34 35 1 36 27 0 35 36 1 37 17 1 36 37 1 38 18 0 37 38 1 39 19 0
		 38 39 1 40 20 0 39 40 1 41 21 0 40 41 1 42 11 0 41 46 1 43 12 0 42 43 1 44 13 0 43 44 1
		 44 30 1 45 11 0 46 42 1 45 46 1 47 0 0 46 47 1;
	setAttr -s 34 -ch 160 ".fc[0:33]" -type "polyFaces" 
		f 4 -1 20 71 -22
		mu 0 4 1 0 44 46
		f 4 -2 21 73 -23
		mu 0 4 2 1 46 47
		f 4 -3 22 74 -24
		mu 0 4 3 2 47 32
		f 4 -4 23 47 -25
		mu 0 4 4 3 32 33
		f 4 -5 24 49 -26
		mu 0 4 5 4 33 34
		f 4 -33 34 55 -37
		mu 0 4 24 25 36 37
		f 4 -39 36 57 -42
		mu 0 4 28 24 37 38
		f 4 -6 26 61 -28
		mu 0 4 7 6 39 40
		f 4 -7 27 63 -29
		mu 0 4 8 7 40 41
		f 4 -8 28 65 -30
		mu 0 4 9 8 41 42
		f 4 -9 29 67 -31
		mu 0 4 10 9 42 43
		f 4 -10 30 69 79
		mu 0 4 51 10 43 49
		f 4 25 51 50 -32
		mu 0 4 5 34 35 31
		f 4 -27 37 41 59
		mu 0 4 39 6 28 38
		f 16 1 2 3 4 31 43 32 38 -38 5 6 7 8 9 78 0
		mu 0 16 1 2 3 4 5 31 25 24 28 6 7 8 9 10 50 0
		f 16 -11 -76 -20 -19 -18 -17 -16 39 -41 -36 -43 -34 -15 -14 -13 -12
		mu 0 16 13 23 48 22 21 20 19 18 29 27 26 30 17 16 15 14
		f 4 -51 53 -35 -44
		mu 0 4 31 35 36 25
		f 4 -48 45 13 -47
		mu 0 4 33 32 15 16
		f 4 -50 46 14 -49
		mu 0 4 34 33 16 17
		f 4 -52 48 33 44
		mu 0 4 35 34 17 30
		f 4 -54 -45 42 -53
		mu 0 4 36 35 30 26
		f 4 -56 52 35 -55
		mu 0 4 37 36 26 27
		f 4 -58 54 40 -57
		mu 0 4 38 37 27 29
		f 4 -59 -60 56 -40
		mu 0 4 18 39 38 29
		f 4 -62 58 15 -61
		mu 0 4 40 39 18 19
		f 4 -64 60 16 -63
		mu 0 4 41 40 19 20
		f 4 -66 62 17 -65
		mu 0 4 42 41 20 21
		f 4 -68 64 18 -67
		mu 0 4 43 42 21 22
		f 4 -70 66 19 77
		mu 0 4 49 43 22 48
		f 4 -72 68 10 -71
		mu 0 4 46 44 12 13
		f 4 -74 70 11 -73
		mu 0 4 47 46 13 14
		f 4 -75 72 12 -46
		mu 0 4 32 47 14 15
		f 4 -77 -78 75 -69
		mu 0 4 45 49 48 23
		f 4 -79 -80 76 -21
		mu 0 4 11 51 49 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "footFrontLeft";
	rename -uid "49BC05CB-4085-C4B0-D3DA-87BD527110E3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999994039535522 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0 0.75 0.083333336
		 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331
		 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75
		 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5
		 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988
		 0.5 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669
		 0 0.5 0 0.58333331 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988
		 0 0.5 0.5 0.41666669 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".vt[0:53]"  2.99634647 -0.50000072 -0.12447663 2.62783647 -0.50000072 -0.3865931
		 1.257532 -0.50000072 -0.74641049 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -0.96576029 -0.50000072 -0.39999956 -1.094287992 -0.50000072 6.4377673e-008 -0.96576029 -0.50000072 0.3999995
		 -0.40000018 -0.50000072 0.74639463 0.82595778 -0.50000072 0.75193137 1.1101222 -0.50000072 0.36778656
		 2.89986706 -0.50000072 0.21567634 2.99634647 0.50000072 -0.12447663 2.62783647 0.50000072 -0.3865931
		 1.257532 0.50000072 -0.74641049 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -0.96576029 0.50000072 -0.39999956 -1.094287992 0.50000072 6.4377673e-008 -0.96576029 0.50000072 0.3999995
		 -0.40000018 0.50000072 0.74639463 0.82595778 0.50000072 0.75193137 1.1101222 0.50000072 0.36778656
		 2.89986706 0.50000072 0.21567634 3.17533255 0.5 -0.21370898 2.7726388 0.5 -0.49151334
		 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 2.99829245 0.5 0.32222319
		 3.17533255 -0.5 -0.21370898 2.7726388 -0.5 -0.49151334 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 2.99829245 -0.5 0.32222319 -3.90912056 0.5 -0.21340971
		 -3.77871704 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -3.77871704 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 96 ".ed[0:95]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 12 24 1 13 25 1 14 26 1
		 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0 25 37 0
		 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1 37 1 1
		 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0 30 49 1
		 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0 52 53 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 -13 48 24 -50
		mu 0 4 1 0 13 14
		f 4 -14 49 25 -51
		mu 0 4 2 1 14 15
		f 4 -15 50 26 -52
		mu 0 4 3 2 15 16
		f 4 -16 51 27 -53
		mu 0 4 4 3 16 17
		f 4 -17 52 28 -54
		mu 0 4 5 4 17 18
		f 4 -18 53 29 -55
		mu 0 4 6 5 18 19
		f 4 -19 54 30 -56
		mu 0 4 7 6 19 20
		f 4 -20 55 31 -57
		mu 0 4 8 7 20 21
		f 4 -21 56 32 -58
		mu 0 4 9 8 21 22
		f 4 -22 57 33 -59
		mu 0 4 10 9 22 23
		f 4 -23 58 34 -60
		mu 0 4 11 10 23 24
		f 4 -24 59 35 -49
		mu 0 4 12 11 24 25
		f 4 -25 60 36 -62
		mu 0 4 14 13 26 27
		f 4 -26 61 37 -63
		mu 0 4 15 14 27 28
		f 4 -27 62 38 -64
		mu 0 4 16 15 28 29
		f 4 -28 63 39 -65
		mu 0 4 17 16 29 30
		f 4 -29 64 40 -66
		mu 0 4 18 17 30 31
		f 4 -86 87 89 -91
		mu 0 4 52 53 54 55
		f 4 -93 90 94 -96
		mu 0 4 56 52 55 57
		f 4 -32 66 43 -68
		mu 0 4 21 20 33 34
		f 4 -33 67 44 -69
		mu 0 4 22 21 34 35
		f 4 -34 68 45 -70
		mu 0 4 23 22 35 36
		f 4 -35 69 46 -71
		mu 0 4 24 23 36 37
		f 4 -36 70 47 -61
		mu 0 4 25 24 37 38
		f 4 -37 71 0 -73
		mu 0 4 27 26 39 40
		f 4 -38 72 1 -74
		mu 0 4 28 27 40 41
		f 4 -39 73 2 -75
		mu 0 4 29 28 41 42
		f 4 -40 74 3 -76
		mu 0 4 30 29 42 43
		f 4 -41 75 4 -77
		mu 0 4 31 30 43 44
		f 4 -42 76 5 -78
		mu 0 4 32 31 44 45
		f 4 -43 77 6 -79
		mu 0 4 33 32 45 46
		f 4 -44 78 7 -80
		mu 0 4 34 33 46 47
		f 4 -45 79 8 -81
		mu 0 4 35 34 47 48
		f 4 -46 80 9 -82
		mu 0 4 36 35 48 49
		f 4 -47 81 10 -83
		mu 0 4 37 36 49 50
		f 4 -48 82 11 -72
		mu 0 4 38 37 50 51
		f 4 -30 83 85 -85
		mu 0 4 19 18 53 52
		f 4 65 86 -88 -84
		mu 0 4 18 31 54 53
		f 4 41 88 -90 -87
		mu 0 4 31 32 55 54
		f 4 -31 84 92 -92
		mu 0 4 20 19 52 56
		f 4 42 93 -95 -89
		mu 0 4 32 33 57 55
		f 4 -67 91 95 -94
		mu 0 4 33 20 56 57;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legFrontMidLeft" -p "legFrontLeft";
	rename -uid "E6B2BA3A-4777-6ACE-2DD1-1B9EEFAFEABC";
	setAttr ".t" -type "double3" -13.336344007109831 0.010670930974769011 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 -4.7281572832829326 ;
	setAttr ".s" -type "double3" 1 0.83886907588957871 1 ;
	setAttr ".rp" -type "double3" 3.7928186495433174 0 0 ;
	setAttr ".rpt" -type "double3" -0.01290696629890006 -0.31263553092370672 -9.5348656683434232e-018 ;
	setAttr ".sp" -type "double3" 3.7928186495433174 0 0 ;
createNode mesh -n "legFrontMidLeftShape" -p "legFrontMidLeft";
	rename -uid "B5258E21-4599-F5A1-948F-0CB1E4706963";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58333331346511841 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.33333334 0.375 0.41666669
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375
		 0.74999994 0.375 0.83333325 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336
		 0.375 0.16666667 0.375 0.25 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[1]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[13]" -type "float3" 0.17429079 0 0.054351158 ;
	setAttr ".pt[24]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[25]" -type "float3" 0.17429079 -0.107757 0.054351158 ;
	setAttr ".pt[35]" -type "float3" 0 -0.107757 0 ;
	setAttr ".pt[36]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[37]" -type "float3" 0.17429079 0.107757 0.054351158 ;
	setAttr ".pt[47]" -type "float3" 0 0.107757 0 ;
	setAttr ".pt[48]" -type "float3" 0.041373458 -0.18694898 0.085845932 ;
	setAttr ".pt[50]" -type "float3" 0.041373458 0.18694898 0.085845932 ;
	setAttr ".pt[52]" -type "float3" 0.13712741 -0.1840795 0.076923326 ;
	setAttr ".pt[53]" -type "float3" 0.13712741 0.1840795 0.076923326 ;
	setAttr ".pt[54]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[55]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[58]" -type "float3" 0.13712741 -2.0361234e-017 0.076923326 ;
	setAttr ".pt[65]" -type "float3" 0.28494743 5.8166192e-016 -0.27127227 ;
	setAttr ".pt[66]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr ".pt[67]" -type "float3" -0.10074001 1.0169003e-016 -0.45797119 ;
	setAttr -s 68 ".vt[0:67]"  3.33421493 -0.50000072 -7.05768e-010 3.22702837 -0.50000072 -0.39999962
		 1.257532 -0.50000072 -0.74641049 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -0.96576029 -0.50000072 -0.39999956 -1.094287992 -0.50000072 6.4377673e-008 -0.96576029 -0.50000072 0.3999995
		 -0.40000018 -0.50000072 0.74639463 0.82595778 -0.50000072 0.75193137 1.1101222 -0.50000072 0.36778656
		 3.22151446 -0.50000072 0.2959947 3.33421493 0.50000072 -7.0576778e-010 3.22702837 0.50000072 -0.39999962
		 1.257532 0.50000072 -0.74641049 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -0.96576029 0.50000072 -0.39999956 -1.094287992 0.50000072 6.4377673e-008 -0.96576029 0.50000072 0.3999995
		 -0.40000018 0.50000072 0.74639463 0.82595778 0.50000072 0.75193137 1.1101222 0.50000072 0.36778656
		 3.22151446 0.50000072 0.2959947 3.53421092 0.5 1.110223e-016 3.40023637 0.5 -0.49999964
		 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 3.34947515 0.5 0.44969997
		 3.53421092 -0.5 -1.110223e-016 3.40023637 -0.5 -0.49999964 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 3.34947515 -0.5 0.44969997 -3.90912056 0.5 -0.21340971
		 -3.77871704 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -3.77871704 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003 -0.49999952 0 -0.93282592
		 -2.46454144 0 -0.5054397 -3.90912056 0 -0.21340972 -3.77871704 0 8.5410491e-008 -3.90912056 0 0.21341003
		 -2.46454144 0 0.50544006 -0.5 0 0.93301272 0.8891077 0 0.9275071 1.21012211 0 0.55440468
		 3.34947515 0 0.44969997 3.53421092 0 0 3.40023637 0 -0.49999964 1.3575325 0 -0.93282592
		 0.85753298 0 -0.93319947;
	setAttr -s 136 ".ed[0:135]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 64 0
		 25 65 0 26 66 0 27 67 0 28 54 0 29 55 1 31 59 1 32 60 0 33 61 0 34 62 0 35 63 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 56 0 42 51 1 50 51 0 49 57 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 58 0 54 40 0 55 41 1 54 55 1 56 50 0 55 56 1 57 51 0 56 57 1 58 53 0 57 58 1 59 43 1
		 58 59 1 60 44 0 59 60 1 61 45 0 60 61 1 62 46 0 61 62 1 63 47 0 62 63 1 64 36 0 63 64 1
		 65 37 0 64 65 1 66 38 0 65 66 1 67 39 0 66 67 1 67 54 1;
	setAttr -s 68 -ch 272 ".fc[0:67]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 130 -74
		mu 0 4 27 26 81 83
		f 4 -26 73 132 -75
		mu 0 4 28 27 83 84
		f 4 -27 74 134 -76
		mu 0 4 29 28 84 85
		f 4 -28 75 135 -77
		mu 0 4 30 29 85 71
		f 4 -29 76 110 -78
		mu 0 4 31 30 71 72
		f 4 -98 99 114 -103
		mu 0 4 65 66 73 74
		f 4 -105 102 116 -108
		mu 0 4 69 65 74 75
		f 4 -32 78 120 -80
		mu 0 4 34 33 76 77
		f 4 -33 79 122 -81
		mu 0 4 35 34 77 78
		f 4 -34 80 124 -82
		mu 0 4 36 35 78 79
		f 4 -35 81 126 -83
		mu 0 4 37 36 79 80
		f 4 -36 82 128 -73
		mu 0 4 38 37 80 82
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 112 -100 -96
		mu 0 4 31 72 73 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 118
		mu 0 4 76 33 69 75
		f 4 -111 108 40 -110
		mu 0 4 72 71 43 44
		f 4 -113 109 98 -112
		mu 0 4 73 72 44 67
		f 4 -115 111 101 -114
		mu 0 4 74 73 67 68
		f 4 -117 113 106 -116
		mu 0 4 75 74 68 70
		f 4 -118 -119 115 -106
		mu 0 4 46 76 75 70
		f 4 -121 117 43 -120
		mu 0 4 77 76 46 47
		f 4 -123 119 44 -122
		mu 0 4 78 77 47 48
		f 4 -125 121 45 -124
		mu 0 4 79 78 48 49
		f 4 -127 123 46 -126
		mu 0 4 80 79 49 50
		f 4 -129 125 47 -128
		mu 0 4 82 80 50 51
		f 4 -131 127 36 -130
		mu 0 4 83 81 39 40
		f 4 -133 129 37 -132
		mu 0 4 84 83 40 41
		f 4 -135 131 38 -134
		mu 0 4 85 84 41 42
		f 4 -136 133 39 -109
		mu 0 4 71 85 42 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "legFrontUpperLeft" -p "legFrontLeft";
	rename -uid "14EFB6B9-4B8A-518B-B25B-AA821208C215";
	setAttr ".t" -type "double3" -5.4174773092724404 0 -1.3533739155128783 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".rp" -type "double3" 3.6022004082668064 0 0 ;
	setAttr ".sp" -type "double3" 3.6022004082668064 0 0 ;
createNode mesh -n "legFrontUpperLeftShape" -p "legFrontUpperLeft";
	rename -uid "CF1BABEE-4E55-7DC3-8125-3E9F6E5C48B1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25 0.41666669 0.375 0.5
		 0.375 0.58333331 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375 0.83333325
		 0.375 0.91666657 0.375 0 0.375 0.99999988 0.375 0.083333336 0.375 0.16666667 0.375
		 0.25 0.375 0.33333334 0.375 0.41666669 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[48]" -type "float3" 0.027137736 -0.17101918 0.16545191 ;
	setAttr ".pt[50]" -type "float3" 0.027137736 0.1710192 0.16545191 ;
	setAttr ".pt[52]" -type "float3" 0.071364447 -0.17736076 0 ;
	setAttr ".pt[53]" -type "float3" 0.071364447 0.17736076 0 ;
	setAttr ".pt[63]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[64]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[65]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[66]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr ".pt[67]" -type "float3" -0.12830874 6.9290452e-017 -0.31205645 ;
	setAttr -s 68 ".vt[0:67]"  3.33831835 -0.50000072 -0.13870478 3.22702837 -0.50000072 -0.39999962
		 2.21661711 -0.50000072 -0.61625981 0.85753256 -0.50000072 -0.74641049 -0.39999974 -0.50000072 -0.74641049
		 -2.23738456 -0.50000072 -0.39999956 -2.3659122 -0.50000072 6.4377673e-008 -2.23738456 -0.50000072 0.3999995
		 -0.46211272 -0.50000072 0.29181975 1.34409142 -0.50000072 0.18682003 2.7799623 -0.50000072 0.23629101
		 2.99351096 -0.50000072 -0.060442477 3.33831835 0.50000072 -0.13870478 3.22702837 0.50000072 -0.39999962
		 2.21661711 0.50000072 -0.61625981 0.85753256 0.50000072 -0.74641049 -0.39999974 0.50000072 -0.74641049
		 -2.23738456 0.50000072 -0.39999956 -2.3659122 0.50000072 6.4377673e-008 -2.23738456 0.50000072 0.3999995
		 -0.46211264 0.50000072 0.29181975 1.34409142 0.50000072 0.18682003 2.7799623 0.50000072 0.23629101
		 2.99351096 0.50000072 -0.060442477 3.5135324 0.5 -0.042275865 3.40023637 0.5 -0.49999964
		 2.31661773 0.5 -0.80267519 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.50543964 -2.56232929 0.5 -1.6212667e-009 -2.46454144 0.5 0.50544006
		 -0.43788749 0.5 0.50215149 1.40724134 0.5 0.3623957 2.87996221 0.5 0.42290911 3.12147164 0.5 0.093262792
		 3.5135324 -0.5 -0.042275865 3.40023637 -0.5 -0.49999964 2.31661773 -0.5 -0.80267519
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.50543976
		 -2.56232929 -0.5 -1.6212667e-009 -2.46454144 -0.5 0.50544006 -0.43788746 -0.5 0.50215161
		 1.40724134 -0.5 0.3623957 2.87996221 -0.5 0.42290911 3.12147164 -0.5 0.093262792
		 -3.90912056 0.5 -0.45134008 -3.77871704 0.5 6.1950374e-009 -3.90912056 -0.5 -0.45134011
		 -3.77871704 -0.5 6.1950374e-009 -3.90912056 0.5 0.45134038 -3.90912056 -0.5 0.45134038
		 -3.90912056 0 -0.45134008 -3.77871704 0 6.1950374e-009 -3.90912056 0 0.45134038 -2.46454144 0 0.50544006
		 -0.43788749 0 0.50215155 1.40724134 0 0.3623957 2.87996221 0 0.42290911 3.12147164 0 0.093262792
		 3.5135324 0 -0.042275865 3.40023637 0 -0.49999964 2.31661773 0 -0.80267519 0.85753298 0 -0.93319947
		 -0.49999952 0 -0.93282592 -2.46454144 0 -0.5054397;
	setAttr -s 136 ".ed[0:135]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 62 0
		 25 63 0 26 64 0 27 65 0 28 66 0 29 67 1 31 57 1 32 58 0 33 59 0 34 60 0 35 61 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 54 0 42 51 1 50 51 0 49 55 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 56 0 54 50 0 55 51 0 54 55 1 56 53 0 55 56 1 57 43 1 56 57 1 58 44 0 57 58 1 59 45 0
		 58 59 1 60 46 0 59 60 1 61 47 0 60 61 1 62 36 0 61 62 1 63 37 0 62 63 1 64 38 0 63 64 1
		 65 39 0 64 65 1 66 40 0 65 66 1 67 41 1 66 67 1 67 54 1;
	setAttr -s 68 -ch 272 ".fc[0:67]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 126 -74
		mu 0 4 27 26 79 81
		f 4 -26 73 128 -75
		mu 0 4 28 27 81 82
		f 4 -27 74 130 -76
		mu 0 4 29 28 82 83
		f 4 -28 75 132 -77
		mu 0 4 30 29 83 84
		f 4 -29 76 134 -78
		mu 0 4 31 30 84 85
		f 4 -98 99 110 -103
		mu 0 4 65 66 71 72
		f 4 -105 102 112 -108
		mu 0 4 69 65 72 73
		f 4 -32 78 116 -80
		mu 0 4 34 33 74 75
		f 4 -33 79 118 -81
		mu 0 4 35 34 75 76
		f 4 -34 80 120 -82
		mu 0 4 36 35 76 77
		f 4 -35 81 122 -83
		mu 0 4 37 36 77 78
		f 4 -36 82 124 -73
		mu 0 4 38 37 78 80
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 135 -100 -96
		mu 0 4 31 85 71 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 114
		mu 0 4 74 33 69 73
		f 4 -111 108 101 -110
		mu 0 4 72 71 67 68
		f 4 -113 109 106 -112
		mu 0 4 73 72 68 70
		f 4 -114 -115 111 -106
		mu 0 4 46 74 73 70
		f 4 -117 113 43 -116
		mu 0 4 75 74 46 47
		f 4 -119 115 44 -118
		mu 0 4 76 75 47 48
		f 4 -121 117 45 -120
		mu 0 4 77 76 48 49
		f 4 -123 119 46 -122
		mu 0 4 78 77 49 50
		f 4 -125 121 47 -124
		mu 0 4 80 78 50 51
		f 4 -127 123 36 -126
		mu 0 4 81 79 39 40
		f 4 -129 125 37 -128
		mu 0 4 82 81 40 41
		f 4 -131 127 38 -130
		mu 0 4 83 82 41 42
		f 4 -133 129 39 -132
		mu 0 4 84 83 42 43
		f 4 -135 131 40 -134
		mu 0 4 85 84 43 44
		f 4 -136 133 98 -109
		mu 0 4 71 85 44 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "legFrontUpperLeft";
	rename -uid "9EB2A2E6-4DC4-3CD8-9EE4-9A902AF400C0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.91666656732559204 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0 1 0.083333336 1
		 0.16666667 1 0.25 1 0.33333334 1 0.41666669 1 0.5 1 0.58333331 1 0.66666663 1 0.74999994
		 1 0.83333325 1 0.91666657 1 0.99999988 1 0 0.75 0.083333336 0.75 0.16666667 0.75
		 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75
		 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0 0.5 0.083333336
		 0.5 0.16666667 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5
		 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.25
		 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25
		 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988
		 0.25 0 0 0.083333336 0 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333331
		 0 0.66666663 0 0.74999994 0 0.83333325 0 0.91666657 0 0.99999988 0 0.5 0.5 0.41666669
		 0.5 0.41666669 0.25 0.5 0.25 0.58333331 0.5 0.58333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0041075833 -6.9104135e-007 -0.13870478 ;
	setAttr ".pt[1]" -type "float3" -2.7790666e-006 -6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[2]" -type "float3" 0.95908505 -6.9104135e-007 0.13015029 ;
	setAttr ".pt[3]" -type "float3" -4.3213367e-007 -6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[4]" -type "float3" -1.0430813e-007 -6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[5]" -type "float3" -1.2716215 -6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[6]" -type "float3" -1.2716281 -6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[7]" -type "float3" -1.2716215 -6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[8]" -type "float3" -0.062112618 -6.8545341e-007 -0.45457488 ;
	setAttr ".pt[9]" -type "float3" 0.51813322 -6.9104135e-007 -0.56511092 ;
	setAttr ".pt[10]" -type "float3" 1.6698401 -6.9104135e-007 -0.13149552 ;
	setAttr ".pt[11]" -type "float3" -0.2279994 -6.9104135e-007 -0.35643774 ;
	setAttr ".pt[12]" -type "float3" 0.0041075833 6.9104135e-007 -0.13870478 ;
	setAttr ".pt[13]" -type "float3" -2.7790666e-006 6.9104135e-007 4.6007335e-007 ;
	setAttr ".pt[14]" -type "float3" 0.95908505 6.9104135e-007 0.13015029 ;
	setAttr ".pt[15]" -type "float3" -4.3213367e-007 6.9104135e-007 -4.5821071e-007 ;
	setAttr ".pt[16]" -type "float3" -1.0430813e-007 6.9104135e-007 -4.4330955e-007 ;
	setAttr ".pt[17]" -type "float3" -1.2716215 6.8917871e-007 3.7997961e-007 ;
	setAttr ".pt[18]" -type "float3" -1.2716281 6.8917871e-007 4.7730282e-009 ;
	setAttr ".pt[19]" -type "float3" -1.2716215 6.8917871e-007 -5.4016709e-007 ;
	setAttr ".pt[20]" -type "float3" -0.062112551 6.9476664e-007 -0.45457488 ;
	setAttr ".pt[21]" -type "float3" 0.51813322 6.9104135e-007 -0.56511092 ;
	setAttr ".pt[22]" -type "float3" 1.6698401 6.9104135e-007 -0.13149552 ;
	setAttr ".pt[23]" -type "float3" -0.2279994 6.9104135e-007 -0.35643774 ;
	setAttr ".pt[24]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[26]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.17676353 ;
	setAttr ".pt[30]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[32]" -type "float3" 0.062112514 0 -0.4308612 ;
	setAttr ".pt[33]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[34]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[35]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[36]" -type "float3" -0.020678561 0 -0.042275865 ;
	setAttr ".pt[38]" -type "float3" 0.95908529 0 0.13015074 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.17676358 ;
	setAttr ".pt[42]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".pt[43]" -type "float3" 0 0 0.17676358 ;
	setAttr ".pt[44]" -type "float3" 0.06211254 1.8626451e-009 -0.43086109 ;
	setAttr ".pt[45]" -type "float3" 0.5181337 1.7763568e-015 -0.5651114 ;
	setAttr ".pt[46]" -type "float3" 1.6698401 0 -0.13149557 ;
	setAttr ".pt[47]" -type "float3" -0.22800349 0 -0.35643718 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.23793036 ;
	setAttr ".pt[49]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.23793039 ;
	setAttr ".pt[51]" -type "float3" 0.22819133 0 -7.9215454e-008 ;
	setAttr ".pt[52]" -type "float3" 0 0 0.23793036 ;
	setAttr ".pt[53]" -type "float3" 0 0 0.23793036 ;
	setAttr -s 54 ".vt[0:53]"  3.33421087 -0.5 -1.110223e-016 3.22703123 -0.5 -0.40000007
		 1.25753212 -0.5 -0.74641007 0.85753298 -0.5 -0.74641001 -0.39999962 -0.5 -0.74641007
		 -0.96576309 -0.5 -0.39999995 -1.094284058 -0.5 5.9604645e-008 -0.96576309 -0.5 0.40000004
		 -0.4000001 -0.5 0.74639463 0.82595825 -0.5 0.75193095 1.1101222 -0.5 0.36778653 3.22151041 -0.5 0.29599527
		 3.33421087 0.5 1.110223e-016 3.22703123 0.5 -0.40000007 1.25753212 0.5 -0.74641007
		 0.85753298 0.5 -0.74641001 -0.39999962 0.5 -0.74641007 -0.96576309 0.5 -0.39999995
		 -1.094284058 0.5 5.9604645e-008 -0.96576309 0.5 0.40000004 -0.4000001 0.5 0.74639463
		 0.82595825 0.5 0.75193095 1.1101222 0.5 0.36778653 3.22151041 0.5 0.29599527 3.53421092 0.5 1.110223e-016
		 3.40023637 0.5 -0.49999964 1.3575325 0.5 -0.93282592 0.85753298 0.5 -0.93319947 -0.49999952 0.5 -0.93282592
		 -2.46454144 0.5 -0.32867613 -2.56232929 0.5 5.1058404e-008 -2.46454144 0.5 0.32867646
		 -0.5 0.5 0.93301272 0.8891077 0.5 0.9275071 1.21012211 0.5 0.55440468 3.34947515 0.5 0.44969997
		 3.53421092 -0.5 -1.110223e-016 3.40023637 -0.5 -0.49999964 1.3575325 -0.5 -0.93282592
		 0.85753298 -0.5 -0.93319947 -0.49999952 -0.5 -0.93282592 -2.46454144 -0.5 -0.32867616
		 -2.56232929 -0.5 5.1058404e-008 -2.46454144 -0.5 0.32867646 -0.5 -0.5 0.93301272
		 0.8891077 -0.5 0.9275071 1.21012211 -0.5 0.55440468 3.34947515 -0.5 0.44969997 -3.90912056 0.5 -0.21340971
		 -4.0069084167 0.5 8.5410491e-008 -3.90912056 -0.5 -0.21340972 -4.0069084167 -0.5 8.5410491e-008
		 -3.90912056 0.5 0.21341003 -3.90912056 -0.5 0.21341003;
	setAttr -s 108 ".ed[0:107]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 1 30 31 1 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 0 12 0 1 13 0 2 14 0
		 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 1 31 43 1 32 44 0 33 45 0 34 46 0 35 47 0 36 0 1
		 37 1 1 38 2 1 39 3 1 40 4 1 41 5 1 42 6 1 43 7 1 44 8 1 45 9 1 46 10 1 47 11 1 29 48 0
		 30 49 1 48 49 0 41 50 0 48 50 0 42 51 1 50 51 0 49 51 0 31 52 0 49 52 0 43 53 0 51 53 0
		 52 53 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 -1 48 12 -50
		mu 0 4 1 0 13 14
		f 4 -2 49 13 -51
		mu 0 4 2 1 14 15
		f 4 -3 50 14 -52
		mu 0 4 3 2 15 16
		f 4 -4 51 15 -53
		mu 0 4 4 3 16 17
		f 4 -5 52 16 -54
		mu 0 4 5 4 17 18
		f 4 -6 53 17 -55
		mu 0 4 6 5 18 19
		f 4 -7 54 18 -56
		mu 0 4 7 6 19 20
		f 4 -8 55 19 -57
		mu 0 4 8 7 20 21
		f 4 -9 56 20 -58
		mu 0 4 9 8 21 22
		f 4 -10 57 21 -59
		mu 0 4 10 9 22 23
		f 4 -11 58 22 -60
		mu 0 4 11 10 23 24
		f 4 -12 59 23 -49
		mu 0 4 12 11 24 25
		f 4 -13 60 24 -62
		mu 0 4 14 13 26 27
		f 4 -14 61 25 -63
		mu 0 4 15 14 27 28
		f 4 -15 62 26 -64
		mu 0 4 16 15 28 29
		f 4 -16 63 27 -65
		mu 0 4 17 16 29 30
		f 4 -17 64 28 -66
		mu 0 4 18 17 30 31
		f 4 -18 65 29 -67
		mu 0 4 19 18 31 32
		f 4 -19 66 30 -68
		mu 0 4 20 19 32 33
		f 4 -20 67 31 -69
		mu 0 4 21 20 33 34
		f 4 -21 68 32 -70
		mu 0 4 22 21 34 35
		f 4 -22 69 33 -71
		mu 0 4 23 22 35 36
		f 4 -23 70 34 -72
		mu 0 4 24 23 36 37
		f 4 -24 71 35 -61
		mu 0 4 25 24 37 38
		f 4 -25 72 36 -74
		mu 0 4 27 26 39 40
		f 4 -26 73 37 -75
		mu 0 4 28 27 40 41
		f 4 -27 74 38 -76
		mu 0 4 29 28 41 42
		f 4 -28 75 39 -77
		mu 0 4 30 29 42 43
		f 4 -29 76 40 -78
		mu 0 4 31 30 43 44
		f 4 -98 99 101 -103
		mu 0 4 65 66 67 68
		f 4 -105 102 106 -108
		mu 0 4 69 65 68 70
		f 4 -32 78 43 -80
		mu 0 4 34 33 46 47
		f 4 -33 79 44 -81
		mu 0 4 35 34 47 48
		f 4 -34 80 45 -82
		mu 0 4 36 35 48 49
		f 4 -35 81 46 -83
		mu 0 4 37 36 49 50
		f 4 -36 82 47 -73
		mu 0 4 38 37 50 51
		f 4 -37 83 0 -85
		mu 0 4 40 39 52 53
		f 4 -38 84 1 -86
		mu 0 4 41 40 53 54
		f 4 -39 85 2 -87
		mu 0 4 42 41 54 55
		f 4 -40 86 3 -88
		mu 0 4 43 42 55 56
		f 4 -41 87 4 -89
		mu 0 4 44 43 56 57
		f 4 -42 88 5 -90
		mu 0 4 45 44 57 58
		f 4 -43 89 6 -91
		mu 0 4 46 45 58 59
		f 4 -44 90 7 -92
		mu 0 4 47 46 59 60
		f 4 -45 91 8 -93
		mu 0 4 48 47 60 61
		f 4 -46 92 9 -94
		mu 0 4 49 48 61 62
		f 4 -47 93 10 -95
		mu 0 4 50 49 62 63
		f 4 -48 94 11 -84
		mu 0 4 51 50 63 64
		f 4 -30 95 97 -97
		mu 0 4 32 31 66 65
		f 4 77 98 -100 -96
		mu 0 4 31 44 67 66
		f 4 41 100 -102 -99
		mu 0 4 44 45 68 67
		f 4 -31 96 104 -104
		mu 0 4 33 32 65 69
		f 4 42 105 -107 -101
		mu 0 4 45 46 70 68
		f 4 -79 103 107 -106
		mu 0 4 46 33 69 70;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D3B378AD-4D1D-DC65-9556-5E8C2FAC0944";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "1F5C634B-4AC9-77BF-EF21-ABAC8EAC1366";
createNode displayLayer -n "defaultLayer";
	rename -uid "2105F25E-46E3-53B1-979D-47A9D0D459AA";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3A278172-49F0-05D4-B53F-97B5C0CCCAE5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "322499AA-4F70-5464-6420-F0972A371B17";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "D67B2CB9-477E-AB15-6C4F-76A94834BB38";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "7E3D52A3-40CB-B0A2-C702-E89E2526263D";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 0.66339080221181146 0 0 0 0 0.858311075702196 0 0 0 0 0.70038757504484928 0
		 0 2.0531596310879863e-005 -6.8829137234289668 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.14123751 -7.2619066 ;
	setAttr ".rs" 60457;
	setAttr ".lt" -type "double3" 2.9837243786801082e-016 -6.9388939039072284e-017 0.25157876892492215 ;
	setAttr ".ls" -type "double3" 0.31666667806149423 0.31666667806149423 0.31666667806149423 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24212021147655602 -0.076210651087149472 -7.284284364622911 ;
	setAttr ".cbx" -type "double3" 0.24212021147655602 0.35868567945856761 -7.2395293523742561 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "53C34A5F-43B0-2A03-2692-B885275855AB";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 0.66339080221181146 0 0 0 0 0.858311075702196 0 0 0 0 0.70038757504484928 0
		 0 2.0531596310879863e-005 -6.8829137234289668 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0 -0.24775554838762659 ;
	setAttr ".s" -type "double3" 0.48333334009280976 0.48333334009280976 0.48333334009280976 ;
	setAttr ".pvt" -type "float3" -2.0759116e-007 0.11871447 -7.5930424 ;
	setAttr ".rs" 36917;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.17802671797175804 -0.037819064769847269 -7.3948335071796913 ;
	setAttr ".cbx" -type "double3" 0.17802630278944034 0.2752480149480761 -7.295738394882771 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "8DD7F5FF-4636-D3D9-CBEA-2E82BB3E8EE7";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[1]" -type "float3" 0 -0.27384776 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.19824661 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.32700434 0 ;
	setAttr ".tk[25]" -type "float3" 0.13185841 0.026494384 0.27323532 ;
	setAttr ".tk[26]" -type "float3" -3.6314949e-018 0 0.27323532 ;
	setAttr ".tk[27]" -type "float3" -3.6314949e-018 -0.097241901 0.20055014 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.27323532 ;
	setAttr ".tk[29]" -type "float3" -0.13185841 0.026494384 0.27323532 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.27323532 ;
	setAttr ".tk[31]" -type "float3" -3.6314949e-018 0 0.21322839 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.27323532 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.27323532 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "6A2D1371-41AD-5961-8464-88A03BA1E2A8";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 0.66339080221181146 0 0 0 0 0.858311075702196 0 0 0 0 0.70038757504484928 0
		 0 2.0531596310879863e-005 -6.8829137234289668 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0 -0.23702168650752231 ;
	setAttr ".s" -type "double3" 0.39999999010885579 0.39999999010885579 0.39999999010885579 ;
	setAttr ".pvt" -type "float3" -2.0264851e-007 0.11647993 -7.8300619 ;
	setAttr ".rs" 54376;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.086046347520164712 0.038587508073084018 -7.6169902710638215 ;
	setAttr ".cbx" -type "double3" 0.086045942223140298 0.19437235836310038 -7.569093511810018 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "0ED7C1E7-4CA5-0771-FAFF-63B304DA837A";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[30]" -type "float3" 0 -0.035987366 0 ;
	setAttr ".tk[33]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[37]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[39]" -type "float3" 0 -0.026408747 0 ;
	setAttr ".tk[40]" -type "float3" 0.065082476 0.047737591 -0.022788992 ;
	setAttr ".tk[41]" -type "float3" -0.065082476 0.047737591 -0.022788992 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2758C515-4FEA-DA97-6ED2-1DA4DAD0C5C9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 0\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 770\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 0\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 770\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 769\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 769\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 770\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 770\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1399\n                -height 729\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1399\n            -height 729\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.335767\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"armMidLeftJoint\" \n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.335767\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"armMidLeftJoint\" \n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n"
		+ "                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1399\\n    -height 729\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1399\\n    -height 729\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "79472474-4E54-7C6B-0ED8-FBA20E098C18";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube2";
	rename -uid "1AB39A39-4556-E33C-B579-A783FD012293";
	setAttr ".sw" 3;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "DFDE0660-430D-EF10-A5A3-40A2BEFAC550";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.965033590011204 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -10.753577 0 3.6963255 ;
	setAttr ".rs" 40902;
	setAttr ".lt" -type "double3" 0.38102239575512498 0 1.9164967856764288 ;
	setAttr ".ls" -type "double3" 0.53898940450809751 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.677654742412175 -0.5 3.0164194107055664 ;
	setAttr ".cbx" -type "double3" -9.8295002571864973 0.5 4.3762316703796387 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "7A0EB63B-46B0-2E09-FB37-208F68E4C46A";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[0:15]" -type "float3"  -1.112167 0 -1.71731567 -1.24301016
		 0 0.91590226 -0.96496838 0 2.63322306 -0.21262115 0 3.87623167 -1.112167 0 -1.71731567
		 -1.24301016 0 0.91590226 -0.96496838 0 2.63322306 -0.21262115 0 3.87623167 -0.53972811
		 0 -4.54680538 3.18930435 0 -0.45795113 1.92993009 0 1.91358137 1.63553345 0 3.51641941
		 -0.53972811 0 -4.54680538 3.18930435 0 -0.45795113 1.92993009 0 1.91358137 1.63553345
		 0 3.51641941;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "57CA59E6-4C91-AABF-4E01-FF9031BF59F2";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.965033590011204 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.3108864 0 4.9834909 ;
	setAttr ".rs" 38626;
	setAttr ".lt" -type "double3" 0.79549075310546935 0 1.9213889207368133 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.8089542977138411 -0.5 4.5863237380981445 ;
	setAttr ".cbx" -type "double3" -8.8128185860439192 0.5 5.3806581497192383 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "42BCDBF5-4B12-19E6-9F7F-2EA6A6194137";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[8]" -type "float3" 3.5617883 0 4.9332838 ;
	setAttr ".tk[9]" -type "float3" -0.88021106 0 1.9855924 ;
	setAttr ".tk[10]" -type "float3" -0.020470029 0 1.0849113 ;
	setAttr ".tk[11]" -type "float3" 0.32752043 0 0.88021111 ;
	setAttr ".tk[12]" -type "float3" 3.5617883 0 4.9332838 ;
	setAttr ".tk[13]" -type "float3" -0.88021106 0 1.9855924 ;
	setAttr ".tk[14]" -type "float3" -0.020470029 0 1.0849113 ;
	setAttr ".tk[15]" -type "float3" 0.32752043 0 0.88021111 ;
	setAttr ".tk[16]" -type "float3" 4.8428774e-008 0 -0.061410047 ;
	setAttr ".tk[18]" -type "float3" 4.8428774e-008 0 -0.061410047 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "CE3D47F5-4F6C-36B1-466F-F08941F4BDE0";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[28]" -type "float2" 0.12943205 3.2893784e-006 ;
	setAttr ".uvtk[29]" -type "float2" -0.07635133 3.8798185e-006 ;
	setAttr ".uvtk[30]" -type "float2" -0.080244333 -3.6544986e-006 ;
	setAttr ".uvtk[31]" -type "float2" 0.13064905 -3.0343913e-006 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "8B9CE771-4226-11A4-E436-A6B59854BA4E";
	setAttr ".ics" -type "componentList" 1 "vtx[20:23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.965033590011204 0 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak5";
	rename -uid "498D631C-43EF-BE64-E6F8-CEB30022B054";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  -0.45436686 0 0.3054888 0.54176968
		 0 -0.48884585 -0.45436686 0 0.3054888 0.54176968 0 -0.48884585;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "27BC432D-44D4-08C4-7458-DBA6F4ADA100";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.965033590011204 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -11.510087 0 -0.66541862 ;
	setAttr ".rs" 46064;
	setAttr ".lt" -type "double3" -5.5511151231257827e-016 -2.4651903288156619e-032 
		1.3082546989881325 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -13.577200948409642 -0.5 -1.217315673828125 ;
	setAttr ".cbx" -type "double3" -9.442973195724095 0.5 -0.11352157592773438 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "D1803C4F-4975-FF90-2448-869FF867C61C";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[1]" -type "float3" 0.20925789 0 0.75086701 ;
	setAttr ".tk[2]" -type "float3" 0.39389715 0 0.56622726 ;
	setAttr ".tk[3]" -type "float3" 0.59084588 0 0.39389715 ;
	setAttr ".tk[5]" -type "float3" 0.20925789 0 0.75086701 ;
	setAttr ".tk[6]" -type "float3" 0.39389715 0 0.56622726 ;
	setAttr ".tk[7]" -type "float3" 0.59084588 0 0.39389715 ;
	setAttr ".tk[9]" -type "float3" -0.024618575 0 0.23387645 ;
	setAttr ".tk[11]" -type "float3" -0.18463932 0 -0.38158786 ;
	setAttr ".tk[13]" -type "float3" -0.024618575 0 0.23387645 ;
	setAttr ".tk[15]" -type "float3" -0.18463932 0 -0.38158786 ;
	setAttr ".tk[16]" -type "float3" 0.18463932 0 0.22156717 ;
	setAttr ".tk[17]" -type "float3" 0.51699007 0 0.1600208 ;
	setAttr ".tk[18]" -type "float3" 0.18463932 0 0.22156717 ;
	setAttr ".tk[19]" -type "float3" 0.51699007 0 0.1600208 ;
	setAttr ".tk[20]" -type "float3" 0.27080432 0 0.073855735 ;
	setAttr ".tk[21]" -type "float3" 0.27080432 0 0.073855735 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "66300124-44D5-5267-575E-78A75B6079A4";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[28]" -type "float2" -0.00059785089 0.12499592 ;
	setAttr ".uvtk[29]" -type "float2" 0.00059930858 -0.12499592 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "7CACC054-40F0-DDA7-30DE-45874486AD3F";
	setAttr ".ics" -type "componentList" 1 "vtx[20:21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.6159615100088169 0 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak7";
	rename -uid "149A17CF-4729-A2EB-FF3D-858C96A53261";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[1]" -type "float3" -0.24706881 0 -0.64237899 ;
	setAttr ".tk[2]" -type "float3" -0.22236192 0 -0.3458963 ;
	setAttr ".tk[3]" -type "float3" -0.14824128 0 -0.074120641 ;
	setAttr ".tk[5]" -type "float3" -0.24706881 0 -0.64237899 ;
	setAttr ".tk[6]" -type "float3" -0.22236192 0 -0.3458963 ;
	setAttr ".tk[7]" -type "float3" -0.14824128 0 -0.074120641 ;
	setAttr ".tk[20]" -type "float3" 0 0.5 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.5 0 ;
	setAttr ".tk[22]" -type "float3" 0.02470688 0 0.42001691 ;
	setAttr ".tk[23]" -type "float3" 0.33065468 0 -2.3053594 ;
	setAttr ".tk[24]" -type "float3" 0.33065468 0 -2.3053594 ;
	setAttr ".tk[25]" -type "float3" 0.02470688 0 0.42001691 ;
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "A5049948-4461-4B0B-74D5-B6AE40C63A64";
	setAttr ".ics" -type "componentList" 1 "e[*]";
createNode polyCube -n "polyCube3";
	rename -uid "81317045-4862-5E96-59C7-69A20426F274";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "4A0165BB-412C-E3B0-BD91-C0B4C6183A6D";
	setAttr ".r" 0.19999999999999996;
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "4D3BA07F-4B58-E125-8072-67AE58395185";
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 0.73899058143373653 0 0 0 0 -0.022377712370709187 0.22503196129030742 0
		 0 -0.73536359947457053 -0.073126301804312246 0 -0.28317299062784063 -0.27746079678231428 0.57658424791153839 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.28317297 -0.29983851 0.80161619 ;
	setAttr ".rs" 39736;
	setAttr ".ls" -type "double3" 0.49999998119166228 0.49999998119166228 0.49999998119166228 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.43097108709331594 -0.44691122028172037 0.78699094971271677 ;
	setAttr ".cbx" -type "double3" -0.13537487213872976 -0.1527658089820981 0.816241467601308 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "BD14ABDC-4BE1-2920-7765-B4B37B38432E";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 0.045469463 0 -0.045469467 ;
	setAttr ".tk[1]" -type "float3" -4.7909863e-009 0 -0.064303473 ;
	setAttr ".tk[2]" -type "float3" -0.045469467 0 -0.045469467 ;
	setAttr ".tk[3]" -type "float3" -0.06430348 0 -2.3954931e-009 ;
	setAttr ".tk[4]" -type "float3" -0.045469467 0 0.045469467 ;
	setAttr ".tk[5]" -type "float3" -4.7909863e-009 0 0.064303473 ;
	setAttr ".tk[6]" -type "float3" 0.045469467 0 0.045469467 ;
	setAttr ".tk[7]" -type "float3" 0.06430348 0 -2.3954931e-009 ;
	setAttr ".tk[16]" -type "float3" -4.7909863e-009 0 -2.3954931e-009 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "27C2446A-45E4-9B3A-E79B-93A61F1313B4";
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 0.73899058143373653 0 0 0 0 -0.022377712370709187 0.22503196129030742 0
		 0 -0.73536359947457053 -0.073126301804312246 0 -0.28317299062784063 -0.27746079678231428 0.57658424791153839 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.28317299 -0.29983851 0.80161625 ;
	setAttr ".rs" 48818;
	setAttr ".lt" -type "double3" 5.743159329836504e-017 -3.0574501264091225e-017 -0.015047458468371525 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.39733928877769026 -0.41344445469552216 0.79031896431993853 ;
	setAttr ".cbx" -type "double3" -0.16900670348980878 -0.18623256894578716 0.8129135077355536 ;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "2193D771-4B90-F331-C5A8-0EBB9E004DFA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.051886466302378489 0 0 0 0 0.26753424663946412 0
		 0 -0.49140379944776236 0.60010148876693326 1;
	setAttr ".wt" 0.40984988212585449;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "8F1AC655-452A-EFB3-0948-38B7820B3314";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[14]" "e[16]" "e[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.037140573104940816 0 0 0 0 0.26753424663946412 0
		 0 -0.49140379944776236 0.60010148876693326 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.099999999999999978;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyTweak -n "polyTweak9";
	rename -uid "6B12E815-49A5-47DF-F81C-8391799D3CC4";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0 0.20063195 -0.25383881 0
		 0.20063195 -0.25383881 0 -0.20063195 -0.25383881 0 -0.20063195 -0.25383881 0 -0.20063195
		 0.25383881 0 -0.20063195 0.25383881 0 0.20063195 0.25383881 0 0.20063195 0.25383881
		 0 1.090764761 0 0 1.090764761 0 0 1.090764761 0 0 1.090764761 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "1C08BB0A-4324-B847-5D1B-C0AC5D161151";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.037140573104940816 0 0 0 0 0.26753424663946412 0
		 0 -0.49140379944776236 0.60010148876693326 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.43471977 0.60010141 ;
	setAttr ".rs" 35521;
	setAttr ".lt" -type "double3" 0 9.7269904496006918e-017 0.43806470564258049 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.024997500702738762 -0.43471977499728104 0.46972948871747489 ;
	setAttr ".cbx" -type "double3" 0.024997500702738762 -0.43471977499728104 0.7304733931386892 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "6386A018-4DB9-DAE2-4A6B-6D821239D4A3";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "84021775-4E51-73F5-3477-E9B3F4B82EBA";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.037140573104940816 0 0 0 0 0.26753424663946412 0
		 0 -0.49140379944776236 0.60010148876693326 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.50255269 0.60010141 ;
	setAttr ".rs" 38425;
	setAttr ".lt" -type "double3" 0 9.8692712456455112e-017 0.05552753695692525 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.024997500702738762 -0.50255270383777206 0.46972945682490741 ;
	setAttr ".cbx" -type "double3" 0.024997500702738762 -0.50255270383777206 0.7304733931386892 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "4466C67C-4412-00E3-2868-829D775E8537";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[12:19]" -type "float3"  0 -0.84644401 0 0 -0.84644401
		 0 0 -0.84644401 0 0 -0.84644401 0 0 0 -0.33381811 0 0 -0.33381811 0 0 0.33381811
		 0 0 0.33381811;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "BEC13F74-4E5F-DB04-9BE2-E8AC056080B9";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.037140573104940816 0 0 0 0 0.26753424663946412 0
		 0 -0.49140379944776236 0.60010148876693326 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.55808026 0.60010141 ;
	setAttr ".rs" 45824;
	setAttr ".lt" -type "double3" 0 -1.3538925620700994e-017 0.060973900380385859 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.024997500702738762 -0.5580802339474733 0.46972939303977246 ;
	setAttr ".cbx" -type "double3" 0.024997500702738762 -0.5580802339474733 0.7304733931386892 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "C0117B00-499B-FEF0-D130-70852C3A0CD5";
	setAttr ".ics" -type "componentList" 2 "f[22]" "f[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.037140573104940816 0 0 0 0 0.26753424663946412 0
		 0 -0.49140379944776236 0.60010148876693326 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.58856714 0.60010135 ;
	setAttr ".rs" 51532;
	setAttr ".lt" -type "double3" -7.1800195192866007e-018 -1.6477227468061235e-016 
		0.46766406676842798 ;
	setAttr ".ls" -type "double3" 0.49095615784135699 0.35136832504077647 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.024997500702738762 -0.6190540821498417 0.46972932925463751 ;
	setAttr ".cbx" -type "double3" 0.024997500702738762 -0.55808019852746271 0.7304733931386892 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "9F124A91-4962-AA1E-6C8A-99B78EC43FB3";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[0]" -type "float3" -0.14151178 0 0 ;
	setAttr ".tk[1]" -type "float3" 0.14151178 0 0 ;
	setAttr ".tk[2]" -type "float3" -0.14151178 0 0 ;
	setAttr ".tk[3]" -type "float3" 0.14151178 0 0 ;
	setAttr ".tk[4]" -type "float3" -0.14151178 0 0 ;
	setAttr ".tk[5]" -type "float3" 0.14151178 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.14151178 0 0 ;
	setAttr ".tk[7]" -type "float3" 0.14151178 0 0 ;
	setAttr ".tk[12]" -type "float3" -0.084004559 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.084004559 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.084004559 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.084004559 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.084004559 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.084004559 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.084004559 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.084004559 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.13943489 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.13943489 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.13943489 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.13943489 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.13943489 0 0 ;
	setAttr ".tk[33]" -type "float3" -0.13943489 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.13943489 0 0 ;
	setAttr ".tk[35]" -type "float3" -0.13943489 0 0 ;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "1735F4BB-442F-9A8B-76BA-DC96BF9AE11C";
	setAttr ".dc" -type "componentList" 4 "e[10]" "e[16]" "e[38]" "e[42]";
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "EC11398A-4D56-1253-717C-94807167A508";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.037140573104940816 0 0 0 0 0.26753424663946412 0
		 0 -0.49140379944776236 0.60010148876693326 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.52688694 0.7304734 ;
	setAttr ".rs" 64443;
	setAttr ".lt" -type "double3" -2.6883369907973399e-023 0 0.0072516855821755932 ;
	setAttr ".ls" -type "double3" 0.68333334053063444 0.68333334053063444 0.68333334053063444 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.10900206118822098 -0.6190540821498417 0.7304733931386892 ;
	setAttr ".cbx" -type "double3" 0.10900206118822098 -0.43471977499728104 0.7304733931386892 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "F041F967-465E-D462-12BD-EC95C7C48D2B";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.037140573104940816 0 0 0 0 0.26753424663946412 0
		 0 -0.49140379944776236 0.60010148876693326 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.52718973 0.73772514 ;
	setAttr ".rs" 46869;
	setAttr ".lt" -type "double3" 0 1.1102230246251565e-016 -0.024808334422551814 ;
	setAttr ".ls" -type "double3" 0.83545434045370393 0.86666667003931985 0.86666667003931985 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.074484743177890778 -0.59017062193154313 0.7377251251305621 ;
	setAttr ".cbx" -type "double3" 0.074484743177890778 -0.46420881113794971 0.7377251251305621 ;
createNode polyPipe -n "polyPipe1";
	rename -uid "170F53AC-4E5D-8380-0B87-E89D697D6619";
	setAttr ".r" 0.90000000000000013;
	setAttr ".t" 0.30000000000000004;
	setAttr ".sa" 8;
	setAttr ".sc" 0;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "B38353AC-473F-538A-B777-D686AC12FAAA";
	setAttr ".dc" -type "componentList" 4 "f[6:7]" "f[14:15]" "f[22:23]" "f[30:31]";
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "3FECBE3C-4F3D-E1CF-EDC1-9D93B2AA0772";
	setAttr ".ics" -type "componentList" 1 "e[*]";
createNode polySplitRing -n "polySplitRing2";
	rename -uid "29FA6053-438B-7637-D8F4-DDAF28CC70B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[24:30]" "e[38:44]";
	setAttr ".ix" -type "matrix" 0.099072545254478075 0 0.13347488067520252 0 -0.49243582054468321 4.0851611513206561e-016 0.36551349489164964 0
		 -9.2273682251692295e-017 -0.16622548840192999 5.536420935101537e-017 0 -1.1622248899697736 -0.5576532926171357 0.85175856977326159 1;
	setAttr ".wt" 0.85162574052810669;
	setAttr ".dr" no;
	setAttr ".re" 41;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "FE26982E-4663-96FC-CDB0-FA9D639F032D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[38:44]" "e[59]" "e[61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]";
	setAttr ".ix" -type "matrix" 0.099072545254478075 0 0.13347488067520252 0 -0.49243582054468321 4.0851611513206561e-016 0.36551349489164964 0
		 -9.2273682251692295e-017 -0.16622548840192999 5.536420935101537e-017 0 -1.1622248899697736 -0.5576532926171357 0.85175856977326159 1;
	setAttr ".wt" 0.15654633939266205;
	setAttr ".re" 41;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "EAA966A1-4A2F-CC7B-EB39-2D982E3EA892";
	setAttr ".ics" -type "componentList" 1 "f[6:9]";
	setAttr ".ix" -type "matrix" 0.15027502755443381 4.6136841125846149e-018 0.071051594549132527 0
		 -0.29237936382684121 -1.3821402784371843e-014 0.61838607893653286 0 1.4348557590138152e-015 -0.16622548840192997 -3.026576777855507e-015 0
		 -1.9464251019479166 -0.49424094552058651 1.4794278938421588 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.0926149 -0.41943949 1.7886209 ;
	setAttr ".rs" 33692;
	setAttr ".lt" -type "double3" -5.6898930012039273e-016 5.5511151231257827e-017 0.16550959436392457 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.227862296120402 -0.49424095542840463 1.7246745041452129 ;
	setAttr ".cbx" -type "double3" -1.9573672626451826 -0.34463802973760327 1.8525673667106424 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "0C75B16F-4E19-6FA4-F8A6-9A8F81267101";
	setAttr ".ics" -type "componentList" 1 "f[6:9]";
	setAttr ".ix" -type "matrix" 0.15027502755443381 4.6136841125846149e-018 0.071051594549132527 0
		 -0.29237936382684121 -1.3821402784371843e-014 0.61838607893653286 0 1.4348557590138152e-015 -0.16622548840192997 -3.026576777855507e-015 0
		 -1.9464251019479166 -0.49424094552058651 1.4794278938421588 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1633601 -0.37539175 1.938249 ;
	setAttr ".rs" 33160;
	setAttr ".lt" -type "double3" 3.7470027081099033e-016 -5.6974612405876444e-017 0.27467207244186009 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3477971272946556 -0.43177254770242895 1.8510455019849799 ;
	setAttr ".cbx" -type "double3" -1.9789233259277921 -0.31901096089156034 2.0254526878785342 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "23445C9A-4379-60BE-4B23-58B56981E173";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[56:65]" -type "float3"  0.21821883 -8.8817842e-016
		 -0.5246532 0.081856757 -5.884182e-015 -0.48268598 0.3273285 -8.8817842e-016 -0.3758066
		 -0.081856787 -5.9952043e-015 -0.41777399 -5.670037e-016 1.110223e-016 -0.18932848
		 -5.7012745e-016 1.110223e-016 -0.040481925 -0.05614524 -0.00067865587 -0.48929745
		 0.05614524 0.0006786572 -0.41116238 -0.21821903 -8.8817842e-016 -0.52465332 -0.3273285
		 -8.8817842e-016 -0.37580672;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "870C2FD5-49F0-7748-DBA8-84A8FBAC7F06";
	setAttr ".ics" -type "componentList" 1 "f[10:11]";
	setAttr ".ix" -type "matrix" 0.15027502755443381 4.6136841125846149e-018 0.071051594549132527 0
		 -0.29237936382684121 -1.3821402784371843e-014 0.61838607893653286 0 1.4348557590138152e-015 -0.16622548840192997 -3.026576777855507e-015 0
		 -1.9464251019479166 -0.49424094552058651 1.4794278938421588 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1602385 -0.56904244 1.7566479 ;
	setAttr ".rs" 59089;
	setAttr ".lt" -type "double3" -1.214306433183765e-016 -0.080640089820256472 0.067806166350511995 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2278621777301924 -0.64384390093482824 1.7246747405150493 ;
	setAttr ".cbx" -type "double3" -2.0926146385998572 -0.49424094552059344 1.7886211823852749 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "4B41A47F-444D-3BC6-1306-39B04B89ACDD";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[66:75]" -type "float3"  0.44120941 0 0 0.29990321
		 -0.00021050202 0.0085209552 0.66435683 0 0 0.26845509 0.00021049869 -0.0085209748
		 -0.0071701142 0 0.29371127 -0.0071701142 0 0.29371127 -0.31754753 -2.1316282e-014
		 0.032390315 -0.26515096 -2.1316282e-014 -0.032390337 -0.44121024 0 0 -0.66435683
		 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "EF0D8419-499F-D519-9080-5994AA9F3684";
	setAttr ".ics" -type "componentList" 1 "f[10:11]";
	setAttr ".ix" -type "matrix" 0.15027502755443381 4.6136841125846149e-018 0.071051594549132527 0
		 -0.29237936382684121 -1.3821402784371843e-014 0.61838607893653286 0 1.4348557590138152e-015 -0.16622548840192997 -3.026576777855507e-015 0
		 -1.9464251019479166 -0.49424094552058651 1.4794278938421588 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1914859 -0.64356494 1.8215822 ;
	setAttr ".rs" 36153;
	setAttr ".lt" -type "double3" -1.0963452368173421e-015 -0.022232334318873649 0.12021671759278701 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2822453112805272 -0.69495897258907569 1.7913668828611993 ;
	setAttr ".cbx" -type "double3" -2.0972284173447147 -0.59217093034035306 1.8550438246602778 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "A40BAE04-4EEA-D7AE-7F02-E5AE13E4C040";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[76:81]" -type "float3"  -0.13184369 0.041198369 0.10401411
		 -0.012024617 0.0042398879 -0.0033899555 -0.11712203 0.0266764 0.1750425 0.062606514
		 -0.028761342 0.013936562 0.020358501 0.0059449105 -0.13109432 0.11118136 -0.026203951
		 -0.17761925;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "298489C3-4B4F-1D6F-9DA0-3C8C04F64DD0";
	setAttr ".ics" -type "componentList" 1 "f[10:11]";
	setAttr ".ix" -type "matrix" 0.15027502755443381 4.6136841125846149e-018 0.071051594549132527 0
		 -0.29237936382684121 -1.3821402784371843e-014 0.61838607893653286 0 1.4348557590138152e-015 -0.16622548840192997 -3.026576777855507e-015 0
		 -1.9464251019479166 -0.49424094552058651 1.4794278938421588 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.242768 -0.72001559 1.9002515 ;
	setAttr ".rs" 56377;
	setAttr ".lt" -type "double3" -1.6653345369377348e-016 0.059466278320986402 0.260647896111037 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3297395172562476 -0.77554542309311936 1.8648064472727766 ;
	setAttr ".cbx" -type "double3" -2.1549561014129432 -0.66448579513435979 1.937171482225716 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "5666257D-4F5B-1704-D42C-E69FF3812D99";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[82:87]" -type "float3"  -1.9814483e-009 -0.019901751
		 -0.02511435 2.6094316e-010 0.00056389609 0.0028791344 -8.7522567e-010 -0.015115252
		 -0.012410024 2.4883811e-009 0.015583271 0.029580425 -1.0622449e-010 0.0034331933
		 -0.00040940742 1.9376323e-009 0.019887319 0.024647677;
createNode polySphere -n "polySphere1";
	rename -uid "0CC4DDB4-48B3-0998-BE19-078B4A8CA831";
	setAttr ".sa" 6;
	setAttr ".sh" 6;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "207BB460-46CB-5EF9-944C-BD8DF0748194";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "18612864-42F7-18F3-26C7-7DBCB19D41E0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:23]";
	setAttr ".ix" -type "matrix" 1.3930704320511601e-017 0.062738314786864605 0 0 -0.58096757121545672 1.2900071482479108e-016 0 0
		 0 0 0.062738314786864605 0 -1.2129643668424834 -0.55713394127787819 0.59456373640465754 1;
	setAttr ".wt" 0.021117696538567543;
	setAttr ".re" 22;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak16";
	rename -uid "A3A9BC83-4F52-3DBC-1B61-1F8E8EBEDB95";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.052202303 0 ;
	setAttr ".tk[1]" -type "float3" -1.0733689e-016 0.052202303 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.052202303 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.052202303 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.052202303 0 ;
	setAttr ".tk[5]" -type "float3" -1.0733689e-016 0.052202303 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.052202303 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.052202303 0 ;
	setAttr ".tk[16]" -type "float3" -1.0733688e-016 0.052202296 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "89CCAC32-47F7-406B-8FB3-B9888135F1FA";
	setAttr ".ics" -type "componentList" 1 "f[8:15]";
	setAttr ".ix" -type "matrix" 1.3930704320511601e-017 0.062738314786864605 0 0 -0.58096757121545672 1.2900071482479108e-016 0 0
		 0 0 0.062738314786864605 0 -1.2129643668424834 -0.55713394127787819 0.59456373640465754 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.66232461 -0.55713391 0.59456372 ;
	setAttr ".rs" 59833;
	setAttr ".lt" -type "double3" -9.4510707467496197e-017 -0.0060025487198397485 0.074361613066862176 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.66232462996966368 -0.59009457537619914 0.5616031023063367 ;
	setAttr ".cbx" -type "double3" -0.66232462996966368 -0.52417329970056759 0.62752437798196825 ;
createNode polyTweak -n "polyTweak17";
	rename -uid "236A1185-402E-DDA9-67EB-EDB793E68F80";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" -0.33561611 -6.9849193e-009 0.33561623 ;
	setAttr ".tk[1]" -type "float3" 2.8290328e-008 -6.9849193e-009 0.47463295 ;
	setAttr ".tk[2]" -type "float3" 0.33561623 -6.9849193e-009 0.33561623 ;
	setAttr ".tk[3]" -type "float3" 0.47463295 -6.9849193e-009 1.4145164e-008 ;
	setAttr ".tk[4]" -type "float3" 0.33561623 -6.9849193e-009 -0.33561617 ;
	setAttr ".tk[5]" -type "float3" 2.8290328e-008 -6.9849193e-009 -0.47463295 ;
	setAttr ".tk[6]" -type "float3" -0.33561617 -6.9849193e-009 -0.33561623 ;
	setAttr ".tk[7]" -type "float3" -0.47463295 -6.9849193e-009 1.4145164e-008 ;
	setAttr ".tk[16]" -type "float3" 2.8290328e-008 -6.9849193e-009 1.4145164e-008 ;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "2B8E5E51-4040-2081-261B-E0A1312F1F47";
	setAttr ".dc" -type "componentList" 1 "f[8:15]";
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "227DBAA1-46CF-8018-DFB8-4C9EC1BB13A6";
	setAttr ".ics" -type "componentList" 1 "f[8:15]";
	setAttr ".ix" -type "matrix" 1.3930704320511601e-017 0.062738314786864605 0 0 -0.58096757121545672 1.2900071482479108e-016 0 0
		 0 0 0.062738314786864605 0 -2.5541221083750294 -0.55713394127787819 0.59770324029067812 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.6612031 -0.57718843 0.59770322 ;
	setAttr ".rs" 38917;
	setAttr ".lt" -type "double3" 1.9730812932461519e-016 -1.6979320705172245e-016 0.22280636459325873 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6612032651414008 -0.63992671883163932 0.53496492550381347 ;
	setAttr ".cbx" -type "double3" -2.6612031612563034 -0.51445011917386985 0.66044155507754276 ;
createNode polyPipe -n "polyPipe2";
	rename -uid "BA88A7AC-409A-4AEA-3E6F-C5AAF5F7DD69";
	setAttr ".t" 0.19999999999999996;
	setAttr ".sa" 12;
	setAttr ".sc" 0;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "63F9ED1F-4EEF-E890-732D-578E69EEFEBC";
	setAttr ".ics" -type "componentList" 1 "f[29:30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 -7.3019275011558618 0 -1.3533739155128783 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" -1.4445786099939557 6.8821426964411903e-022 0 ;
	setAttr ".s" -type "double3" 1 0.64930103688968832 1 ;
	setAttr ".pvt" -type "float3" -11.259938 -1.4901161e-007 -1.3533739 ;
	setAttr ".rs" 61365;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.8642567934532259 -0.32867646217346203 -1.8533739155128783 ;
	setAttr ".cbx" -type "double3" -9.7664686979789828 0.32867616415023793 -0.85337391551287822 ;
createNode polyTweak -n "polyTweak18";
	rename -uid "6A734C21-4B3D-F477-B856-BC83124BB0C4";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk[0:47]" -type "float3"  2.53421092 0 0 2.53421092
		 0 -5.9604645e-008 0.85753214 0 -0.053589784 0.85753286 0 0.05358994 2.682209e-007
		 0 -0.053589843 -0.27294254 0 -2.9802322e-008 -0.29428393 0 0 -0.27294254 0 0 0 0
		 0.05357432 0.82595801 0 -0.048068918 0.71012223 0 -0.32503361 2.5286901 1.7763568e-015
		 -0.10400457 2.53421092 0 0 2.53421092 0 -5.9604645e-008 0.85753214 0 -0.053589784
		 0.85753286 0 0.05358994 2.682209e-007 0 -0.053589843 -0.27294254 0 -2.9802322e-008
		 -0.29428393 0 0 -0.27294254 0 0 0 0 0.05357432 0.82595801 0 -0.048068918 0.71012223
		 0 -0.32503361 2.5286901 1.7763568e-015 -0.10400457 2.53421092 0 0 2.53421092 0 3.4272671e-007
		 0.85753226 0 -0.066800565 0.85753286 0 0.06680055 2.682209e-007 0 -0.066800565 -1.59851587
		 0 0.17132387 -1.56232917 0 5.1058404e-008 -1.59851587 0 -0.17132352 0 0 0.066987313
		 0.8891077 0 -0.07249289 0.71012223 0 -0.31162071 2.4834497 1.7763568e-015 -0.050300032
		 2.53421092 0 0 2.53421092 0 3.4272671e-007 0.85753226 0 -0.066800565 0.85753286 0
		 0.06680055 2.682209e-007 0 -0.066800565 -1.59851587 0 0.17132384 -1.56232917 0 5.1058404e-008
		 -1.59851587 0 -0.17132352 0 0 0.066987313 0.8891077 0 -0.07249289 0.71012223 0 -0.31162071
		 2.4834497 1.7763568e-015 -0.050300032;
createNode polyCloseBorder -n "polyCloseBorder3";
	rename -uid "B270B6AC-41A8-2B52-902C-1A94146C1152";
	setAttr ".ics" -type "componentList" 1 "e[*]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "FBB0E1DE-4594-8EFB-F5DC-569099A4AAFC";
	setAttr ".dc" -type "componentList" 4 "f[0:11]" "f[24:36]" "f[38:40]" "f[42:43]";
createNode polyCloseBorder -n "polyCloseBorder4";
	rename -uid "9CBA7A4A-421A-DACB-FDB1-F8910DC2D7EC";
	setAttr ".ics" -type "componentList" 1 "e[*]";
createNode polySplitRing -n "polySplitRing5";
	rename -uid "9E35DD9F-460E-6C7B-5AAB-01BF94AC4DE3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 -22.649545685189928 0 -1.3533739155128783 1;
	setAttr ".wt" 0.74789077043533325;
	setAttr ".dr" no;
	setAttr ".re" 31;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak19";
	rename -uid "A83B3488-404F-A6E4-A2BA-F59CDDE98081";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[22]" -type "float3" 0.11609295 0 0.016867924 ;
	setAttr ".tk[23]" -type "float3" -0.065201081 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.11609295 0 0.016867924 ;
	setAttr ".tk[25]" -type "float3" -0.065201081 0 0 ;
	setAttr ".tk[26]" -type "float3" 0.25988486 0 -0.027222496 ;
	setAttr ".tk[27]" -type "float3" 0.25988486 0 -0.027222496 ;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "BF1BF24E-43BB-CDA9-0E33-56A9F7845743";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[20:30]" "e[34]" "e[36]" "e[41]" "e[44]";
	setAttr ".ix" -type "matrix" 0.39725162733965896 0.91770972784208427 0 0 -6.9386586194997593e-016 2.7622360057562132e-016 1 0
		 0.91770972784208427 -0.39725162733965896 7.7715611723760958e-016 0 -19.754825228970127 -6.7387447500353366 -1.3533739155128783 1;
	setAttr ".wt" 0.19159024953842163;
	setAttr ".dr" no;
	setAttr ".re" 23;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak20";
	rename -uid "6DEB6BA6-4934-E708-B8DA-AB92ACC5C4B3";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[2]" -type "float3" -0.27779573 0 0.26381162 ;
	setAttr ".tk[3]" -type "float3" -0.42647001 0 -0.3252385 ;
	setAttr ".tk[4]" -type "float3" -0.13195878 -2.7755576e-016 -0.54433221 ;
	setAttr ".tk[5]" -type "float3" 0.88308722 -7.2164497e-016 -1.2324748 ;
	setAttr ".tk[6]" -type "float3" 0.57923234 -2.4980018e-015 -1.419525 ;
	setAttr ".tk[7]" -type "float3" -0.16828121 -2.7755576e-016 -1.6226313 ;
	setAttr ".tk[8]" -type "float3" -0.8254509 -1.7763568e-015 -0.60612547 ;
	setAttr ".tk[9]" -type "float3" -0.21116942 0 -0.85809362 ;
	setAttr ".tk[13]" -type "float3" -0.27779573 0 0.26381162 ;
	setAttr ".tk[14]" -type "float3" -0.42647001 0 -0.3252385 ;
	setAttr ".tk[15]" -type "float3" -0.13195878 2.7755576e-016 -0.54433221 ;
	setAttr ".tk[16]" -type "float3" 0.88308722 2.7755576e-016 -1.2324748 ;
	setAttr ".tk[17]" -type "float3" 0.57923234 -1.4432899e-015 -1.419525 ;
	setAttr ".tk[18]" -type "float3" -0.16828121 1.110223e-016 -1.6226313 ;
	setAttr ".tk[19]" -type "float3" -0.8254509 -1.7763568e-015 -0.60612547 ;
	setAttr ".tk[20]" -type "float3" -0.21116942 0 -0.85809362 ;
	setAttr ".tk[22]" -type "float3" 1.1205662 -1.9984014e-015 -2.095747 ;
	setAttr ".tk[23]" -type "float3" 0.99407154 -1.9984014e-015 -2.1935303 ;
	setAttr ".tk[24]" -type "float3" 1.1205662 -1.0547119e-015 -2.095747 ;
	setAttr ".tk[25]" -type "float3" 0.99407154 -9.4368957e-016 -2.1935303 ;
	setAttr ".tk[26]" -type "float3" 0.79892427 -1.9984014e-015 -2.1103358 ;
	setAttr ".tk[27]" -type "float3" 0.79892427 -1.0547119e-015 -2.1103358 ;
	setAttr ".tk[28]" -type "float3" 1.0453005 -1.3322676e-015 -2.0329323 ;
	setAttr ".tk[29]" -type "float3" 1.0453005 -1.9984014e-015 -2.0329323 ;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "ED35D124-47CE-862B-8E38-E4AC66360A8C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[72:82]" "e[99]" "e[102]" "e[107]";
	setAttr ".ix" -type "matrix" 0.89644312446718732 0.44315880290873927 0 0 -9.8401021310920826e-017 1.9905035941007728e-016 1 0
		 0.44315880290873927 -0.89644312446718732 2.2204460492503131e-016 0 -14.547445735184898 -1.7123199398460178 -1.3533739155128783 1;
	setAttr ".wt" 0.70295202732086182;
	setAttr ".re" 76;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak21";
	rename -uid "7A7ACEF7-41EB-DD7B-36B5-C2AD9AA7FDBC";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 3.9488077e-006 -6.9104135e-007 -7.0576789e-010 ;
	setAttr ".tk[1]" -type "float3" -2.7790666e-006 -6.9104135e-007 4.6007335e-007 ;
	setAttr ".tk[2]" -type "float3" -1.6298145e-007 -6.9104135e-007 -4.4330955e-007 ;
	setAttr ".tk[3]" -type "float3" -4.3213367e-007 -6.9104135e-007 -4.5821071e-007 ;
	setAttr ".tk[4]" -type "float3" -1.0430813e-007 -6.9104135e-007 -4.4330955e-007 ;
	setAttr ".tk[5]" -type "float3" 2.7865171e-006 -6.8917871e-007 3.7997961e-007 ;
	setAttr ".tk[6]" -type "float3" -3.9339066e-006 -6.8917871e-007 4.7730282e-009 ;
	setAttr ".tk[7]" -type "float3" 2.7865171e-006 -6.8917871e-007 -5.4016709e-007 ;
	setAttr ".tk[8]" -type "float3" -9.6857548e-008 -6.9104135e-007 2.2351742e-008 ;
	setAttr ".tk[9]" -type "float3" -5.0105155e-007 -6.9104135e-007 4.4330955e-007 ;
	setAttr ".tk[10]" -type "float3" -7.4505806e-009 -6.9104135e-007 4.2840838e-008 ;
	setAttr ".tk[11]" -type "float3" 4.0903687e-006 -6.9104135e-007 -5.7742e-007 ;
	setAttr ".tk[12]" -type "float3" 3.9488077e-006 6.9104135e-007 -7.0576789e-010 ;
	setAttr ".tk[13]" -type "float3" -2.7790666e-006 6.9104135e-007 4.6007335e-007 ;
	setAttr ".tk[14]" -type "float3" -1.6298145e-007 6.9104135e-007 -4.4330955e-007 ;
	setAttr ".tk[15]" -type "float3" -4.3213367e-007 6.9104135e-007 -4.5821071e-007 ;
	setAttr ".tk[16]" -type "float3" -1.0430813e-007 6.9104135e-007 -4.4330955e-007 ;
	setAttr ".tk[17]" -type "float3" 2.7865171e-006 6.8917871e-007 3.7997961e-007 ;
	setAttr ".tk[18]" -type "float3" -3.9339066e-006 6.8917871e-007 4.7730282e-009 ;
	setAttr ".tk[19]" -type "float3" 2.7865171e-006 6.8917871e-007 -5.4016709e-007 ;
	setAttr ".tk[20]" -type "float3" -9.6857548e-008 6.9104135e-007 2.2351742e-008 ;
	setAttr ".tk[21]" -type "float3" -5.0105155e-007 6.9104135e-007 4.4330955e-007 ;
	setAttr ".tk[22]" -type "float3" -7.4505806e-009 6.9104135e-007 4.2840838e-008 ;
	setAttr ".tk[23]" -type "float3" 4.0903687e-006 6.9104135e-007 -5.7742e-007 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.17676353 ;
	setAttr ".tk[30]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.17676358 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.17676358 ;
	setAttr ".tk[42]" -type "float3" 0 0 -5.267967e-008 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.17676358 ;
	setAttr ".tk[49]" -type "float3" 0.22819133 0 0 ;
	setAttr ".tk[51]" -type "float3" 0.22819133 0 0 ;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "C13F9701-45FE-9830-891D-B687841BE807";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[72:82]" "e[99]" "e[102]" "e[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 -7.0155632854320249 0 -1.3533739155128783 1;
	setAttr ".wt" 0.43579950928688049;
	setAttr ".re" 99;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "767AA8C0-4CD3-CF51-3906-D2AAB196FD3A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[9]" "e[19]" "e[69]";
	setAttr ".ix" -type "matrix" 0.39725162733965896 0.91770972784208427 0 0 -6.9386586194997593e-016 2.7622360057562132e-016 1 0
		 0.91770972784208427 -0.39725162733965896 7.7715611723760958e-016 0 -19.754825228970127 -7.0465682109686458 -1.3533739155128783 1;
	setAttr ".wt" 0.56344765424728394;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak22";
	rename -uid "7C452A2C-41C0-8E60-5036-7090FAECBDB5";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[30]" -type "float3" 0.10137302 2.8429748e-016 -0.36581767 ;
	setAttr ".tk[31]" -type "float3" 0.10137302 2.8429748e-016 -0.36581767 ;
	setAttr ".tk[32]" -type "float3" 0.10137302 2.8429748e-016 -0.36581767 ;
	setAttr ".tk[33]" -type "float3" 0.22661263 4.6353785e-017 -0.05964534 ;
	setAttr ".tk[42]" -type "float3" 0.10137302 2.8429748e-016 -0.36581767 ;
	setAttr ".tk[43]" -type "float3" 0.10137302 2.8429748e-016 -0.36581767 ;
	setAttr ".tk[44]" -type "float3" 0.10137302 2.8429748e-016 -0.36581767 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 46 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "bodyFrontJoint.s" "bodyMidJoint.is";
connectAttr "bodyMidJoint.s" "bodyBackJoint.is";
connectAttr "bodyBackJoint.s" "tailFrontJoint.is";
connectAttr "tailFrontJoint.s" "tailFront2Joint.is";
connectAttr "tailFront2Joint.s" "tailMidJoint.is";
connectAttr "tailMidJoint.s" "tailMid2Joint.is";
connectAttr "tailMid2Joint.s" "tailEndJoint.is";
connectAttr "bodyMidJoint.s" "backArmLeft_UpperJoint.is";
connectAttr "backArmLeft_UpperJoint.s" "backArmLeft_MidJoint.is";
connectAttr "backArmLeft_MidJoint.s" "backArmLeft_EndJoint.is";
connectAttr "bodyMidJoint.s" "midArmLeft_UpperJoint.is";
connectAttr "midArmLeft_UpperJoint.s" "midArmLeft_MidJoint.is";
connectAttr "midArmLeft_MidJoint.s" "midArmLeft_EndJoint.is";
connectAttr "bodyMidJoint.s" "frontArmLeft_UpperJoint.is";
connectAttr "frontArmLeft_UpperJoint.s" "frontArmLeft_MidJoint.is";
connectAttr "frontArmLeft_MidJoint.s" "frontArmLeft_EndJoint.is";
connectAttr "bodyMidJoint.s" "frontArmRight_UpperJoint.is";
connectAttr "frontArmRight_UpperJoint.s" "frontArmRight_MidJoint.is";
connectAttr "frontArmRight_MidJoint.s" "frontArmRight_EndJoint.is";
connectAttr "bodyMidJoint.s" "midArmRight_UpperJoint.is";
connectAttr "midArmRight_UpperJoint.s" "midArmRight_MidJoint.is";
connectAttr "midArmRight_MidJoint.s" "midArmRight_EndJoint.is";
connectAttr "bodyMidJoint.s" "backArmRight_UpperJoint.is";
connectAttr "backArmRight_UpperJoint.s" "backArmRight_MidJoint.is";
connectAttr "backArmRight_MidJoint.s" "backArmRight_EndJoint.is";
connectAttr "bodyFrontJoint.s" "armLeft_UpperJoint.is";
connectAttr "armLeft_UpperJoint.s" "armLeft_MidJoint.is";
connectAttr "armLeft_MidJoint.s" "armLeft_BigPincerJoint.is";
connectAttr "armLeft_BigPincerJoint.s" "armLeft_SmallPincerJoint.is";
connectAttr "bodyFrontJoint.s" "armRight_UpperJoint.is";
connectAttr "armRight_UpperJoint.s" "armRight_MidJoint.is";
connectAttr "armRight_MidJoint.s" "armRight_BigPincerJoint.is";
connectAttr "armRight_BigPincerJoint.s" "armRight_SmallPincerJoint.is";
connectAttr "polyExtrudeFace14.out" "armBraceShape.i";
connectAttr "polyExtrudeFace8.out" "eyeRightShape.i";
connectAttr "polyExtrudeFace3.out" "tailEndShape.i";
connectAttr "polyCube1.out" "bodyFrontShape.i";
connectAttr "deleteComponent4.og" "innerArmUpperRightShape.i";
connectAttr "polyExtrudeFace21.out" "innerArmLowerRightShape.i";
connectAttr "polySphere1.out" "armJointRightShape.i";
connectAttr "polyExtrudeFace19.out" "lowerArmRightShape.i";
connectAttr "polySplitRing3.out" "upperArmRightShape.i";
connectAttr "polyMergeVert2.out" "clawBigRightShape.i";
connectAttr "polyTweakUV2.uvtk[0]" "clawBigRightShape.uvst[0].uvtw";
connectAttr "polyCloseBorder1.out" "clawSmallRightShape.i";
connectAttr "polySplitRing9.out" "footFrontRightShape.i";
connectAttr "polySplitRing7.out" "legFrontMidRightShape.i";
connectAttr "polySplitRing8.out" "legFrontUpperRightShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "tailEndShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "tailEndShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "tailEndShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "clawBigRightShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyCube2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "clawBigRightShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace5.out" "polyTweakUV1.ip";
connectAttr "polyTweak5.out" "polyMergeVert1.ip";
connectAttr "clawBigRightShape.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace6.ip";
connectAttr "clawBigRightShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyMergeVert1.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace6.out" "polyTweakUV2.ip";
connectAttr "polyTweak7.out" "polyMergeVert2.ip";
connectAttr "clawBigRightShape.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak7.ip";
connectAttr "|scorpion|armRight|clawRight|clawSmallRight|polySurfaceShape2.o" "polyCloseBorder1.ip"
		;
connectAttr "polyTweak8.out" "polyExtrudeFace7.ip";
connectAttr "eyeRightShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyCylinder1.out" "polyTweak8.ip";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "eyeRightShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyCube3.out" "polySplitRing1.ip";
connectAttr "armBraceShape.wm" "polySplitRing1.mp";
connectAttr "polyTweak9.out" "polyBevel1.ip";
connectAttr "armBraceShape.wm" "polyBevel1.mp";
connectAttr "polySplitRing1.out" "polyTweak9.ip";
connectAttr "polyBevel1.out" "polyExtrudeFace9.ip";
connectAttr "armBraceShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "deleteComponent1.ig";
connectAttr "polyTweak10.out" "polyExtrudeFace10.ip";
connectAttr "armBraceShape.wm" "polyExtrudeFace10.mp";
connectAttr "deleteComponent1.og" "polyTweak10.ip";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "armBraceShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "armBraceShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyExtrudeFace13.ip";
connectAttr "armBraceShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "polyExtrudeFace14.ip";
connectAttr "armBraceShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyPipe1.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "polySplitRing2.ip";
connectAttr "upperArmRightShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "upperArmRightShape.wm" "polySplitRing3.mp";
connectAttr "|scorpion|armRight|lowerArmRight|polySurfaceShape3.o" "polyExtrudeFace15.ip"
		;
connectAttr "lowerArmRightShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyTweak12.out" "polyExtrudeFace16.ip";
connectAttr "lowerArmRightShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace17.ip";
connectAttr "lowerArmRightShape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace18.ip";
connectAttr "lowerArmRightShape.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace19.ip";
connectAttr "lowerArmRightShape.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polySplitRing4.ip";
connectAttr "innerArmUpperRightShape.wm" "polySplitRing4.mp";
connectAttr "polyCylinder2.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace20.ip";
connectAttr "innerArmUpperRightShape.wm" "polyExtrudeFace20.mp";
connectAttr "polySplitRing4.out" "polyTweak17.ip";
connectAttr "polyExtrudeFace20.out" "deleteComponent4.ig";
connectAttr "|scorpion|armRight|innerArmLowerRight|polySurfaceShape4.o" "polyExtrudeFace21.ip"
		;
connectAttr "innerArmLowerRightShape.wm" "polyExtrudeFace21.mp";
connectAttr "polyTweak18.out" "polyExtrudeFace22.ip";
connectAttr "legFrontMidRightShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyPipe2.out" "polyTweak18.ip";
connectAttr "|scorpion|legsRight|legFrontRight|footFrontRight|polySurfaceShape5.o" "polyCloseBorder3.ip"
		;
connectAttr "polyCloseBorder3.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyCloseBorder4.ip";
connectAttr "polyTweak19.out" "polySplitRing5.ip";
connectAttr "footFrontRightShape.wm" "polySplitRing5.mp";
connectAttr "polyCloseBorder4.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polySplitRing6.ip";
connectAttr "footFrontRightShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polySplitRing7.ip";
connectAttr "legFrontMidRightShape.wm" "polySplitRing7.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak21.ip";
connectAttr "|scorpion|legsRight|legFrontRight|legFrontUpperRight|polySurfaceShape6.o" "polySplitRing8.ip"
		;
connectAttr "legFrontUpperRightShape.wm" "polySplitRing8.mp";
connectAttr "polyTweak22.out" "polySplitRing9.ip";
connectAttr "footFrontRightShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing6.out" "polyTweak22.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "bodyFrontShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "bodyMidShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "bodyBackShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "tailFrontShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "tailFrontShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "tailMidShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "tailMidShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "tailMidShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "tailEndShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "clawBigRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "clawSmallRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "armBraceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "eyeRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "eyeLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "upperArmRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lowerArmRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "armJointRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "innerArmUpperRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "armJointUpperRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "innerArmLowerRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "innerArmUpperLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "armJointUpperLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "innerArmLowerLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "armJointLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lowerArmLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "upperArmLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "clawBigLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "clawSmallLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legFrontMidRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legFrontUpperRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "footFrontRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "footMidRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legMidMidRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legMidUpperRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "footBackRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legBackMidRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legBackUpperRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "footBackLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legBackMidLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legBackUpperLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "footMidLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legMidMidLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legMidUpperLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "footFrontLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legFrontMidLeftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "legFrontUpperLeftShape.iog" ":initialShadingGroup.dsm" -na;
// End of scorpionRobot.ma
