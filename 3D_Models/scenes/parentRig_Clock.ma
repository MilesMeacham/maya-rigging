//Maya ASCII 2016 scene
//Name: parentRig_Clock.ma
//Last modified: Mon, Aug 31, 2015 07:49:10 PM
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
	rename -uid "3685879B-4E58-5AA2-63C8-57AF3451A55F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.058714489915042134 0.77211301550758216 1.7836698825667694 ;
	setAttr ".r" -type "double3" -84.938352729544206 -272.19999999948851 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "ECB3138B-4737-C378-6E60-AFB096972F27";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 0.77658954393037827;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0 1.101302400694516 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "61C9113A-48EE-532B-5115-A4B907181A4B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.25824964131994443 100.1 2.1951219512195133 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "438E6308-47C2-1AC3-3FE4-0CAE914D5388";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 35.164992826398851;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "05A36B90-48E8-910C-7689-FD8B8669F4D7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.11295813282197942 3.04258817511022 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5F1E67CE-4080-29EA-A0AB-95A621E59216";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.5504186298234721;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "066371C7-4841-B1EF-6EBC-C3BB0775CF6A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 -0.1845862412743175 3.4334362194270089 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "603EDE83-4174-9AA1-78CA-6A98C762310A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 8.2112109462420708;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube2";
	rename -uid "027AD4A1-47C9-2A51-31DC-E7BFCEC9CF10";
	setAttr ".t" -type "double3" 0 1.8972583696246037 -0.83921275342880397 ;
	setAttr ".s" -type "double3" 2.9729732749070923 2.9729732749070923 1.0341304883325599 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "EFBE43E9-4449-78CA-EDFC-BAB690CD7A9E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "pCube2";
	rename -uid "00A99ADF-4FB2-62C5-4421-39B36DC33592";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	rename -uid "16A29BC7-459D-069D-F54F-00A4E49F3C7B";
	setAttr ".t" -type "double3" 0 1.8972583696246037 0 ;
	setAttr ".s" -type "double3" 2.9729732749070923 2.9729732749070923 0.60878095086037842 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "C9837A8E-4FCC-5A33-2ED3-24B2006DA1FE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "pCube3";
	rename -uid "8FFC235E-4CE0-1D01-89E6-24A2E22D2BD3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	rename -uid "E7F9D899-4021-D6E3-4753-2F87621716AA";
	setAttr ".t" -type "double3" 0 3.4121691829751661 -0.46061518603284257 ;
	setAttr ".s" -type "double3" 3.3465405928566008 0.066639647484445064 1.7885475764579029 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "4C671ECE-4F72-C81C-30F8-939971E3B7D4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[12:19]" -type "float3"  -0.012559779 0 0.025290916 
		0.012561034 0 0.025290916 0.012556758 0 0 -0.012561034 0 0 -0.012559779 -0.08594887 
		0.025290916 0.012561034 -0.08594887 0.025290916 0.012556758 -0.08594887 0 -0.012561034 
		-0.08594887 0;
createNode mesh -n "polySurfaceShape1" -p "pCube4";
	rename -uid "D0033D24-405A-D2CE-16B0-8CB176FE027A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	rename -uid "58CF8C5C-4D05-9A2A-0CC7-9598896E4EB1";
	setAttr ".t" -type "double3" 0 3.5460000790536741 -0.68550503664591256 ;
	setAttr ".s" -type "double3" 2.4877408740642042 0.049538372621015306 1.3295649007397106 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "81911DAF-437D-40A5-3945-6C95984B06CF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.61873853 0.5 0.38115677 0.5 0.375 0.25 0.625 0.25
		 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.056338154 0 0.137834 0.056338154 
		0 0.137834 -0.056338154 0.39102316 0.137834 0.056338154 0.39102316 0.137834 -0.056338154 
		0.39102316 -1.110223e-016 0.056338154 0.39102316 -1.110223e-016 -0.056338154 0 0 
		0.056338154 0 0 -0.053521238 0 0.137834 0.053521238 0 0.137834 0.053521238 0 0 -0.053521238 
		0 0 -0.064849891 0 0.16312489 0.064851284 0 0.16312489 0.064829178 0 0 -0.064856365 
		0 0 -0.064849891 -0.08594887 0.16312489 0.064851284 -0.08594887 0.16312489 0.064829178 
		-0.08594887 0 -0.064856365 -0.08594887 0;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.49999237 0.5 0.5 -0.49999237 0.5
		 -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.50000018 0.5 0.5 -0.50000018 -0.5 -0.49999237 -0.50000018
		 0.5 -0.49999237 -0.50000018 -0.47500002 1.38488388 0.4495416 0.47500002 1.38488388 0.4495416
		 0.47500002 1.38488388 -0.50045854 -0.47500002 1.38488388 -0.50045854 -0.45151389 1.38488388 0.41003406
		 0.45151389 1.38488388 0.41003406 0.45136011 1.38488388 -0.49834186 -0.45155904 1.38488388 -0.49834186
		 -0.45151389 1.70023346 0.41003406 0.45151389 1.70023346 0.41003406 0.45136011 1.70023346 -0.49834186
		 -0.45155904 1.70023346 -0.49834186;
	setAttr -s 35 ".ed[0:34]"  0 1 0 2 3 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0
		 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 8 11 0 8 12 1 9 13 1
		 12 13 0 10 14 0 13 14 0 11 15 0 15 14 1 12 15 0 4 5 1 12 16 0 13 17 0 16 17 0 14 18 0
		 17 18 0 15 19 0 19 18 0 16 19 0;
	setAttr -s 17 -ch 70 ".fc[0:16]" -type "polyFaces" 
		f 4 0 4 -2 -4
		mu 0 4 0 1 3 2
		f 4 29 31 -34 -35
		mu 0 4 24 25 26 27
		f 4 26 8 -3 -8
		mu 0 4 4 5 7 6
		f 4 2 10 -1 -10
		mu 0 4 6 7 9 8
		f 4 -11 -9 -7 -5
		mu 0 4 1 10 11 3
		f 4 9 3 5 7
		mu 0 4 12 0 2 13
		f 4 1 12 -14 -12
		mu 0 4 2 3 15 14
		f 4 6 14 -16 -13
		mu 0 4 3 5 16 15
		f 6 -22 -15 -27 16 23 24
		mu 0 6 22 16 5 4 17 23
		f 4 -6 11 17 -17
		mu 0 4 4 2 14 17
		f 4 13 19 -21 -19
		mu 0 4 14 15 19 18
		f 4 15 21 -23 -20
		mu 0 4 15 16 20 19
		f 4 -18 18 25 -24
		mu 0 4 17 14 18 21
		f 4 20 28 -30 -28
		mu 0 4 18 19 25 24
		f 4 22 30 -32 -29
		mu 0 4 19 20 26 25
		f 4 -25 32 33 -31
		mu 0 4 20 21 27 26
		f 4 -26 27 34 -33
		mu 0 4 21 18 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube6";
	rename -uid "84DEC61E-4E6A-5347-BC40-AFAADBCB747E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	rename -uid "677D7D88-4B38-01BF-7635-29B0A611C588";
	setAttr ".t" -type "double3" 0 0.30467791763851276 -0.46061543894185297 ;
	setAttr ".s" -type "double3" 3.3465405928566008 0.066639647484445064 1.7885475764579029 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "C2CD680C-4B80-89D5-F2BB-739F50BA7975";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.61873853 0.5 0.38115677 0.5 0.375 0.25 0.625 0.25
		 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  0.013237888 -1.4512234 0 
		-0.013237888 -1.4512234 0 0.013237888 0 0 -0.013237888 0 0 0.013237888 0 0 -0.013237888 
		0 0 0.013237888 -1.4512234 0 -0.013237888 -1.4512234 0 0.012575995 0 0 -0.012575995 
		0 0 -0.012575995 0 0 0.012575995 0 0 -0.00027306378 0 0.025290916 0.00027428614 0 
		0.025290916 0.00027419627 0 0 -0.00027309218 0 0 -0.00027306378 -0.08594887 0.025290916 
		0.00027428614 -0.08594887 0.025290916 0.00027419627 -0.08594887 0 -0.00027309218 
		-0.08594887 0;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.49999237 0.5 0.5 -0.49999237 0.5
		 -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.50000018 0.5 0.5 -0.50000018 -0.5 -0.49999237 -0.50000018
		 0.5 -0.49999237 -0.50000018 -0.47500002 1.38488388 0.4495416 0.47500002 1.38488388 0.4495416
		 0.47500002 1.38488388 -0.50045854 -0.47500002 1.38488388 -0.50045854 -0.45151389 1.38488388 0.41003406
		 0.45151389 1.38488388 0.41003406 0.45136011 1.38488388 -0.49834186 -0.45155904 1.38488388 -0.49834186
		 -0.45151389 1.70023346 0.41003406 0.45151389 1.70023346 0.41003406 0.45136011 1.70023346 -0.49834186
		 -0.45155904 1.70023346 -0.49834186;
	setAttr -s 35 ".ed[0:34]"  0 1 0 2 3 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0
		 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 8 11 0 8 12 1 9 13 1
		 12 13 0 10 14 0 13 14 0 11 15 0 15 14 1 12 15 0 4 5 1 12 16 0 13 17 0 16 17 0 14 18 0
		 17 18 0 15 19 0 19 18 0 16 19 0;
	setAttr -s 17 -ch 70 ".fc[0:16]" -type "polyFaces" 
		f 4 0 4 -2 -4
		mu 0 4 0 1 3 2
		f 4 29 31 -34 -35
		mu 0 4 24 25 26 27
		f 4 26 8 -3 -8
		mu 0 4 4 5 7 6
		f 4 2 10 -1 -10
		mu 0 4 6 7 9 8
		f 4 -11 -9 -7 -5
		mu 0 4 1 10 11 3
		f 4 9 3 5 7
		mu 0 4 12 0 2 13
		f 4 1 12 -14 -12
		mu 0 4 2 3 15 14
		f 4 6 14 -16 -13
		mu 0 4 3 5 16 15
		f 6 -22 -15 -27 16 23 24
		mu 0 6 22 16 5 4 17 23
		f 4 -6 11 17 -17
		mu 0 4 4 2 14 17
		f 4 13 19 -21 -19
		mu 0 4 14 15 19 18
		f 4 15 21 -23 -20
		mu 0 4 15 16 20 19
		f 4 -18 18 25 -24
		mu 0 4 17 14 18 21
		f 4 20 28 -30 -28
		mu 0 4 18 19 25 24
		f 4 22 30 -32 -29
		mu 0 4 19 20 26 25
		f 4 -25 32 33 -31
		mu 0 4 20 21 27 26
		f 4 -26 27 34 -33
		mu 0 4 21 18 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube7";
	rename -uid "533BE80F-4937-D3A9-74F5-1BA837EF0415";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	rename -uid "86E574DD-46AB-702C-69A6-3C9EF8274229";
	setAttr ".t" -type "double3" 0 2.8844613339791385 -0.68060371407990916 ;
	setAttr ".s" -type "double3" 2.6668501109597016 0.79360813613511327 0.75825364325529498 ;
createNode transform -n "transform2" -p "pCube8";
	rename -uid "84244249-46C4-5540-C581-8E961E7BD1B7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform2";
	rename -uid "DED88F25-4BC0-085A-FA77-28A0A0F68E51";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[16]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".pt[17]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".pt[18]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".pt[19]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".pt[20]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".pt[21]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".pt[22]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".pt[23]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".pt[24]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".pt[29]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".pt[30]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".pt[31]" -type "float3" 7.4505806e-009 0 0 ;
createNode transform -n "pCylinder1";
	rename -uid "853D83E3-4D74-46C1-BD3C-FE93BCC3B98C";
	setAttr ".t" -type "double3" 0 3.2834613214414734 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.2289430977857011 0.5221236188318048 0.2289430977857011 ;
createNode transform -n "transform1" -p "pCylinder1";
	rename -uid "B8DA1642-4813-65E2-012E-CDACC57D6B0A";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform1";
	rename -uid "1E06A1EE-41D4-FA83-7314-3E96E5F542BC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube9";
	rename -uid "1A4E4F94-43AA-0EF4-9117-6293475F0CFB";
	setAttr ".rp" -type "double3" 0 2.884461522102356 -0.6806037575006485 ;
	setAttr ".sp" -type "double3" 0 2.884461522102356 -0.6806037575006485 ;
createNode mesh -n "pCube9Shape" -p "pCube9";
	rename -uid "B7EA314C-4C8A-115D-78B1-88A5E63D70AD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube10";
	rename -uid "7E0F3917-40DC-4BD4-43FE-508B93C0DE7B";
	setAttr ".t" -type "double3" 0 -0.99300140530972891 0 ;
	setAttr ".rp" -type "double3" 0 2.884461522102356 -0.6806037575006485 ;
	setAttr ".sp" -type "double3" 0 2.884461522102356 -0.6806037575006485 ;
createNode mesh -n "pCube10Shape" -p "pCube10";
	rename -uid "795FC37D-4342-B250-7C0B-459ED659FD58";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.52142102 0.25 0.51982826 0.2230922 0.51517588 0.19969447 0.50821316 0.18406059
		 0.5 0.17857072 0.49178684 0.18406057 0.48482412 0.19969447 0.48017174 0.2230922 0.47857898
		 0.25 0.375 0.25 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.625 0.25 0.52221084 0.25 0.47778916 0.25 0.375 0.25 0.375 0.5 0.625
		 0.5 0.375 0.5 0.625 0.5 0.47944063 0.25 0.48426455 0.25 0.49148402 0.25 0.5 0.25
		 0.50851595 0.25 0.51573551 0.25 0.52055931 0.25 0.625 0.25 0.375 0.25 0.375 0.5 0.625
		 0.5 0.5 0.38056096 0.48476657 0.38056096 0.4847666 0.39193508 0.5 0.39193508 0.515625
		 0.38056096 0.515625 0.39193508 0.53125 0.38056096 0.53125 0.39193508 0.546875 0.38056096
		 0.546875 0.39193508 0.5625 0.38056096 0.5625 0.39193508 0.578125 0.38056096 0.578125
		 0.39193508 0.59375 0.38056096 0.59375 0.39193508 0.60898346 0.39193508 0.60898346
		 0.38056096;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  -1.33342493 2.48765731 -0.30147699 1.33342493 2.48765731 -0.30147699
		 1.33342493 3.28126574 -0.30147699 0.22850636 3.28126574 -0.30147699 0.21151583 3.1958487 -0.30147699
		 0.1618872 3.12157416 -0.30147699 0.087612703 3.071945429 -0.30147699 -3.4115178e-008 3.054518223 -0.30147699
		 -0.08761277 3.071945429 -0.30147699 -0.16188726 3.12157416 -0.30147699 -0.21151586 3.1958487 -0.30147699
		 -0.22850636 3.28126574 -0.30147699 -1.33342493 3.28126574 -0.30147699 -1.33342493 2.48765731 -1.05973053
		 -1.33342493 3.28126574 -1.05973053 1.33342493 2.48765731 -1.05973053 1.33342493 3.28126574 -1.05973053
		 1.28600633 3.28126574 -0.33307087 0.22850636 3.28126574 -0.33307087 -0.22850636 3.28126574 -0.33307087
		 -1.28600633 3.28126574 -0.33307087 -1.28600633 3.28126574 -1.02813673 1.28600633 3.28126574 -1.02813673
		 -0.21151586 3.1958487 -0.33307087 -0.16188726 3.12157416 -0.33307087 -0.08761277 3.071945429 -0.33307087
		 -3.4115178e-008 3.054518223 -0.33307087 0.087612703 3.071945429 -0.33307087 0.1618872 3.12157416 -0.33307087
		 0.21151583 3.1958487 -0.33307087 1.28600633 2.52954912 -0.33307087 -1.28600633 2.52954912 -0.33307087
		 -1.28600633 2.52954912 -1.02813673 1.28600633 2.52954912 -1.02813673;
	setAttr -s 55 ".ed[0:54]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 0 0 13 0 0 12 14 0 14 13 0 13 15 0 15 1 0 15 16 0
		 16 2 0 2 17 1 17 18 0 18 3 0 11 19 0 19 20 0 20 12 1 14 16 0 20 21 0 21 14 1 16 22 1
		 22 17 0 19 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 18 0 17 30 0 30 31 0
		 31 20 0 21 22 0 31 32 0 32 21 0 22 33 0 33 30 0 33 32 0 10 23 1 9 24 1 8 25 1 7 26 1
		 6 27 1 5 28 1 4 29 1;
	setAttr -s 23 -ch 110 ".fc[0:22]" -type "polyFaces" 
		f 13 0 1 2 3 4 5 6 7 8 9 10 11 12
		mu 0 13 0 1 2 3 4 5 6 7 8 9 10 11 12
		f 4 13 -13 14 15
		mu 0 4 13 0 12 14
		f 4 16 17 -1 -14
		mu 0 4 15 16 17 18
		f 4 -18 18 19 -2
		mu 0 4 1 19 20 2
		f 4 -3 20 21 22
		mu 0 4 3 2 21 22
		f 4 -12 23 24 25
		mu 0 4 12 11 23 24
		f 4 26 -19 -17 -16
		mu 0 4 25 26 16 15
		f 4 -15 -26 27 28
		mu 0 4 25 12 24 27
		f 4 -20 29 30 -21
		mu 0 4 2 26 28 21
		f 13 -25 31 32 33 34 35 36 37 38 -22 39 40 41
		mu 0 13 24 23 29 30 31 32 33 34 35 22 21 36 37
		f 4 -27 -29 42 -30
		mu 0 4 26 25 27 28
		f 4 -28 -42 43 44
		mu 0 4 27 24 37 38
		f 4 -31 45 46 -40
		mu 0 4 21 28 39 36
		f 4 -41 -47 47 -44
		mu 0 4 37 36 39 38
		f 4 -43 -45 -48 -46
		mu 0 4 28 27 38 39
		f 4 -32 -24 -11 48
		mu 0 4 40 41 42 43
		f 4 -33 -49 -10 49
		mu 0 4 44 40 43 45
		f 4 -34 -50 -9 50
		mu 0 4 46 44 45 47
		f 4 -35 -51 -8 51
		mu 0 4 48 46 47 49
		f 4 -36 -52 -7 52
		mu 0 4 50 48 49 51
		f 4 -37 -53 -6 53
		mu 0 4 52 50 51 53
		f 4 -38 -54 -5 54
		mu 0 4 54 52 53 55
		f 4 -4 -23 -39 -55
		mu 0 4 55 56 57 54;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	rename -uid "4AE1C442-40E1-5705-AE3D-30B1F8D99473";
	setAttr ".t" -type "double3" 0 -1.9884682986768842 0 ;
	setAttr ".rp" -type "double3" 0 2.884461522102356 -0.6806037575006485 ;
	setAttr ".sp" -type "double3" 0 2.884461522102356 -0.6806037575006485 ;
createNode mesh -n "pCube11Shape" -p "pCube11";
	rename -uid "FE0176AD-495E-6811-47ED-1EBBDFAECA36";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 3 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.52142102 0.25 0.51982826 0.2230922 0.51517588 0.19969447 0.50821316 0.18406059
		 0.5 0.17857072 0.49178684 0.18406057 0.48482412 0.19969447 0.48017174 0.2230922 0.47857898
		 0.25 0.375 0.25 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.625 0.25 0.52221084 0.25 0.47778916 0.25 0.375 0.25 0.375 0.5 0.625
		 0.5 0.375 0.5 0.625 0.5 0.47944063 0.25 0.48426455 0.25 0.49148402 0.25 0.5 0.25
		 0.50851595 0.25 0.51573551 0.25 0.52055931 0.25 0.625 0.25 0.375 0.25 0.375 0.5 0.625
		 0.5 0.5 0.38056096 0.48476657 0.38056096 0.4847666 0.39193508 0.5 0.39193508 0.515625
		 0.38056096 0.515625 0.39193508 0.53125 0.38056096 0.53125 0.39193508 0.546875 0.38056096
		 0.546875 0.39193508 0.5625 0.38056096 0.5625 0.39193508 0.578125 0.38056096 0.578125
		 0.39193508 0.59375 0.38056096 0.59375 0.39193508 0.60898346 0.39193508 0.60898346
		 0.38056096;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  -1.33342493 2.48765731 -0.30147699 1.33342493 2.48765731 -0.30147699
		 1.33342493 3.28126574 -0.30147699 0.22850636 3.28126574 -0.30147699 0.21151583 3.1958487 -0.30147699
		 0.1618872 3.12157416 -0.30147699 0.087612703 3.071945429 -0.30147699 -3.4115178e-008 3.054518223 -0.30147699
		 -0.08761277 3.071945429 -0.30147699 -0.16188726 3.12157416 -0.30147699 -0.21151586 3.1958487 -0.30147699
		 -0.22850636 3.28126574 -0.30147699 -1.33342493 3.28126574 -0.30147699 -1.33342493 2.48765731 -1.05973053
		 -1.33342493 3.28126574 -1.05973053 1.33342493 2.48765731 -1.05973053 1.33342493 3.28126574 -1.05973053
		 1.28600633 3.28126574 -0.33307087 0.22850636 3.28126574 -0.33307087 -0.22850636 3.28126574 -0.33307087
		 -1.28600633 3.28126574 -0.33307087 -1.28600633 3.28126574 -1.02813673 1.28600633 3.28126574 -1.02813673
		 -0.21151586 3.1958487 -0.33307087 -0.16188726 3.12157416 -0.33307087 -0.08761277 3.071945429 -0.33307087
		 -3.4115178e-008 3.054518223 -0.33307087 0.087612703 3.071945429 -0.33307087 0.1618872 3.12157416 -0.33307087
		 0.21151583 3.1958487 -0.33307087 1.28600633 2.52954912 -0.33307087 -1.28600633 2.52954912 -0.33307087
		 -1.28600633 2.52954912 -1.02813673 1.28600633 2.52954912 -1.02813673;
	setAttr -s 55 ".ed[0:54]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 0 0 13 0 0 12 14 0 14 13 0 13 15 0 15 1 0 15 16 0
		 16 2 0 2 17 1 17 18 0 18 3 0 11 19 0 19 20 0 20 12 1 14 16 0 20 21 0 21 14 1 16 22 1
		 22 17 0 19 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 18 0 17 30 0 30 31 0
		 31 20 0 21 22 0 31 32 0 32 21 0 22 33 0 33 30 0 33 32 0 10 23 1 9 24 1 8 25 1 7 26 1
		 6 27 1 5 28 1 4 29 1;
	setAttr -s 23 -ch 110 ".fc[0:22]" -type "polyFaces" 
		f 13 0 1 2 3 4 5 6 7 8 9 10 11 12
		mu 0 13 0 1 2 3 4 5 6 7 8 9 10 11 12
		f 4 13 -13 14 15
		mu 0 4 13 0 12 14
		f 4 16 17 -1 -14
		mu 0 4 15 16 17 18
		f 4 -18 18 19 -2
		mu 0 4 1 19 20 2
		f 4 -3 20 21 22
		mu 0 4 3 2 21 22
		f 4 -12 23 24 25
		mu 0 4 12 11 23 24
		f 4 26 -19 -17 -16
		mu 0 4 25 26 16 15
		f 4 -15 -26 27 28
		mu 0 4 25 12 24 27
		f 4 -20 29 30 -21
		mu 0 4 2 26 28 21
		f 13 -25 31 32 33 34 35 36 37 38 -22 39 40 41
		mu 0 13 24 23 29 30 31 32 33 34 35 22 21 36 37
		f 4 -27 -29 42 -30
		mu 0 4 26 25 27 28
		f 4 -28 -42 43 44
		mu 0 4 27 24 37 38
		f 4 -31 45 46 -40
		mu 0 4 21 28 39 36
		f 4 -41 -47 47 -44
		mu 0 4 37 36 39 38
		f 4 -43 -45 -48 -46
		mu 0 4 28 27 38 39
		f 4 -32 -24 -11 48
		mu 0 4 40 41 42 43
		f 4 -33 -49 -10 49
		mu 0 4 44 40 43 45
		f 4 -34 -50 -9 50
		mu 0 4 46 44 45 47
		f 4 -35 -51 -8 51
		mu 0 4 48 46 47 49
		f 4 -36 -52 -7 52
		mu 0 4 50 48 49 51
		f 4 -37 -53 -6 53
		mu 0 4 52 50 51 53
		f 4 -38 -54 -5 54
		mu 0 4 54 52 53 55
		f 4 -4 -23 -39 -55
		mu 0 4 55 56 57 54;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder2";
	rename -uid "D5C64D1C-4708-06FE-B109-4492013A4748";
	setAttr ".t" -type "double3" 0 0 5.8158955394992704 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 0.16191657217613398 1 ;
createNode transform -n "transform3" -p "pCylinder2";
	rename -uid "62BF7AEF-41F1-BDF8-9AB6-8A84D9A11EB8";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform3";
	rename -uid "663B44D2-4C00-8112-1E11-16A9A6698A45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.5 0.79552215337753296 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPipe1";
	rename -uid "3000C93F-41C6-40CE-2AF0-0999A5D63827";
	setAttr ".t" -type "double3" 0 0 4.0989028616072956 ;
	setAttr ".s" -type "double3" 1 1.8422204799008892 1 ;
createNode transform -n "transform4" -p "pPipe1";
	rename -uid "C1C2A21A-4674-08FD-5B37-C592022FDF8D";
	setAttr ".v" no;
createNode mesh -n "pPipeShape1" -p "transform4";
	rename -uid "6643DBFF-42F3-1C23-6B24-798CC6404908";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.75000011920928955 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPipe2";
	rename -uid "BD12CEEA-4F88-FA8C-BEB3-A5A176A48F91";
	setAttr ".t" -type "double3" 1.0946411924126731 1.9107150369378789 -4.2293358942713359 ;
	setAttr ".s" -type "double3" 0.053643118487278083 0.053643118487278083 0.053643118487278083 ;
	setAttr ".rp" -type "double3" 0.4190417155623436 0 4.098902702331543 ;
	setAttr ".sp" -type "double3" 0.4190417155623436 0 4.098902702331543 ;
createNode mesh -n "pPipe2Shape" -p "pPipe2";
	rename -uid "131BA5C7-498E-EE16-0310-7BA308EB1ECC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67361116409301758 0.59421992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCube12";
	rename -uid "DF65745B-4F50-73B5-943A-B0B237676200";
	setAttr ".t" -type "double3" 0 1.5762952105283079 3.733183753949227 ;
	setAttr ".s" -type "double3" 0.41172664596690345 0.57084601222244002 1.9047215116769627 ;
createNode transform -n "transform7" -p "pCube12";
	rename -uid "4EAE7998-4AE1-B70D-ABF2-0F936CF5472C";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform7";
	rename -uid "37E00A82-4347-B724-FC81-E98A47329E38";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.5 0.46451175212860107 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0 0.049040683 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.049040683 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.049040683 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.049040683 ;
createNode transform -n "pCylinder3";
	rename -uid "85F6EE38-454C-9646-1005-3A9DBE755C66";
	setAttr ".t" -type "double3" 0 1.5653903348913787 2.1133394480057084 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.76441309367124854 0.20026144874577234 0.76441309367124854 ;
createNode transform -n "transform6" -p "pCylinder3";
	rename -uid "E2C97E1A-4686-AF6B-D8EF-96A4B9FE7672";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape3" -p "transform6";
	rename -uid "D285A75A-47EF-58A0-0174-2A910098693C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.52083328366279602 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[14:17]" -type "float3"  0.22091395 0 0 0.22091395 
		0 0 -0.22091395 0 0 -0.22091395 0 0;
createNode transform -n "pPipe3";
	rename -uid "E9090070-4EA8-928A-9E1E-7DA84C5F20B6";
	setAttr ".t" -type "double3" 0 1.882624337759343 5.9977380686997916 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 0.43087154038004744 1 ;
createNode transform -n "transform5" -p "pPipe3";
	rename -uid "52CF46EA-4745-104D-26DB-ACBB5915CD6B";
	setAttr ".v" no;
createNode mesh -n "pPipeShape2" -p "transform5";
	rename -uid "704A121A-41A9-94D4-F2B2-CDBC32948280";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.74999994039535522 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube13";
	rename -uid "F09A3420-48EA-F390-2E05-AD9FC3BE5537";
	setAttr ".t" -type "double3" 1.510758177606812 0.42120921879089157 -2.7035882056959495 ;
	setAttr ".r" -type "double3" 5.5031245405036984 0 0 ;
	setAttr ".s" -type "double3" 0.050800810381686455 0.094602605896313807 0.094602605896313807 ;
	setAttr ".rp" -type "double3" 0 1.5447024072560223 2.106270133061348 ;
	setAttr ".sp" -type "double3" 0 1.5447024072560223 2.106270133061348 ;
createNode mesh -n "pCube13Shape" -p "pCube13";
	rename -uid "AD76A7D3-413C-C67D-B3C7-B7B5DD657A0C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.74999994039535522 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[50:57]" -type "float3"  0 -2.9802322e-008 3.7252903e-009 
		0 -2.9802322e-008 3.7252903e-009 0 -2.9802322e-008 3.7252903e-009 0 -2.9802322e-008 
		3.7252903e-009 0 -2.9802322e-008 3.7252903e-009 0 -2.9802322e-008 3.7252903e-009 
		0 -2.9802322e-008 3.7252903e-009 0 -2.9802322e-008 3.7252903e-009;
createNode transform -n "Numbers";
	rename -uid "495114D7-4299-73B2-F17F-75A9ABAE5DE6";
	setAttr ".t" -type "double3" -3.111059925077801 1.7528820627472086 5.340516031212156e-017 ;
	setAttr ".s" -type "double3" 0.43136045292578806 0.43136045292578806 0.43136045292578806 ;
	setAttr ".rp" -type "double3" 3.111059925077801 0.15595107912481798 -5.340516031212156e-017 ;
	setAttr ".sp" -type "double3" 6.4674843023100683 0.3242017770335468 -1.1102230246251565e-016 ;
	setAttr ".spt" -type "double3" -3.3564243772322673 -0.16825069790872882 5.76171421503941e-017 ;
createNode mesh -n "NumbersShape" -p "Numbers";
	rename -uid "C0F69DD7-429A-4C59-6C4F-0A9D3FA478AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.73792863 0.44121715
		 0.032014452 0.026203908 0.032014452 0 0.49420995 1 1 0.60149658 0 0.65356565 0.40498215
		 0.36964282 0.75662833 0.49362496 0.20726787 0.72318918 0.5005514 0.43487939 0.46735829
		 0.95487064 0.77765489 0.63826531 0.73280573 0.42857143 0.95788389 0.42857143 0.151932
		 0.42857143 0.70434254 0.42857143 0.43791354 0.12278342 0.43791354 0.049842231 0.43791354
		 0.42857143 0.43791354 0.37044939 0.25 0.051273488 0.25 0.0094767148 0.25 0.42857143
		 0.25 0.38959411 0.47177863 0.14285715 0.65478271 0.14285715 0.64141846 0.2857143
		 0.85139787 0.2857143 0.75 0.2018598 0.75 0.2857143 0.75 0.42857143 0.98077595 0.71428573
		 0.0075795422 0.71428573 0.20740761 0.71428573 0.76741588 0.71428573 0.43791354 0.43964243
		 0.014929725 0.5714286 0.24853624 0.5714286 0.25 0.56894124 0.058781307 0.5 0.25 0.5
		 0.125 0.44445124 0.125 0.5 0.125 0.5714286 0.30745569 0.5 0.34395677 0.42857143 0.34395677
		 0.47359058 0.99872643 0.5714286 0.77207685 0.5714286 0.75 0.49036646 0.59395677 0.44311669
		 0.59395677 0.42857143 0.43791354 0.99808252 0.43791354 0.95352191 0.093371838 0.85714287
		 0.24693879 0.85714287 0.25 0.95740843 0.25 0.86128742 0.25 0.9285714 0.34121427 0.9285714
		 0.34395677 0.98527616 0.34395677 0.92976856 0.88488919 0.85714287 0.6947341 0.85714287
		 0.75 0.85714287 0.75 0.76516843 0.75 0.94829673 0.59529722 0.9285714 0.75 0.9285714
		 0.59395677 0.99320155 0.59395677 0.92914808;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 71 ".vt[0:70]"  4.29451799 0.28697646 0 4.0032010078 0.0043408205 0
		 4.0032010078 -0.013504774 0 4.19394493 0.66808176 0 4.40274668 0.39613083 0 3.98993063 0.43159184 0
		 4.1571188 0.23798028 0 4.30223513 0.32266763 0 4.075253487 0.47900581 0 4.19655704 0.28266716 0
		 4.18285656 0.63729757 0 4.31085396 0.42117187 0 4.29240417 0.27836433 0 4.38484383 0.27849817 0
		 4.052563667 0.27822155 0 4.28064966 0.27837828 0 4.17060709 0.07022506 0 4.17076206 0.020335423 0
		 4.1707077 0.27836436 0 4.17072296 0.23860836 0 4.093182087 0.021356197 0 4.093142509 -0.0069604539 0
		 4.093159199 0.27836436 0 4.093139648 0.2517767 0 4.18467331 0.083794624 0 4.26023579 0.083751477 0
		 4.25469017 0.18107463 0 4.34134388 0.18107538 0 4.2994895 0.12397627 0 4.29949999 0.18107465 0
		 4.29949999 0.27836436 0 4.39504576 0.47301 0 3.99311757 0.47294372 0 4.07534647 0.47293788 0
		 4.30721235 0.47302204 0 4.17073631 0.2860052 0 3.99608684 0.37563929 0 4.092566967 0.37565812 0
		 4.093166828 0.37396282 0 4.014117718 0.32694024 0 4.093159199 0.32700923 0 4.041361332 0.28897664 0
		 4.041574478 0.32700923 0 4.041574478 0.37565407 0 4.11678219 0.32694742 0 4.13193369 0.27836436 0
		 4.13189888 0.30898803 0 4.40210199 0.37565652 0 4.30856371 0.37565833 0 4.29950094 0.32044694 0
		 4.2351017 0.28827828 0 4.23510361 0.27836436 0 4.17064285 0.66674107 0 4.17064428 0.63625306 0
		 4.028491974 0.5702517 0 4.092160702 0.57011384 0 4.093165874 0.63850719 0 4.09346056 0.57291234 0
		 4.093159199 0.61887836 0 4.13078403 0.61890286 0 4.13190985 0.65756297 0 4.13191986 0.61971343 0
		 4.35550261 0.57045019 0 4.27645016 0.57009983 0 4.29949999 0.57023352 0 4.30004883 0.50774145 0
		 4.29940319 0.63218176 0 4.23546791 0.61862445 0 4.29949999 0.61887836 0 4.23509026 0.66283953 0
		 4.23492432 0.61902666 0;
	setAttr -s 154 ".ed[0:153]"  62 66 0 66 68 1 68 62 1 27 13 0 13 30 1 30 27 1
		 45 22 1 22 23 1 23 45 1 20 21 1 21 17 0 17 20 1 1 2 0 2 21 0 21 1 1 22 14 1 14 23 0
		 16 17 1 17 25 0 25 16 1 28 27 0 27 29 1 29 28 1 26 24 0 24 25 1 25 26 1 12 26 0 26 29 1
		 29 12 1 4 31 0 31 34 1 34 4 1 33 32 1 32 5 0 5 33 1 44 38 0 38 40 1 40 44 1 42 40 1
		 38 42 1 22 40 1 42 22 1 39 41 0 41 42 1 42 39 1 42 43 1 43 39 1 45 18 1 18 35 1 35 45 1
		 45 46 1 46 22 1 13 47 0 47 48 1 48 13 1 0 12 0 12 30 1 30 0 1 9 35 0 18 9 1 60 61 1
		 61 53 0 53 60 1 33 8 0 8 32 1 54 55 1 55 57 0 57 54 1 58 57 1 57 59 0 59 58 1 56 58 1
		 59 56 1 62 64 1 64 65 1 65 62 1 64 63 1 63 65 0 69 70 1 70 67 0 67 69 1 64 68 1 68 63 1
		 3 52 0 52 10 1 10 3 1 19 9 1 18 19 1 30 29 1 6 19 0 18 6 1 45 6 1 23 6 0 16 20 0
		 20 1 0 24 16 0 26 28 1 25 28 0 47 4 0 4 48 1 11 48 0 4 11 1 34 11 0 5 36 0 36 43 1
		 43 5 1 43 37 1 37 33 0 33 43 1 38 37 0 43 38 1 41 14 0 14 42 1 36 39 0 35 46 0 22 44 1
		 46 44 0 7 49 0 49 30 1 30 7 1 13 7 1 48 7 0 50 51 1 51 15 1 15 50 1 49 0 1 15 0 0
		 49 15 1 49 50 0 50 9 0 9 51 1 19 51 1 53 52 1 52 60 0 8 55 0 54 8 1 54 32 0 56 54 0
		 54 58 1 60 56 0 56 61 1 59 61 0 65 34 0 31 65 1 31 62 0 67 68 1 66 67 1 66 69 0 67 63 0
		 53 10 0 69 3 0 3 70 1 10 70 0 19 15 0;
	setAttr -s 83 -ch 249 ".fc[0:82]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 62 66 68
		f 3 3 4 5
		mu 0 3 27 13 30
		f 3 6 7 8
		mu 0 3 45 22 23
		f 3 9 10 11
		mu 0 3 20 21 17
		f 3 12 13 14
		mu 0 3 1 2 21
		f 3 15 16 -8
		mu 0 3 22 14 23
		f 3 17 18 19
		mu 0 3 16 17 25
		f 3 20 21 22
		mu 0 3 28 27 29
		f 3 23 24 25
		mu 0 3 26 24 25
		f 3 26 27 28
		mu 0 3 12 26 29
		f 3 29 30 31
		mu 0 3 4 31 34
		f 3 32 33 34
		mu 0 3 33 32 5
		f 3 35 36 37
		mu 0 3 44 38 40
		f 3 38 -37 39
		mu 0 3 42 40 38
		f 3 40 -39 41
		mu 0 3 22 40 42
		f 3 42 43 44
		mu 0 3 39 41 42
		f 3 -45 45 46
		mu 0 3 39 42 43
		f 3 47 48 49
		mu 0 3 45 18 35
		f 3 -7 50 51
		mu 0 3 22 45 46
		f 3 52 53 54
		mu 0 3 13 47 48
		f 3 55 56 57
		mu 0 3 0 12 30
		f 3 58 -49 59
		mu 0 3 9 35 18
		f 3 60 61 62
		mu 0 3 60 61 53
		f 3 -33 63 64
		mu 0 3 32 33 8
		f 3 65 66 67
		mu 0 3 54 55 57
		f 3 68 69 70
		mu 0 3 58 57 59
		f 3 71 -71 72
		mu 0 3 56 58 59
		f 3 73 74 75
		mu 0 3 62 64 65
		f 3 76 77 -75
		mu 0 3 64 63 65
		f 3 78 79 80
		mu 0 3 69 70 67
		f 3 -77 81 82
		mu 0 3 63 64 68
		f 3 83 84 85
		mu 0 3 3 52 10
		f 3 86 -60 87
		mu 0 3 19 9 18
		f 3 -82 -74 -3
		mu 0 3 68 64 62
		f 3 88 -22 -6
		mu 0 3 30 29 27
		f 3 89 -88 90
		mu 0 3 6 19 18
		f 3 -91 -48 91
		mu 0 3 6 18 45
		f 3 92 -92 -9
		mu 0 3 23 6 45
		f 3 -18 93 -12
		mu 0 3 17 16 20
		f 3 -10 94 -15
		mu 0 3 21 20 1
		f 3 -25 95 -20
		mu 0 3 25 24 16
		f 3 -23 -28 96
		mu 0 3 28 29 26
		f 3 -26 97 -97
		mu 0 3 26 25 28
		f 3 -89 -57 -29
		mu 0 3 29 30 12
		f 3 -54 98 99
		mu 0 3 48 47 4
		f 3 100 -100 101
		mu 0 3 11 48 4
		f 3 -32 102 -102
		mu 0 3 4 34 11
		f 3 103 104 105
		mu 0 3 5 36 43
		f 3 106 107 108
		mu 0 3 43 37 33
		f 3 -106 -109 -35
		mu 0 3 5 43 33
		f 3 109 -107 110
		mu 0 3 38 37 43
		f 3 -46 -40 -111
		mu 0 3 43 42 38
		f 3 -44 111 112
		mu 0 3 42 41 14
		f 3 -16 -42 -113
		mu 0 3 14 22 42
		f 3 -105 113 -47
		mu 0 3 43 36 39
		f 3 114 -51 -50
		mu 0 3 35 46 45
		f 3 -38 -41 115
		mu 0 3 44 40 22
		f 3 -52 116 -116
		mu 0 3 22 46 44
		f 3 117 118 119
		mu 0 3 7 49 30
		f 3 -120 -5 120
		mu 0 3 7 30 13
		f 3 -55 121 -121
		mu 0 3 13 48 7
		f 3 122 123 124
		mu 0 3 50 51 15
		f 3 -119 125 -58
		mu 0 3 30 49 0
		f 3 126 -126 127
		mu 0 3 15 0 49
		f 3 128 -125 -128
		mu 0 3 49 50 15
		f 3 -123 129 130
		mu 0 3 51 50 9
		f 3 -87 131 -131
		mu 0 3 9 19 51
		f 3 132 133 -63
		mu 0 3 53 52 60
		f 3 134 -66 135
		mu 0 3 8 55 54
		f 3 -136 136 -65
		mu 0 3 8 54 32
		f 3 -72 137 138
		mu 0 3 58 56 54
		f 3 -69 -139 -68
		mu 0 3 57 58 54
		f 3 -61 139 140
		mu 0 3 61 60 56
		f 3 -73 141 -141
		mu 0 3 56 59 61
		f 3 142 -31 143
		mu 0 3 65 34 31
		f 3 144 -76 -144
		mu 0 3 31 62 65
		f 3 145 -2 146
		mu 0 3 67 68 66
		f 3 -147 147 -81
		mu 0 3 67 66 69
		f 3 -146 148 -83
		mu 0 3 68 67 63
		f 3 -133 149 -85
		mu 0 3 52 53 10
		f 3 -79 150 151
		mu 0 3 70 69 3
		f 3 152 -152 -86
		mu 0 3 10 70 3
		f 3 153 -124 -132
		mu 0 3 19 15 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim_Char_x_10_1" -p "Numbers";
	rename -uid "0FCC704A-4119-30D8-2B10-F6A849B70B0A";
	setAttr ".t" -type "double3" -5.8832242299062347 -3.2179553877286207 -2.2204460492503131e-016 ;
	setAttr ".s" -type "double3" 2.078868442930534 2.078868442930534 2.078868442930534 ;
	setAttr ".rp" -type "double3" 10.385176823863954 4.6858105014984028 0 ;
	setAttr ".sp" -type "double3" 4.9955911636352539 2.2540197372436523 0 ;
	setAttr ".spt" -type "double3" 5.3895856602287004 2.4317907642547505 0 ;
createNode mesh -n "Trim_Char_x_10_1Shape" -p "Trim_Char_x_10_1";
	rename -uid "3853934A-4D4C-1C91-0CD9-CAB81FE4C1C3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 126 ".uvst[0].uvsp[0:125]" -type "float2" 0.028089888 0.86127168
		 0.044943821 0.026734104 0.37078652 0.49771228 0.34443197 0.84936863 0.22101685 0.8836695
		 0.37233496 0.65224147 0.36934379 0.12608618 0.37370497 0.26798517 0.36941862 0.11569954
		 0.044943821 0 1 0 1 0.026734104 0.6797753 1 0.67812806 0.21165624 0.6179775 1 0 0.88367051
		 0.37078753 0.5 0.6797753 0.5 0.37364852 0.25 0.67850763 0.25 0.36746991 0.094564632
		 0.68454438 0.094564632 0.5 0 0.5 0.094564632 0.31131503 0.047282316 0.5 0.047282316
		 0.25 0.034565814 0.25 0 0.35461265 0.07092347 0.5 0.07092347 0.375 0.047282316 0.375
		 0.07092347 0.375 0.094564632 0.73830086 0.047282316 0.75 0 0.75 0.043828312 0.69650978
		 0.07092347 0.625 0.07092347 0.625 0.047282316 0.625 0.094564632 0.5 0.25 0.37239531
		 0.375 0.6797753 0.375 0.5 0.375 0.5 0.5 0.36969247 0.75 0.6797753 0.75 0.37220755
		 0.625 0.6797753 0.625 0.5 0.625 0.5 0.75 0.11219173 0.875 0.29683575 0.875 0.6797753
		 0.875 0.010873505 0.875 0.5 0.875 0.5 0.97779167 0.8588447 0.85714287 0.75 0.935969
		 0.75 0.9285714 0.95693934 0.2857143 0.99555862 0.42857143 0.77274573 0.42857143 0.042591192
		 0.2857143 0.24528947 0.2857143 0.22457251 0.42857143 0.38274574 0.071428575 0.375
		 0.075895652 0.375 0.071428575 0.14215977 0.14285715 0.25 0.060661715 0.25 0.071428575
		 0.375 0.012661641 0.4910939 0 0.4937827 0.044714637 0.30597049 0.14285715 0.25 0.14285715
		 0.25 0.26868066 0.85703498 0.14285715 0.75 0.14285715 0.75 0.071428575 0.69691837
		 0.14285715 0.75 0.064864121 0.625 0.071428575 0.625 0.01773987 0.6079542 0.071428575
		 0.625 0.080039769 0.7526111 0.2857143 0.75 0.27437881 0.96023595 0.71428573 0.7574228
		 0.71428573 0.77551341 0.5714286 0.25082016 0.71428573 0.25 0.71428573 0.25 0.71079028
		 0.0037034601 0.42857143 0.22348917 0.47482362 0.045028765 0.71428573 0.0047777169
		 0.5714286 0.22831005 0.5714286 0.99678141 0.5714286 0.77640086 0.5253039 0.375 0.98270583
		 0.375 0.9285714 0.39711395 0.9285714 0.31176877 0.85714287 0.25 0.85714287 0.14749163
		 0.85714287 0.25 0.9285714 0.375 0.91602021 0.25 0.93309027 0.75 0.85714287 0.75 0.74189347
		 0.69565529 0.85714287 0.625 0.98576987 0.625 0.9285714 0.61615765 0.9285714 0.625
		 0.92380106 0.50788355 1 0.50570565 0.9526825 0.5 7.7304576e-005 0.5 0.044782985 0
		 0.49256578 1 0.50746918 0.5 0.95262522 0.5 0.99993771;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 126 ".vt[0:125]"  4.7978034 2.37268209 0 4.79989147 2.1047132 0
		 4.84026814 2.25594354 0 4.83698177 2.36885524 0 4.82170534 2.38014317 0 4.84044123 2.30556273 0
		 4.84017658 2.13661242 0 4.84062195 2.1821785 0 4.84007549 2.13328052 0 4.79989147 2.096128941 0
		 4.91821575 2.096128941 0 4.91821575 2.1047132 0 4.87854195 2.41722751 0 4.87834454 2.16409135 0
		 4.87088585 2.41722751 0 4.79432297 2.37987423 0 4.84026909 2.2566781 0 4.8784914 2.25667834 0
		 4.84061527 2.17640352 0 4.87837029 2.17640352 0 4.83975315 2.12650013 0 4.87918949 2.12649798 0
		 4.85626888 2.096128941 0 4.85626888 2.12649345 0 4.83291245 2.11128759 0 4.85626888 2.1113112 0
		 4.82531786 2.10716343 0 4.8252964 2.096128941 0 4.83823633 2.11891031 0 4.85626888 2.11890244 0
		 4.84078312 2.1113112 0 4.84078312 2.11890244 0 4.84078312 2.12649345 0 4.88585949 2.11138916 0
		 4.88724232 2.096128941 0 4.88729668 2.11027956 0 4.88065386 2.11891651 0 4.8717556 2.11890244 0
		 4.8717556 2.1113112 0 4.8717556 2.12649345 0 4.85626888 2.17640352 0 4.84045982 2.21654081 0
		 4.87844276 2.21654105 0 4.85626888 2.21654081 0 4.85626888 2.2566781 0 4.84020805 2.33695364 0
		 4.87853575 2.33695292 0 4.84042931 2.29681563 0 4.87852049 2.29681563 0 4.85626888 2.29681563 0
		 4.85626888 2.33695292 0 4.80817938 2.37720633 0 4.83123016 2.37726593 0 4.87854099 2.37709022 0
		 4.79567051 2.37709022 0 4.85626888 2.37709022 0 4.85626888 2.41009641 0 4.99338579 2.25157404 0
		 5.19685936 2.25644612 0 5.093308926 2.090546131 0 5.096725464 2.41749334 0 5.038859367 2.24577379 0
		 5.15136194 2.26227665 0 5.096277237 2.40214038 0 5.093856812 2.10508227 0 4.99413919 2.23065329 0
		 5.19595242 2.23065329 0 5.15066242 2.23065114 0 5.039073467 2.23065305 0 5.095121384 2.090568066 0
		 5.095124245 2.10512161 0 5.02226162 2.137218 0 5.055641651 2.13724875 0 5.04424572 2.11036897 0
		 5.044253349 2.13724875 0 5.071299076 2.11393833 0 5.044253349 2.11389756 0 5.069696426 2.094710827 0
		 5.069687366 2.11389756 0 5.069719315 2.11539125 0 5.0020523071 2.18395114 0 5.043324471 2.18395567 0
		 5.044285297 2.17838812 0 5.16770363 2.13728952 0 5.13517761 2.13725328 0 5.1459198 2.11183047 0
		 5.14598846 2.13724875 0 5.14598846 2.11389756 0 5.11712742 2.11384439 0 5.12070179 2.095985174 0
		 5.12055492 2.11389756 0 5.12056303 2.11670375 0 5.18809509 2.1839509 0 5.14654827 2.18394709 0
		 5.14600849 2.1802423 0 5.18876743 2.32405829 0 5.0025482178 2.32405782 0 5.044409752 2.32405949 0
		 5.14754868 2.32406545 0 4.99435806 2.27735567 0 5.039801598 2.27735782 0 5.044253349 2.32405782 0
		 5.044241905 2.32291698 0 5.19619989 2.27735543 0 5.15119076 2.27735591 0 5.09512043 2.41748857 0
		 5.095114231 2.40208507 0 5.023458004 2.37071943 0 5.056845188 2.37074924 0 5.044253349 2.3707602 0
		 5.044309616 2.39552689 0 5.044253349 2.39411139 0 5.074105263 2.39421606 0 5.069569588 2.39012218 0
		 5.069687366 2.39411139 0 5.0695858 2.41205049 0 5.16805077 2.37070394 0 5.13502026 2.37079906 0
		 5.14598846 2.3707602 0 5.14602804 2.33309054 0 5.14598083 2.39652109 0 5.11889362 2.39427543 0
		 5.14598846 2.39411139 0 5.12067986 2.39268398 0 5.12055492 2.39411139 0 5.12053585 2.4127636 0;
	setAttr -s 277 ".ed";
	setAttr ".ed[0:165]"  53 12 0 12 14 0 14 53 1 43 42 1 42 17 0 17 43 1 39 21 1
		 21 13 0 13 39 1 39 37 1 37 21 1 31 29 1 29 23 1 23 31 1 22 25 1 25 30 1 30 22 1 1 9 0
		 9 27 0 27 1 1 25 29 1 29 30 1 28 24 0 24 30 1 30 28 1 20 28 0 28 31 1 31 20 1 34 10 0
		 10 11 0 11 34 1 34 33 1 33 38 1 38 34 1 36 37 1 37 38 1 38 36 1 25 38 1 37 25 1 29 37 1
		 39 29 1 23 8 1 8 32 1 32 23 1 19 42 0 43 19 1 7 18 0 18 40 1 40 7 1 41 43 1 43 44 1
		 44 41 1 49 48 1 48 46 0 46 49 1 44 17 1 17 48 0 48 44 1 47 16 0 16 44 1 44 47 1 5 47 0
		 47 49 1 49 5 1 50 46 1 46 53 0 53 50 1 0 51 0 51 54 1 54 0 0 52 55 1 55 56 1 56 52 1
		 52 3 0 3 55 1 55 53 1 53 56 1 14 56 0 13 19 0 19 40 1 40 13 1 13 23 1 23 39 1 40 23 1
		 36 21 0 32 31 1 24 26 0 26 30 1 26 27 1 27 22 0 22 26 1 26 1 0 31 30 1 32 20 1 11 35 0
		 35 34 1 35 33 0 22 38 1 22 34 0 33 36 0 8 20 0 18 6 0 6 40 1 6 23 1 6 8 0 43 40 1
		 41 7 0 7 43 1 16 2 0 2 44 1 2 41 0 50 49 1 49 44 1 50 45 1 45 5 0 5 50 1 55 50 1
		 15 54 0 51 15 1 56 15 0 15 4 1 4 56 1 4 52 0 51 4 0 55 45 1 3 45 0 116 120 0 120 122 1
		 122 116 1 92 66 0 66 67 1 67 92 1 80 81 1 81 68 0 68 80 1 75 79 0 79 78 1 78 75 1
		 71 73 0 73 76 1 76 71 1 77 59 0 59 64 1 64 77 1 73 77 0 77 78 1 78 73 1 72 74 1 74 76 1
		 76 72 1 72 82 0 82 74 1 71 74 1 82 71 1 83 86 1 86 87 1 87 83 1 86 84 1 84 87 1 85 87 1
		 87 90 1 90 85 1 89 90 1 90 88 1 88 89 1 91 88 0;
	setAttr ".ed[166:276]" 90 91 1 92 93 1 93 94 0 94 92 1 94 84 0 86 94 1 95 98 1
		 98 104 0 104 95 1 97 101 1 101 102 1 102 97 0 65 68 1 68 61 0 61 65 1 96 99 0 99 100 1
		 100 96 1 103 104 1 104 62 0 62 103 1 115 114 1 114 112 1 112 115 1 97 108 0 108 109 1
		 109 97 1 107 96 0 96 101 1 101 107 1 107 109 1 109 111 1 111 107 1 113 112 0 114 113 1
		 108 111 1 110 111 1 111 114 1 114 110 1 116 118 1 118 119 1 119 116 1 118 117 1 117 119 0
		 120 125 0 125 124 1 124 120 1 118 122 1 122 117 1 121 123 0 123 124 1 124 121 1 125 60 0
		 60 63 1 63 125 1 67 93 0 65 80 0 69 70 1 70 64 0 64 69 1 77 75 1 64 75 0 59 69 0
		 78 76 1 79 76 1 79 72 0 82 81 0 80 82 1 80 71 0 85 83 0 87 91 1 84 91 0 89 85 0 69 89 0
		 89 70 1 88 70 0 83 94 1 83 92 0 103 95 0 99 57 0 57 100 1 57 65 0 65 100 1 61 100 0
		 96 102 1 100 102 0 66 58 0 58 67 1 58 103 0 103 67 1 62 67 0 106 105 1 105 115 0
		 115 106 1 112 106 0 109 101 1 110 107 0 111 113 1 108 113 0 115 110 0 119 98 0 95 119 1
		 95 116 0 124 122 1 123 122 1 123 117 0 106 63 0 63 105 1 125 121 1 63 121 0 60 105 0;
	setAttr -s 152 -ch 456 ".fc[0:151]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 53 12 14
		f 3 3 4 5
		mu 0 3 43 42 17
		f 3 6 7 8
		mu 0 3 39 21 13
		f 3 -7 9 10
		mu 0 3 21 39 37
		f 3 11 12 13
		mu 0 3 31 29 23
		f 3 14 15 16
		mu 0 3 22 25 30
		f 3 17 18 19
		mu 0 3 1 9 27
		f 3 -16 20 21
		mu 0 3 30 25 29
		f 3 22 23 24
		mu 0 3 28 24 30
		f 3 25 26 27
		mu 0 3 20 28 31
		f 3 28 29 30
		mu 0 3 34 10 11
		f 3 31 32 33
		mu 0 3 34 33 38
		f 3 34 35 36
		mu 0 3 36 37 38
		f 3 37 -36 38
		mu 0 3 25 38 37
		f 3 39 -10 40
		mu 0 3 29 37 39
		f 3 41 42 43
		mu 0 3 23 8 32
		f 3 44 -4 45
		mu 0 3 19 42 43
		f 3 46 47 48
		mu 0 3 7 18 40
		f 3 49 50 51
		mu 0 3 41 43 44
		f 3 52 53 54
		mu 0 3 49 48 46
		f 3 55 56 57
		mu 0 3 44 17 48
		f 3 58 59 60
		mu 0 3 47 16 44
		f 3 61 62 63
		mu 0 3 5 47 49
		f 3 64 65 66
		mu 0 3 50 46 53
		f 3 67 68 69
		mu 0 3 0 51 54
		f 3 70 71 72
		mu 0 3 52 55 56
		f 3 -71 73 74
		mu 0 3 55 52 3
		f 3 -72 75 76
		mu 0 3 56 55 53
		f 3 77 -77 -3
		mu 0 3 14 56 53
		f 3 -56 -51 -6
		mu 0 3 17 44 43
		f 3 78 79 80
		mu 0 3 13 19 40
		f 3 81 82 -9
		mu 0 3 13 23 39
		f 3 83 -82 -81
		mu 0 3 40 23 13
		f 3 -35 84 -11
		mu 0 3 37 36 21
		f 3 -44 85 -14
		mu 0 3 23 32 31
		f 3 -24 86 87
		mu 0 3 30 24 26
		f 3 88 89 90
		mu 0 3 26 27 22
		f 3 -17 -88 -91
		mu 0 3 22 30 26
		f 3 -89 91 -20
		mu 0 3 27 26 1
		f 3 -12 92 -22
		mu 0 3 29 31 30
		f 3 -93 -27 -25
		mu 0 3 30 31 28
		f 3 -86 93 -28
		mu 0 3 31 32 20
		f 3 94 95 -31
		mu 0 3 11 35 34
		f 3 -96 96 -32
		mu 0 3 34 35 33
		f 3 -38 -15 97
		mu 0 3 38 25 22
		f 3 -98 98 -34
		mu 0 3 38 22 34
		f 3 -33 99 -37
		mu 0 3 38 33 36
		f 3 -40 -21 -39
		mu 0 3 37 29 25
		f 3 -83 -13 -41
		mu 0 3 39 23 29
		f 3 100 -94 -43
		mu 0 3 8 20 32
		f 3 -48 101 102
		mu 0 3 40 18 6
		f 3 -84 -103 103
		mu 0 3 23 40 6
		f 3 -42 -104 104
		mu 0 3 8 23 6
		f 3 105 -80 -46
		mu 0 3 43 40 19
		f 3 -50 106 107
		mu 0 3 43 41 7
		f 3 -106 -108 -49
		mu 0 3 40 43 7
		f 3 -60 108 109
		mu 0 3 44 16 2
		f 3 110 -52 -110
		mu 0 3 2 41 44
		f 3 -65 111 -55
		mu 0 3 46 50 49
		f 3 -53 112 -58
		mu 0 3 48 49 44
		f 3 -113 -63 -61
		mu 0 3 44 49 47
		f 3 113 114 115
		mu 0 3 50 45 5
		f 3 -112 -116 -64
		mu 0 3 49 50 5
		f 3 -76 116 -67
		mu 0 3 53 55 50
		f 3 117 -69 118
		mu 0 3 15 54 51
		f 3 119 120 121
		mu 0 3 56 15 4
		f 3 122 -73 -122
		mu 0 3 4 52 56
		f 3 123 -121 -119
		mu 0 3 51 4 15
		f 3 -114 -117 124
		mu 0 3 45 50 55
		f 3 -75 125 -125
		mu 0 3 55 3 45
		f 3 126 127 128
		mu 0 3 57 58 59
		f 3 129 130 131
		mu 0 3 60 61 62
		f 3 132 133 134
		mu 0 3 63 64 65
		f 3 135 136 137
		mu 0 3 66 67 68
		f 3 138 139 140
		mu 0 3 69 70 71
		f 3 141 142 143
		mu 0 3 72 73 74
		f 3 144 145 146
		mu 0 3 70 72 68
		f 3 147 148 149
		mu 0 3 75 76 71
		f 3 -148 150 151
		mu 0 3 76 75 77
		f 3 152 -152 153
		mu 0 3 69 76 77
		f 3 154 155 156
		mu 0 3 78 79 80
		f 3 -156 157 158
		mu 0 3 80 79 81
		f 3 159 160 161
		mu 0 3 82 80 83
		f 3 162 163 164
		mu 0 3 84 83 85
		f 3 165 -164 166
		mu 0 3 86 85 83
		f 3 167 168 169
		mu 0 3 60 87 88
		f 3 170 -158 171
		mu 0 3 88 81 79
		f 3 172 173 174
		mu 0 3 89 90 91
		f 3 175 176 177
		mu 0 3 92 93 94
		f 3 178 179 180
		mu 0 3 95 65 96
		f 3 181 182 183
		mu 0 3 97 98 99
		f 3 184 185 186
		mu 0 3 100 91 101
		f 3 187 188 189
		mu 0 3 102 103 104
		f 3 190 191 192
		mu 0 3 92 105 106
		f 3 193 194 195
		mu 0 3 107 97 93
		f 3 196 197 198
		mu 0 3 107 106 108
		f 3 199 -189 200
		mu 0 3 109 104 103
		f 3 -198 -192 201
		mu 0 3 108 106 105
		f 3 202 203 204
		mu 0 3 110 108 103
		f 3 205 206 207
		mu 0 3 57 111 112
		f 3 208 209 -207
		mu 0 3 111 113 112
		f 3 210 211 212
		mu 0 3 58 114 115
		f 3 -209 213 214
		mu 0 3 113 111 59
		f 3 215 216 217
		mu 0 3 116 117 115
		f 3 218 219 220
		mu 0 3 114 118 119
		f 3 -214 -206 -129
		mu 0 3 59 111 57
		f 3 221 -168 -132
		mu 0 3 62 87 60
		f 3 -179 222 -135
		mu 0 3 65 95 63
		f 3 -149 -153 -141
		mu 0 3 71 76 69
		f 3 223 224 225
		mu 0 3 120 121 74
		f 3 -138 -146 226
		mu 0 3 66 68 72
		f 3 -144 227 -227
		mu 0 3 72 74 66
		f 3 -143 228 -226
		mu 0 3 74 73 120
		f 3 229 -140 -147
		mu 0 3 68 71 70
		f 3 -230 -137 230
		mu 0 3 71 68 67
		f 3 231 -150 -231
		mu 0 3 67 75 71
		f 3 232 -133 233
		mu 0 3 77 64 63
		f 3 234 -154 -234
		mu 0 3 63 69 77
		f 3 -160 235 -157
		mu 0 3 80 82 78
		f 3 -167 -161 236
		mu 0 3 86 83 80
		f 3 -159 237 -237
		mu 0 3 80 81 86
		f 3 -163 238 -162
		mu 0 3 83 84 82
		f 3 -224 239 240
		mu 0 3 121 120 84
		f 3 241 -241 -165
		mu 0 3 85 121 84
		f 3 -172 -155 242
		mu 0 3 88 79 78
		f 3 -243 243 -170
		mu 0 3 88 78 60
		f 3 -185 244 -175
		mu 0 3 91 100 89
		f 3 245 246 -183
		mu 0 3 98 122 99
		f 3 -247 247 248
		mu 0 3 99 122 95
		f 3 249 -249 -181
		mu 0 3 96 99 95
		f 3 -177 -195 250
		mu 0 3 94 93 97
		f 3 -184 251 -251
		mu 0 3 97 99 94
		f 3 252 253 -131
		mu 0 3 61 123 62
		f 3 -254 254 255
		mu 0 3 62 123 100
		f 3 256 -256 -187
		mu 0 3 101 62 100
		f 3 257 258 259
		mu 0 3 124 125 102
		f 3 260 -260 -190
		mu 0 3 104 124 102
		f 3 261 -176 -193
		mu 0 3 106 93 92
		f 3 -262 -197 -196
		mu 0 3 93 106 107
		f 3 -203 262 -199
		mu 0 3 108 110 107
		f 3 -201 -204 263
		mu 0 3 109 103 108
		f 3 -202 264 -264
		mu 0 3 108 105 109
		f 3 -188 265 -205
		mu 0 3 103 102 110
		f 3 266 -173 267
		mu 0 3 112 90 89
		f 3 268 -208 -268
		mu 0 3 89 57 112
		f 3 269 -128 -213
		mu 0 3 115 59 58
		f 3 -270 -217 270
		mu 0 3 59 115 117
		f 3 -271 271 -215
		mu 0 3 59 117 113
		f 3 -258 272 273
		mu 0 3 125 124 119
		f 3 -218 -212 274
		mu 0 3 116 115 114
		f 3 275 -275 -221
		mu 0 3 119 116 114
		f 3 -220 276 -274
		mu 0 3 119 118 125;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim_Char_x_12_1" -p "Numbers";
	rename -uid "7276B26B-4E46-9203-3FB2-CEA2C40806F8";
	setAttr ".t" -type "double3" -6.2403066529585089 -2.3885293508133127 -4.4408920985006262e-016 ;
	setAttr ".s" -type "double3" 2.078868442930534 2.078868442930534 2.078868442930534 ;
	setAttr ".rp" -type "double3" 11.57721192724434 4.6913371449112073 0 ;
	setAttr ".sp" -type "double3" 5.5689969062805176 2.2566782236099243 0 ;
	setAttr ".spt" -type "double3" 6.0082150209638225 2.4346589213012826 0 ;
createNode mesh -n "Trim_Char_x_12_1Shape" -p "Trim_Char_x_12_1";
	rename -uid "A2B33E04-4E74-A5A9-B768-8AA2F2F11D8E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 114 ".uvst[0].uvsp[0:113]" -type "float2" 0.028089888 0.86127168
		 0.044943821 0.026734104 0.37078652 0.49771228 0.34443197 0.84936863 0.22101685 0.8836695
		 0.37233496 0.65224147 0.36934379 0.12608618 0.37370497 0.26798517 0.36941862 0.11569954
		 0.044943821 1.1539421e-016 1 0 1 0.026734104 0.6797753 1 0.67812806 0.21165624 0.6179775
		 1 0 0.88367051 0.37078753 0.5 0.6797753 0.5 0.37364852 0.25 0.67850763 0.25 0.36746991
		 0.094564632 0.68454438 0.094564632 0.5 1.1539421e-016 0.5 0.094564632 0.31131503
		 0.047282316 0.5 0.047282316 0.25 0.034565814 0.25 1.1539421e-016 0.35461265 0.070923477
		 0.5 0.070923477 0.375 0.047282316 0.375 0.070923477 0.375 0.094564632 0.73830086
		 0.047282316 0.75 0 0.75 0.043828312 0.69650978 0.070923477 0.625 0.070923477 0.625
		 0.047282316 0.625 0.094564632 0.5 0.25 0.37239531 0.375 0.6797753 0.375 0.5 0.375
		 0.5 0.5 0.36969247 0.75 0.6797753 0.75 0.37220755 0.625 0.6797753 0.625 0.5 0.625
		 0.5 0.75 0.11219173 0.875 0.29683575 0.875 0.6797753 0.875 0.010873505 0.875 0.5
		 0.875 0.5 0.97779167 0.6797753 0.875 0.6797753 1 0.6179775 1 0.5 0.375 0.6797753
		 0.375 0.6797753 0.5 0.625 0.094564632 0.68454438 0.094564632 0.67812806 0.21165624
		 0.625 0.070923477 0.375 0.070923477 0.5 0.070923477 0.5 0.094564632 0.5 0 0.5 0.047282316
		 0.375 0.047282316 0.044943821 0.026734104 0.044943821 0 0.25 0 0.35461265 0.070923477
		 0.31131503 0.047282316 0.36746991 0.094564632 0.75 0 1 0 1 0.026734104 0.73830086
		 0.047282316 0.625 0.047282316 0.69650978 0.070923477 0.36941862 0.11569954 0.375
		 0.094564632 0.67850763 0.25 0.37370497 0.26798517 0.37364852 0.25 0.5 0.25 0.37239531
		 0.375 0.5 0.5 0.5 0.625 0.6797753 0.625 0.6797753 0.75 0.37220755 0.625 0.37078753
		 0.5 0.37233496 0.65224147 0.5 0.75 0.028089888 0.86127168 0.11219173 0.875 0.010873505
		 0.875 0.29683575 0.875 0.5 0.875 0.5 0.97779167 0.34443197 0.84936863 0.25 0.034565814
		 0.75 0.043828312 0.36934379 0.12608618 0.37078652 0.49771228 0.36969247 0.75 0 0.88367051
		 0.22101685 0.8836695;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 114 ".vt[0:113]"  5.39174271 2.37268209 0 5.39383125 2.1047132 0
		 5.43420744 2.25594354 0 5.43092108 2.36885524 0 5.41564465 2.38014317 0 5.43438053 2.30556273 0
		 5.43411636 2.13661242 0 5.43456173 2.1821785 0 5.43401527 2.13328052 0 5.39383125 2.096128941 0
		 5.51215458 2.096128941 0 5.51215458 2.1047132 0 5.47248173 2.41722751 0 5.47228432 2.16409135 0
		 5.46482563 2.41722751 0 5.38826275 2.37987423 0 5.43420839 2.2566781 0 5.47243071 2.25667834 0
		 5.43455505 2.17640352 0 5.47231007 2.17640352 0 5.43369246 2.12650013 0 5.47312927 2.12649798 0
		 5.45020866 2.096128941 0 5.45020866 2.12649345 0 5.42685223 2.11128759 0 5.45020866 2.1113112 0
		 5.41925764 2.10716343 0 5.41923571 2.096128941 0 5.43217564 2.11891031 0 5.45020866 2.11890244 0
		 5.43472242 2.1113112 0 5.43472242 2.11890244 0 5.43472242 2.12649345 0 5.47979879 2.11138916 0
		 5.4811821 2.096128941 0 5.48123598 2.11027956 0 5.47459316 2.11891651 0 5.46569538 2.11890244 0
		 5.46569538 2.1113112 0 5.46569538 2.12649345 0 5.45020866 2.17640352 0 5.4343996 2.21654081 0
		 5.47238255 2.21654105 0 5.45020866 2.21654081 0 5.45020866 2.2566781 0 5.43414783 2.33695364 0
		 5.47247505 2.33695292 0 5.43436909 2.29681563 0 5.47245979 2.29681563 0 5.45020866 2.29681563 0
		 5.45020866 2.33695292 0 5.40211868 2.37720633 0 5.42516994 2.37726593 0 5.47248077 2.37709022 0
		 5.38960981 2.37709022 0 5.45020866 2.37709022 0 5.45020866 2.41009641 0 5.62931871 2.37268209 0
		 5.63140678 2.1047132 0 5.67178345 2.25594354 0 5.66849709 2.36885524 0 5.65322113 2.38014317 0
		 5.67195654 2.30556273 0 5.67169189 2.13661242 0 5.67213726 2.1821785 0 5.67159081 2.13328052 0
		 5.63140678 2.096128941 0 5.74973106 2.096128941 0 5.74973106 2.1047132 0 5.71005726 2.41722751 0
		 5.70985985 2.16409135 0 5.70240116 2.41722751 0 5.62583828 2.37987423 0 5.6717844 2.2566781 0
		 5.71000671 2.25667834 0 5.67213058 2.17640352 0 5.7098856 2.17640352 0 5.67126846 2.12650013 0
		 5.71070528 2.12649798 0 5.68778467 2.096128941 0 5.68778467 2.12649345 0 5.66442823 2.11128759 0
		 5.68778467 2.1113112 0 5.65683365 2.10716343 0 5.65681171 2.096128941 0 5.66975164 2.11891031 0
		 5.68778467 2.11890244 0 5.67229843 2.1113112 0 5.67229843 2.11890244 0 5.67229843 2.12649345 0
		 5.7173748 2.11138916 0 5.71875763 2.096128941 0 5.71881199 2.11027956 0 5.71216917 2.11891651 0
		 5.70327091 2.11890244 0 5.70327091 2.1113112 0 5.70327091 2.12649345 0 5.68778467 2.17640352 0
		 5.67197514 2.21654081 0 5.70995808 2.21654105 0 5.68778467 2.21654081 0 5.68778467 2.2566781 0
		 5.67172337 2.33695364 0 5.71005106 2.33695292 0 5.67194462 2.29681563 0 5.7100358 2.29681563 0
		 5.68778467 2.29681563 0 5.68778467 2.33695292 0 5.63969469 2.37720633 0 5.66274595 2.37726593 0
		 5.71005678 2.37709022 0 5.62718582 2.37709022 0 5.68778467 2.37709022 0 5.68778467 2.41009641 0;
	setAttr -s 252 ".ed";
	setAttr ".ed[0:165]"  53 12 0 12 14 0 14 53 1 43 42 1 42 17 0 17 43 1 39 21 1
		 21 13 0 13 39 1 39 37 1 37 21 1 31 29 1 29 23 1 23 31 1 22 25 1 25 30 1 30 22 1 1 9 0
		 9 27 0 27 1 1 25 29 1 29 30 1 28 24 0 24 30 1 30 28 1 20 28 0 28 31 1 31 20 1 34 10 0
		 10 11 0 11 34 1 34 33 1 33 38 1 38 34 1 36 37 1 37 38 1 38 36 1 25 38 1 37 25 1 29 37 1
		 39 29 1 23 8 1 8 32 1 32 23 1 19 42 0 43 19 1 7 18 0 18 40 1 40 7 1 41 43 1 43 44 1
		 44 41 1 49 48 1 48 46 0 46 49 1 44 17 1 17 48 0 48 44 1 47 16 0 16 44 1 44 47 1 5 47 0
		 47 49 1 49 5 1 50 46 1 46 53 0 53 50 1 0 51 0 51 54 1 54 0 0 52 55 1 55 56 1 56 52 1
		 52 3 0 3 55 1 55 53 1 53 56 1 14 56 0 13 19 0 19 40 1 40 13 1 13 23 1 23 39 1 40 23 1
		 36 21 0 32 31 1 24 26 0 26 30 1 26 27 1 27 22 0 22 26 1 26 1 0 31 30 1 32 20 1 11 35 0
		 35 34 1 35 33 0 22 38 1 22 34 0 33 36 0 8 20 0 18 6 0 6 40 1 6 23 1 6 8 0 43 40 1
		 41 7 0 7 43 1 16 2 0 2 44 1 2 41 0 50 49 1 49 44 1 50 45 1 45 5 0 5 50 1 55 50 1
		 15 54 0 51 15 1 56 15 0 15 4 1 4 56 1 4 52 0 51 4 0 55 45 1 3 45 0 110 69 0 69 71 0
		 71 110 1 100 99 1 99 74 0 74 100 1 96 78 1 78 70 0 70 96 1 96 94 1 94 78 1 88 86 1
		 86 80 1 80 88 1 79 82 1 82 87 1 87 79 1 58 66 0 66 84 0 84 58 1 82 86 1 86 87 1 85 81 0
		 81 87 1 87 85 1 77 85 0 85 88 1 88 77 1 91 67 0 67 68 0 68 91 1 91 90 1 90 95 1 95 91 1
		 93 94 1 94 95 1 95 93 1 82 95 1 94 82 1 86 94 1;
	setAttr ".ed[166:251]" 96 86 1 80 65 1 65 89 1 89 80 1 76 99 0 100 76 1 64 75 0
		 75 97 1 97 64 1 98 100 1 100 101 1 101 98 1 106 105 1 105 103 0 103 106 1 101 74 1
		 74 105 0 105 101 1 104 73 0 73 101 1 101 104 1 62 104 0 104 106 1 106 62 1 107 103 1
		 103 110 0 110 107 1 57 108 0 108 111 1 111 57 0 109 112 1 112 113 1 113 109 1 109 60 0
		 60 112 1 112 110 1 110 113 1 71 113 0 70 76 0 76 97 1 97 70 1 70 80 1 80 96 1 97 80 1
		 93 78 0 89 88 1 81 83 0 83 87 1 83 84 1 84 79 0 79 83 1 83 58 0 88 87 1 89 77 1 68 92 0
		 92 91 1 92 90 0 79 95 1 79 91 0 90 93 0 65 77 0 75 63 0 63 97 1 63 80 1 63 65 0 100 97 1
		 98 64 0 64 100 1 73 59 0 59 101 1 59 98 0 107 106 1 106 101 1 107 102 1 102 62 0
		 62 107 1 112 107 1 72 111 0 108 72 1 113 72 0 72 61 1 61 113 1 61 109 0 108 61 0
		 112 102 1 60 102 0;
	setAttr -s 140 -ch 420 ".fc[0:139]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 53 12 14
		f 3 3 4 5
		mu 0 3 43 42 17
		f 3 6 7 8
		mu 0 3 39 21 13
		f 3 -7 9 10
		mu 0 3 21 39 37
		f 3 11 12 13
		mu 0 3 31 29 23
		f 3 14 15 16
		mu 0 3 22 25 30
		f 3 17 18 19
		mu 0 3 1 9 27
		f 3 -16 20 21
		mu 0 3 30 25 29
		f 3 22 23 24
		mu 0 3 28 24 30
		f 3 25 26 27
		mu 0 3 20 28 31
		f 3 28 29 30
		mu 0 3 34 10 11
		f 3 31 32 33
		mu 0 3 34 33 38
		f 3 34 35 36
		mu 0 3 36 37 38
		f 3 37 -36 38
		mu 0 3 25 38 37
		f 3 39 -10 40
		mu 0 3 29 37 39
		f 3 41 42 43
		mu 0 3 23 8 32
		f 3 44 -4 45
		mu 0 3 19 42 43
		f 3 46 47 48
		mu 0 3 7 18 40
		f 3 49 50 51
		mu 0 3 41 43 44
		f 3 52 53 54
		mu 0 3 49 48 46
		f 3 55 56 57
		mu 0 3 44 17 48
		f 3 58 59 60
		mu 0 3 47 16 44
		f 3 61 62 63
		mu 0 3 5 47 49
		f 3 64 65 66
		mu 0 3 50 46 53
		f 3 67 68 69
		mu 0 3 0 51 54
		f 3 70 71 72
		mu 0 3 52 55 56
		f 3 -71 73 74
		mu 0 3 55 52 3
		f 3 -72 75 76
		mu 0 3 56 55 53
		f 3 77 -77 -3
		mu 0 3 14 56 53
		f 3 -56 -51 -6
		mu 0 3 17 44 43
		f 3 78 79 80
		mu 0 3 13 19 40
		f 3 81 82 -9
		mu 0 3 13 23 39
		f 3 83 -82 -81
		mu 0 3 40 23 13
		f 3 -35 84 -11
		mu 0 3 37 36 21
		f 3 -44 85 -14
		mu 0 3 23 32 31
		f 3 -24 86 87
		mu 0 3 30 24 26
		f 3 88 89 90
		mu 0 3 26 27 22
		f 3 -17 -88 -91
		mu 0 3 22 30 26
		f 3 -89 91 -20
		mu 0 3 27 26 1
		f 3 -12 92 -22
		mu 0 3 29 31 30
		f 3 -93 -27 -25
		mu 0 3 30 31 28
		f 3 -86 93 -28
		mu 0 3 31 32 20
		f 3 94 95 -31
		mu 0 3 11 35 34
		f 3 -96 96 -32
		mu 0 3 34 35 33
		f 3 -38 -15 97
		mu 0 3 38 25 22
		f 3 -98 98 -34
		mu 0 3 38 22 34
		f 3 -33 99 -37
		mu 0 3 38 33 36
		f 3 -40 -21 -39
		mu 0 3 37 29 25
		f 3 -83 -13 -41
		mu 0 3 39 23 29
		f 3 100 -94 -43
		mu 0 3 8 20 32
		f 3 -48 101 102
		mu 0 3 40 18 6
		f 3 -84 -103 103
		mu 0 3 23 40 6
		f 3 -42 -104 104
		mu 0 3 8 23 6
		f 3 105 -80 -46
		mu 0 3 43 40 19
		f 3 -50 106 107
		mu 0 3 43 41 7
		f 3 -106 -108 -49
		mu 0 3 40 43 7
		f 3 -60 108 109
		mu 0 3 44 16 2
		f 3 110 -52 -110
		mu 0 3 2 41 44
		f 3 -65 111 -55
		mu 0 3 46 50 49
		f 3 -53 112 -58
		mu 0 3 48 49 44
		f 3 -113 -63 -61
		mu 0 3 44 49 47
		f 3 113 114 115
		mu 0 3 50 45 5
		f 3 -112 -116 -64
		mu 0 3 49 50 5
		f 3 -76 116 -67
		mu 0 3 53 55 50
		f 3 117 -69 118
		mu 0 3 15 54 51
		f 3 119 120 121
		mu 0 3 56 15 4
		f 3 122 -73 -122
		mu 0 3 4 52 56
		f 3 123 -121 -119
		mu 0 3 51 4 15
		f 3 -114 -117 124
		mu 0 3 45 50 55
		f 3 -75 125 -125
		mu 0 3 55 3 45
		f 3 126 127 128
		mu 0 3 57 58 59
		f 3 129 130 131
		mu 0 3 60 61 62
		f 3 132 133 134
		mu 0 3 63 64 65
		f 3 -133 135 136
		mu 0 3 64 63 66
		f 3 137 138 139
		mu 0 3 67 68 69
		f 3 140 141 142
		mu 0 3 70 71 72
		f 3 143 144 145
		mu 0 3 73 74 75
		f 3 -142 146 147
		mu 0 3 72 71 68
		f 3 148 149 150
		mu 0 3 76 77 72
		f 3 151 152 153
		mu 0 3 78 76 67
		f 3 154 155 156
		mu 0 3 79 80 81
		f 3 157 158 159
		mu 0 3 79 82 83
		f 3 160 161 162
		mu 0 3 84 66 83
		f 3 163 -162 164
		mu 0 3 71 83 66
		f 3 165 -136 166
		mu 0 3 68 66 63
		f 3 167 168 169
		mu 0 3 69 85 86
		f 3 170 -130 171
		mu 0 3 87 61 60
		f 3 172 173 174
		mu 0 3 88 89 90
		f 3 175 176 177
		mu 0 3 91 60 92
		f 3 178 179 180
		mu 0 3 93 94 95
		f 3 181 182 183
		mu 0 3 92 62 94
		f 3 184 185 186
		mu 0 3 96 97 92
		f 3 187 188 189
		mu 0 3 98 96 93
		f 3 190 191 192
		mu 0 3 99 95 57
		f 3 193 194 195
		mu 0 3 100 101 102
		f 3 196 197 198
		mu 0 3 103 104 105
		f 3 -197 199 200
		mu 0 3 104 103 106
		f 3 -198 201 202
		mu 0 3 105 104 57
		f 3 203 -203 -129
		mu 0 3 59 105 57
		f 3 -182 -177 -132
		mu 0 3 62 92 60
		f 3 204 205 206
		mu 0 3 65 87 90
		f 3 207 208 -135
		mu 0 3 65 69 63
		f 3 209 -208 -207
		mu 0 3 90 69 65
		f 3 -161 210 -137
		mu 0 3 66 84 64
		f 3 -170 211 -140
		mu 0 3 69 86 67
		f 3 -150 212 213
		mu 0 3 72 77 107
		f 3 214 215 216
		mu 0 3 107 75 70
		f 3 -143 -214 -217
		mu 0 3 70 72 107
		f 3 -215 217 -146
		mu 0 3 75 107 73
		f 3 -138 218 -148
		mu 0 3 68 67 72
		f 3 -219 -153 -151
		mu 0 3 72 67 76
		f 3 -212 219 -154
		mu 0 3 67 86 78
		f 3 220 221 -157
		mu 0 3 81 108 79
		f 3 -222 222 -158
		mu 0 3 79 108 82
		f 3 -164 -141 223
		mu 0 3 83 71 70
		f 3 -224 224 -160
		mu 0 3 83 70 79
		f 3 -159 225 -163
		mu 0 3 83 82 84
		f 3 -166 -147 -165
		mu 0 3 66 68 71
		f 3 -209 -139 -167
		mu 0 3 63 69 68
		f 3 226 -220 -169
		mu 0 3 85 78 86
		f 3 -174 227 228
		mu 0 3 90 89 109
		f 3 -210 -229 229
		mu 0 3 69 90 109
		f 3 -168 -230 230
		mu 0 3 85 69 109
		f 3 231 -206 -172
		mu 0 3 60 90 87
		f 3 -176 232 233
		mu 0 3 60 91 88
		f 3 -232 -234 -175
		mu 0 3 90 60 88
		f 3 -186 234 235
		mu 0 3 92 97 110
		f 3 236 -178 -236
		mu 0 3 110 91 92
		f 3 -191 237 -181
		mu 0 3 95 99 93
		f 3 -179 238 -184
		mu 0 3 94 93 92
		f 3 -239 -189 -187
		mu 0 3 92 93 96
		f 3 239 240 241
		mu 0 3 99 111 98
		f 3 -238 -242 -190
		mu 0 3 93 99 98
		f 3 -202 242 -193
		mu 0 3 57 104 99
		f 3 243 -195 244
		mu 0 3 112 102 101
		f 3 245 246 247
		mu 0 3 105 112 113
		f 3 248 -199 -248
		mu 0 3 113 103 105
		f 3 249 -247 -245
		mu 0 3 101 113 112
		f 3 -240 -243 250
		mu 0 3 111 99 104
		f 3 -201 251 -251
		mu 0 3 104 106 111;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim_Char_x_14_1" -p "Numbers";
	rename -uid "F737A595-4CCB-EE27-6FBB-2C9D48E1473A";
	setAttr ".t" -type "double3" -6.3742527486170246 -2.0829852957813477 -4.4408920985006262e-016 ;
	setAttr ".s" -type "double3" 2.078868442930534 2.078868442930534 2.078868442930534 ;
	setAttr ".rp" -type "double3" 12.851724643624237 4.6914070302725097 0 ;
	setAttr ".sp" -type "double3" 6.1820769309997559 2.2567118406295776 0 ;
	setAttr ".spt" -type "double3" 6.6696477126244806 2.4346951896429316 0 ;
createNode mesh -n "Trim_Char_x_14_1Shape" -p "Trim_Char_x_14_1";
	rename -uid "0536C13A-43D9-FC6F-F7C8-1A90E13BC2FA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 119 ".uvst[0].uvsp[0:118]" -type "float2" 0.028089888 0.86127168
		 0.044943821 0.026734104 0.37078652 0.49771228 0.34443197 0.84936863 0.22101685 0.8836695
		 0.37233496 0.65224147 0.36934379 0.12608618 0.37370497 0.26798517 0.36941862 0.11569954
		 0.044943821 0 1 0 1 0.026734104 0.6797753 1 0.67812806 0.21165624 0.6179775 1 0 0.88367051
		 0.37078753 0.5 0.6797753 0.5 0.37364852 0.25 0.67850763 0.25 0.36746991 0.094564632
		 0.68454438 0.094564632 0.5 0 0.5 0.094564632 0.31131503 0.047282316 0.5 0.047282316
		 0.25 0.034565814 0.25 0 0.35461265 0.07092347 0.5 0.07092347 0.375 0.047282316 0.375
		 0.07092347 0.375 0.094564632 0.73830086 0.047282316 0.75 0 0.75 0.043828312 0.69650978
		 0.07092347 0.625 0.07092347 0.625 0.047282316 0.625 0.094564632 0.5 0.25 0.37239531
		 0.375 0.6797753 0.375 0.5 0.375 0.5 0.5 0.36969247 0.75 0.6797753 0.75 0.37220755
		 0.625 0.6797753 0.625 0.5 0.625 0.5 0.75 0.11219173 0.875 0.29683575 0.875 0.6797753
		 0.875 0.010873505 0.875 0.5 0.875 0.5 0.97779167 0.86331427 0.85714287 0.75 0.9430421
		 0.75 0.9285714 0.5 0.35905886 0.5 0.2857886 0.69366008 0.42857143 0.40411311 0.2857143
		 0.5 0.10847594 0.25 0.10906995 0.25 1.3707468e-016 0.25 0.14285715 0.19143282 0.14285715
		 0.23798883 0.10907328 0.29329997 0.14285715 0.49989507 0.2857143 0.25 0.18026903
		 0.75 0.11104821 0.75 0 0.89385474 0 0.51805246 0.10846879 0.5 0 0.95865923 0.18853064
		 0.89990789 0.14285715 0.97428524 0.14285715 0.83690208 0.5714286 0.90585804 0.71428573
		 0.75 0.71428573 0.75 0.47772565 0.75 0.5714286 0.68904942 0.5714286 0.71781212 0.67885739
		 0.41447854 0.8896634 0.5 0.88143599 0.5 0.9285714 0.12984578 0.78571427 0.23870166
		 0.85714287 0.125 0.85714287 0.125 0.7805416 0.125 0.78571427 0.063268475 0.78571427
		 0.043575417 0.72306198 0.084916204 0.72306198 0.10610764 0.85714287 0.25 0.96070868
		 0.90792853 0.74141151 0.75 0.78571427 0.75 0.85714287 0.625 0.85714287 0.625 0.83121336
		 0.71399271 0.71428573 0.57749212 0.85714287 0.625 0.98499823 0.625 0.9285714 0.5
		 0.99967259 0.25 0.11615998 0.57867861 0.42857143 0 0.026726566 0 1.3707468e-016 1
		 0.18853064 0.25 0.86145693 0.47777444 1 0.677513 0.78571427;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 119 ".vt[0:118]"  5.98568249 2.37268209 0 5.98777056 2.1047132 0
		 6.028146744 2.25594354 0 6.024860382 2.36885524 0 6.0095844269 2.38014317 0 6.028320313 2.30556273 0
		 6.028055668 2.13661242 0 6.028501511 2.1821785 0 6.027955055 2.13328052 0 5.98777056 2.096128941 0
		 6.10609436 2.096128941 0 6.10609436 2.1047132 0 6.066421032 2.41722751 0 6.066224098 2.16409135 0
		 6.058764935 2.41722751 0 5.98220253 2.37987423 0 6.028148174 2.2566781 0 6.06637001 2.25667834 0
		 6.028494358 2.17640352 0 6.066249371 2.17640352 0 6.02763176 2.12650013 0 6.067069054 2.12649798 0
		 6.044148445 2.096128941 0 6.044148445 2.12649345 0 6.020792007 2.11128759 0 6.044148445 2.1113112 0
		 6.013196945 2.10716343 0 6.013175011 2.096128941 0 6.026115417 2.11891031 0 6.044148445 2.11890244 0
		 6.028661728 2.1113112 0 6.028661728 2.11890244 0 6.028661728 2.12649345 0 6.073738575 2.11138916 0
		 6.075121403 2.096128941 0 6.075175285 2.11027956 0 6.068532944 2.11891651 0 6.059635162 2.11890244 0
		 6.059635162 2.1113112 0 6.059635162 2.12649345 0 6.044148445 2.17640352 0 6.028339386 2.21654081 0
		 6.06632185 2.21654105 0 6.044148445 2.21654081 0 6.044148445 2.2566781 0 6.028087616 2.33695364 0
		 6.066414833 2.33695292 0 6.028308392 2.29681563 0 6.066399574 2.29681563 0 6.044148445 2.29681563 0
		 6.044148445 2.33695292 0 5.99605846 2.37720633 0 6.019109726 2.37726593 0 6.066420555 2.37709022 0
		 5.98354912 2.37709022 0 6.044148445 2.37709022 0 6.044148445 2.41009641 0 6.37336731 2.15668297 0
		 6.22372246 2.13116217 0 6.28187656 2.13096738 0 6.18335295 2.32836866 0 6.36282539 2.33426237 0
		 6.27351284 2.41729474 0 6.19193745 2.32836866 0 6.17430449 2.1047132 0 6.26036978 2.38186717 0
		 6.32335711 2.3141706 0 6.17430449 2.096128941 0 6.35991096 2.096128941 0 6.38195133 2.15668297 0
		 6.31833839 2.23378348 0 6.29415607 2.23398662 0 6.27812815 2.13096976 0 6.27821064 2.18784571 0
		 6.27794218 2.21159983 0 6.27812815 2.096128941 0 6.23506737 2.14215207 0 6.21410942 2.14195752 0
		 6.22621632 2.13116097 0 6.22620106 2.13345456 0 6.22621632 2.14201307 0 6.22621632 2.096128941 0
		 6.27818871 2.18782187 0 6.25821304 2.18790126 0 6.22627544 2.15397024 0 6.36113167 2.14205861 0
		 6.37661171 2.14201307 0 6.33006096 2.13150477 0 6.33003998 2.096128941 0 6.3623848 2.32555151 0
		 6.32256317 2.32554984 0 6.34809971 2.27965832 0 6.31738377 2.27966547 0 6.33004475 2.24956584 0
		 6.33003998 2.27966547 0 6.33003998 2.32554984 0 6.27812624 2.41717672 0 6.27812576 2.37922978 0
		 6.19631672 2.3714447 0 6.22387028 2.37143397 0 6.18743277 2.34849453 0 6.20126629 2.34849215 0
		 6.20026016 2.34683061 0 6.20026016 2.34849191 0 6.20026016 2.37143397 0 6.22622061 2.4046917 0
		 6.22621632 2.37281966 0 6.35383606 2.37157297 0 6.29422235 2.37143874 0 6.33003998 2.37143397 0
		 6.31494999 2.34847069 0 6.33003998 2.34849191 0 6.30408382 2.37143397 0 6.30410004 2.36312151 0
		 6.33010674 2.39911461 0 6.27812815 2.39437604 0 6.33003998 2.39437604 0 6.30408382 2.39437604 0
		 6.30406189 2.41243172 0;
	setAttr -s 258 ".ed";
	setAttr ".ed[0:165]"  53 12 0 12 14 0 14 53 1 43 42 1 42 17 0 17 43 1 39 21 1
		 21 13 0 13 39 1 39 37 1 37 21 1 31 29 1 29 23 1 23 31 1 22 25 1 25 30 1 30 22 1 1 9 0
		 9 27 0 27 1 1 25 29 1 29 30 1 28 24 0 24 30 1 30 28 1 20 28 0 28 31 1 31 20 1 34 10 0
		 10 11 0 11 34 1 34 33 1 33 38 1 38 34 1 36 37 1 37 38 1 38 36 1 25 38 1 37 25 1 29 37 1
		 39 29 1 23 8 1 8 32 1 32 23 1 19 42 0 43 19 1 7 18 0 18 40 1 40 7 1 41 43 1 43 44 1
		 44 41 1 49 48 1 48 46 0 46 49 1 44 17 1 17 48 0 48 44 1 47 16 0 16 44 1 44 47 1 5 47 0
		 47 49 1 49 5 1 50 46 1 46 53 0 53 50 1 0 51 0 51 54 1 54 0 0 52 55 1 55 56 1 56 52 1
		 52 3 0 3 55 1 55 53 1 53 56 1 14 56 0 13 19 0 19 40 1 40 13 1 13 23 1 23 39 1 40 23 1
		 36 21 0 32 31 1 24 26 0 26 30 1 26 27 1 27 22 0 22 26 1 26 1 0 31 30 1 32 20 1 11 35 0
		 35 34 1 35 33 0 22 38 1 22 34 0 33 36 0 8 20 0 18 6 0 6 40 1 6 23 1 6 8 0 43 40 1
		 41 7 0 7 43 1 16 2 0 2 44 1 2 41 0 50 49 1 49 44 1 50 45 1 45 5 0 5 50 1 55 50 1
		 15 54 0 51 15 1 56 15 0 15 4 1 4 56 1 4 52 0 51 4 0 55 45 1 3 45 0 107 114 0 114 116 1
		 116 107 1 74 73 1 73 70 0 70 74 1 74 83 0 83 73 1 72 78 0 78 81 1 81 72 1 80 77 1
		 77 58 1 58 80 1 76 82 0 82 83 1 83 76 1 84 77 0 80 84 1 87 88 1 88 68 0 68 87 1 59 72 0
		 72 75 1 75 59 1 57 85 0 85 86 1 86 57 1 91 89 0 89 95 1 95 91 1 93 91 0 91 94 1 94 93 1
		 94 92 1 92 93 1 66 92 0 94 66 1 65 97 0 97 115 1;
	setAttr ".ed[166:257]" 115 65 1 101 99 0 99 104 1 104 101 1 102 101 0 101 103 1
		 103 102 1 100 60 0 60 63 0 63 100 1 98 100 0 100 103 1 103 98 1 105 98 0 98 104 1
		 104 105 1 61 107 0 107 111 1 111 61 1 109 112 1 112 113 1 113 109 1 90 95 1 95 111 1
		 111 90 1 112 108 1 108 113 0 114 118 0 118 117 1 117 114 1 109 116 1 116 112 1 112 117 1
		 117 108 1 118 96 0 96 115 1 115 118 1 80 79 1 79 76 0 76 80 1 109 107 1 70 71 1 71 74 0
		 82 73 0 81 75 0 64 67 0 67 81 0 81 64 1 58 79 0 77 64 0 64 58 1 78 58 0 58 81 1 76 84 1
		 83 84 0 68 86 0 85 68 1 85 87 0 87 59 0 59 88 1 75 88 0 86 69 0 69 57 0 95 94 1 92 71 0
		 70 92 1 70 93 0 90 66 0 66 95 1 105 106 1 106 65 0 65 105 1 96 62 0 62 115 1 62 65 1
		 62 105 0 104 103 1 100 102 1 63 102 0 99 106 0 105 99 1 109 111 1 89 61 0 61 95 1
		 110 111 1 109 110 1 113 110 0 110 90 0 117 116 1 117 115 1 97 117 1 97 108 0;
	setAttr -s 141 -ch 423 ".fc[0:140]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 53 12 14
		f 3 3 4 5
		mu 0 3 43 42 17
		f 3 6 7 8
		mu 0 3 39 21 13
		f 3 -7 9 10
		mu 0 3 21 39 37
		f 3 11 12 13
		mu 0 3 31 29 23
		f 3 14 15 16
		mu 0 3 22 25 30
		f 3 17 18 19
		mu 0 3 1 9 27
		f 3 -16 20 21
		mu 0 3 30 25 29
		f 3 22 23 24
		mu 0 3 28 24 30
		f 3 25 26 27
		mu 0 3 20 28 31
		f 3 28 29 30
		mu 0 3 34 10 11
		f 3 31 32 33
		mu 0 3 34 33 38
		f 3 34 35 36
		mu 0 3 36 37 38
		f 3 37 -36 38
		mu 0 3 25 38 37
		f 3 39 -10 40
		mu 0 3 29 37 39
		f 3 41 42 43
		mu 0 3 23 8 32
		f 3 44 -4 45
		mu 0 3 19 42 43
		f 3 46 47 48
		mu 0 3 7 18 40
		f 3 49 50 51
		mu 0 3 41 43 44
		f 3 52 53 54
		mu 0 3 49 48 46
		f 3 55 56 57
		mu 0 3 44 17 48
		f 3 58 59 60
		mu 0 3 47 16 44
		f 3 61 62 63
		mu 0 3 5 47 49
		f 3 64 65 66
		mu 0 3 50 46 53
		f 3 67 68 69
		mu 0 3 0 51 54
		f 3 70 71 72
		mu 0 3 52 55 56
		f 3 -71 73 74
		mu 0 3 55 52 3
		f 3 -72 75 76
		mu 0 3 56 55 53
		f 3 77 -77 -3
		mu 0 3 14 56 53
		f 3 -56 -51 -6
		mu 0 3 17 44 43
		f 3 78 79 80
		mu 0 3 13 19 40
		f 3 81 82 -9
		mu 0 3 13 23 39
		f 3 83 -82 -81
		mu 0 3 40 23 13
		f 3 -35 84 -11
		mu 0 3 37 36 21
		f 3 -44 85 -14
		mu 0 3 23 32 31
		f 3 -24 86 87
		mu 0 3 30 24 26
		f 3 88 89 90
		mu 0 3 26 27 22
		f 3 -17 -88 -91
		mu 0 3 22 30 26
		f 3 -89 91 -20
		mu 0 3 27 26 1
		f 3 -12 92 -22
		mu 0 3 29 31 30
		f 3 -93 -27 -25
		mu 0 3 30 31 28
		f 3 -86 93 -28
		mu 0 3 31 32 20
		f 3 94 95 -31
		mu 0 3 11 35 34
		f 3 -96 96 -32
		mu 0 3 34 35 33
		f 3 -38 -15 97
		mu 0 3 38 25 22
		f 3 -98 98 -34
		mu 0 3 38 22 34
		f 3 -33 99 -37
		mu 0 3 38 33 36
		f 3 -40 -21 -39
		mu 0 3 37 29 25
		f 3 -83 -13 -41
		mu 0 3 39 23 29
		f 3 100 -94 -43
		mu 0 3 8 20 32
		f 3 -48 101 102
		mu 0 3 40 18 6
		f 3 -84 -103 103
		mu 0 3 23 40 6
		f 3 -42 -104 104
		mu 0 3 8 23 6
		f 3 105 -80 -46
		mu 0 3 43 40 19
		f 3 -50 106 107
		mu 0 3 43 41 7
		f 3 -106 -108 -49
		mu 0 3 40 43 7
		f 3 -60 108 109
		mu 0 3 44 16 2
		f 3 110 -52 -110
		mu 0 3 2 41 44
		f 3 -65 111 -55
		mu 0 3 46 50 49
		f 3 -53 112 -58
		mu 0 3 48 49 44
		f 3 -113 -63 -61
		mu 0 3 44 49 47
		f 3 113 114 115
		mu 0 3 50 45 5
		f 3 -112 -116 -64
		mu 0 3 49 50 5
		f 3 -76 116 -67
		mu 0 3 53 55 50
		f 3 117 -69 118
		mu 0 3 15 54 51
		f 3 119 120 121
		mu 0 3 56 15 4
		f 3 122 -73 -122
		mu 0 3 4 52 56
		f 3 123 -121 -119
		mu 0 3 51 4 15
		f 3 -114 -117 124
		mu 0 3 45 50 55
		f 3 -75 125 -125
		mu 0 3 55 3 45
		f 3 126 127 128
		mu 0 3 57 58 59
		f 3 129 130 131
		mu 0 3 60 61 62
		f 3 -130 132 133
		mu 0 3 61 60 63
		f 3 134 135 136
		mu 0 3 64 65 66
		f 3 137 138 139
		mu 0 3 67 68 69
		f 3 140 141 142
		mu 0 3 70 71 63
		f 3 143 -138 144
		mu 0 3 72 68 67
		f 3 145 146 147
		mu 0 3 73 74 75
		f 3 148 149 150
		mu 0 3 76 64 77
		f 3 151 152 153
		mu 0 3 78 79 80
		f 3 154 155 156
		mu 0 3 81 82 83
		f 3 157 158 159
		mu 0 3 84 81 85
		f 3 -160 160 161
		mu 0 3 84 85 86
		f 3 162 -161 163
		mu 0 3 87 86 85
		f 3 164 165 166
		mu 0 3 88 89 90
		f 3 167 168 169
		mu 0 3 91 92 93
		f 3 170 171 172
		mu 0 3 94 91 95
		f 3 173 174 175
		mu 0 3 96 97 98
		f 3 176 177 178
		mu 0 3 99 96 95
		f 3 179 180 181
		mu 0 3 100 99 93
		f 3 182 183 184
		mu 0 3 101 57 102
		f 3 185 186 187
		mu 0 3 103 104 105
		f 3 188 189 190
		mu 0 3 106 83 102
		f 3 191 192 -187
		mu 0 3 104 107 105
		f 3 193 194 195
		mu 0 3 58 108 109
		f 3 -186 196 197
		mu 0 3 104 103 59
		f 3 -192 198 199
		mu 0 3 107 104 109
		f 3 200 201 202
		mu 0 3 108 110 90
		f 3 203 204 205
		mu 0 3 67 111 70
		f 3 -197 206 -129
		mu 0 3 59 103 57
		f 3 207 208 -132
		mu 0 3 62 112 60
		f 3 -142 209 -134
		mu 0 3 63 71 61
		f 3 210 -150 -137
		mu 0 3 66 77 64
		f 3 211 212 213
		mu 0 3 113 114 66
		f 3 214 -204 -140
		mu 0 3 69 111 67
		f 3 -139 215 216
		mu 0 3 69 68 113
		f 3 -136 217 218
		mu 0 3 66 65 69
		f 3 -217 -214 -219
		mu 0 3 69 113 66
		f 3 -145 -206 219
		mu 0 3 72 67 70
		f 3 -143 220 -220
		mu 0 3 70 63 72
		f 3 221 -153 222
		mu 0 3 75 80 79
		f 3 -223 223 -148
		mu 0 3 75 79 73
		f 3 -146 224 225
		mu 0 3 74 73 76
		f 3 226 -226 -151
		mu 0 3 77 74 76
		f 3 227 228 -154
		mu 0 3 80 115 78
		f 3 229 -159 -157
		mu 0 3 83 85 81
		f 3 230 -208 231
		mu 0 3 86 112 62
		f 3 -232 232 -162
		mu 0 3 86 62 84
		f 3 -189 233 234
		mu 0 3 83 106 87
		f 3 -164 -230 -235
		mu 0 3 87 85 83
		f 3 235 236 237
		mu 0 3 100 116 88
		f 3 -202 238 239
		mu 0 3 90 110 117
		f 3 240 -167 -240
		mu 0 3 117 88 90
		f 3 -241 241 -238
		mu 0 3 88 117 100
		f 3 242 -172 -170
		mu 0 3 93 95 91
		f 3 -173 -178 243
		mu 0 3 94 95 96
		f 3 -176 244 -244
		mu 0 3 96 98 94
		f 3 -243 -181 -179
		mu 0 3 95 93 99
		f 3 245 -236 246
		mu 0 3 92 116 100
		f 3 -182 -169 -247
		mu 0 3 100 93 92
		f 3 -207 247 -184
		mu 0 3 57 103 102
		f 3 -156 248 249
		mu 0 3 83 82 101
		f 3 -185 -190 -250
		mu 0 3 101 102 83
		f 3 250 -248 251
		mu 0 3 118 102 103
		f 3 252 -252 -188
		mu 0 3 105 118 103
		f 3 -251 253 -191
		mu 0 3 102 118 106
		f 3 254 -128 -196
		mu 0 3 109 59 58
		f 3 -255 -199 -198
		mu 0 3 59 109 104
		f 3 255 -166 256
		mu 0 3 109 90 89
		f 3 -257 257 -200
		mu 0 3 109 89 107
		f 3 -256 -195 -203
		mu 0 3 90 109 108;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim_Char_x_1_1" -p "Numbers";
	rename -uid "D045E8B3-41DF-207C-42B0-0D95326D9930";
	setAttr ".t" -type "double3" 7.3735056437371957 1.9690469365158005 -4.4408920985006262e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.24453287199139603 0.33376085758209234 0 ;
	setAttr ".sp" -type "double3" 0.24453287199139595 0.33376085758209229 0 ;
	setAttr ".spt" -type "double3" 5.5511151231257839e-017 5.5511151231257839e-017 0 ;
createNode mesh -n "Trim_Char_x_1_1Shape" -p "Trim_Char_x_1_1";
	rename -uid "89612AFD-4452-2699-FDD8-9983EB47F4AD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 57 ".uvst[0].uvsp[0:56]" -type "float2" 0.028089888 0.86127168
		 0.044943821 0.026734104 0.37078652 0.49771228 0.34443197 0.84936863 0.22101685 0.8836695
		 0.37233496 0.65224147 0.36934379 0.12608618 0.37370497 0.26798517 0.36941862 0.11569954
		 0.044943821 0 1 0 1 0.026734104 0.6797753 1 0.67812806 0.21165624 0.6179775 1 0 0.88367051
		 0.37078753 0.5 0.6797753 0.5 0.37364852 0.25 0.67850763 0.25 0.36746991 0.094564632
		 0.68454438 0.094564632 0.5 0 0.5 0.094564632 0.31131503 0.047282316 0.5 0.047282316
		 0.25 0.034565814 0.25 0 0.35461265 0.070923477 0.5 0.070923477 0.375 0.047282316
		 0.375 0.070923477 0.375 0.094564632 0.73830086 0.047282316 0.75 0 0.75 0.043828312
		 0.69650978 0.070923477 0.625 0.070923477 0.625 0.047282316 0.625 0.094564632 0.5
		 0.25 0.37239531 0.375 0.6797753 0.375 0.5 0.375 0.5 0.5 0.36969247 0.75 0.6797753
		 0.75 0.37220755 0.625 0.6797753 0.625 0.5 0.625 0.5 0.75 0.11219173 0.875 0.29683575
		 0.875 0.6797753 0.875 0.010873505 0.875 0.5 0.875 0.5 0.97779167;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 57 ".vt[0:56]"  0.12298991 0.57491755 0 0.12733074 0.017845595 0
		 0.21126808 0.33223373 0 0.20443629 0.566962 0 0.17267925 0.59042847 0 0.2116286 0.43538535 0
		 0.21107821 0.084159955 0 0.21200493 0.17888591 0 0.21086815 0.077233069 0 0.12733074 5.5511151e-017 0
		 0.37331054 5.5511151e-017 0 0.37331054 0.017845595 0 0.29083496 0.66752172 0 0.29042476 0.14128514 0
		 0.27491862 0.66752172 0 0.11575521 0.58986926 0 0.21127015 0.33376083 0 0.29072917 0.33376095 0
		 0.21199039 0.16688043 0 0.2904779 0.16688049 0 0.21019736 0.063137926 0 0.29218182 0.063133188 0
		 0.24453288 5.5511151e-017 0 0.24453288 0.063123941 0 0.19597755 0.031513013 0 0.24453288 0.031561971 0
		 0.18018904 0.022939278 0 0.18014404 5.5511151e-017 0 0.20704457 0.047359318 0 0.24453288 0.04734296 0
		 0.21233846 0.031561971 0 0.21233846 0.04734296 0 0.21233846 0.063123941 0 0.30604678 0.031724181 0
		 0.30892172 5.5511151e-017 0 0.30903441 0.029417466 0 0.29522511 0.047372609 0 0.27672729 0.04734296 0
		 0.27672729 0.031561971 0 0.27672729 0.063123941 0 0.24453288 0.16688043 0 0.2116676 0.25032064 0
		 0.29062834 0.25032094 0 0.24453288 0.25032064 0 0.24453288 0.33376086 0 0.21114388 0.50064307 0
		 0.29082173 0.50064129 0 0.2116037 0.4172011 0 0.29079032 0.4172011 0 0.24453288 0.41720107 0
		 0.24453288 0.50064129 0 0.14456046 0.58432293 0 0.19248044 0.58444661 0 0.29083329 0.58408147 0
		 0.11855574 0.58408147 0 0.24453288 0.58408147 0 0.24453288 0.65269715 0;
	setAttr -s 126 ".ed[0:125]"  53 12 0 12 14 0 14 53 1 43 42 1 42 17 0 17 43 1
		 39 21 1 21 13 0 13 39 1 39 37 1 37 21 1 31 29 1 29 23 1 23 31 1 22 25 1 25 30 1 30 22 1
		 1 9 0 9 27 0 27 1 1 25 29 1 29 30 1 28 24 0 24 30 1 30 28 1 20 28 0 28 31 1 31 20 1
		 34 10 0 10 11 0 11 34 1 34 33 1 33 38 1 38 34 1 36 37 1 37 38 1 38 36 1 25 38 1 37 25 1
		 29 37 1 39 29 1 23 8 1 8 32 1 32 23 1 19 42 0 43 19 1 7 18 0 18 40 1 40 7 1 41 43 1
		 43 44 1 44 41 1 49 48 1 48 46 0 46 49 1 44 17 1 17 48 0 48 44 1 47 16 0 16 44 1 44 47 1
		 5 47 0 47 49 1 49 5 1 50 46 1 46 53 0 53 50 1 0 51 0 51 54 1 54 0 0 52 55 1 55 56 1
		 56 52 1 52 3 0 3 55 1 55 53 1 53 56 1 14 56 0 13 19 0 19 40 1 40 13 1 13 23 1 23 39 1
		 40 23 1 36 21 0 32 31 1 24 26 0 26 30 1 26 27 1 27 22 0 22 26 1 26 1 0 31 30 1 32 20 1
		 11 35 0 35 34 1 35 33 0 22 38 1 22 34 0 33 36 0 8 20 0 18 6 0 6 40 1 6 23 1 6 8 0
		 43 40 1 41 7 0 7 43 1 16 2 0 2 44 1 2 41 0 50 49 1 49 44 1 50 45 1 45 5 0 5 50 1
		 55 50 1 15 54 0 51 15 1 56 15 0 15 4 1 4 56 1 4 52 0 51 4 0 55 45 1 3 45 0;
	setAttr -s 70 -ch 210 ".fc[0:69]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 53 12 14
		f 3 3 4 5
		mu 0 3 43 42 17
		f 3 6 7 8
		mu 0 3 39 21 13
		f 3 -7 9 10
		mu 0 3 21 39 37
		f 3 11 12 13
		mu 0 3 31 29 23
		f 3 14 15 16
		mu 0 3 22 25 30
		f 3 17 18 19
		mu 0 3 1 9 27
		f 3 -16 20 21
		mu 0 3 30 25 29
		f 3 22 23 24
		mu 0 3 28 24 30
		f 3 25 26 27
		mu 0 3 20 28 31
		f 3 28 29 30
		mu 0 3 34 10 11
		f 3 31 32 33
		mu 0 3 34 33 38
		f 3 34 35 36
		mu 0 3 36 37 38
		f 3 37 -36 38
		mu 0 3 25 38 37
		f 3 39 -10 40
		mu 0 3 29 37 39
		f 3 41 42 43
		mu 0 3 23 8 32
		f 3 44 -4 45
		mu 0 3 19 42 43
		f 3 46 47 48
		mu 0 3 7 18 40
		f 3 49 50 51
		mu 0 3 41 43 44
		f 3 52 53 54
		mu 0 3 49 48 46
		f 3 55 56 57
		mu 0 3 44 17 48
		f 3 58 59 60
		mu 0 3 47 16 44
		f 3 61 62 63
		mu 0 3 5 47 49
		f 3 64 65 66
		mu 0 3 50 46 53
		f 3 67 68 69
		mu 0 3 0 51 54
		f 3 70 71 72
		mu 0 3 52 55 56
		f 3 -71 73 74
		mu 0 3 55 52 3
		f 3 -72 75 76
		mu 0 3 56 55 53
		f 3 77 -77 -3
		mu 0 3 14 56 53
		f 3 -56 -51 -6
		mu 0 3 17 44 43
		f 3 78 79 80
		mu 0 3 13 19 40
		f 3 81 82 -9
		mu 0 3 13 23 39
		f 3 83 -82 -81
		mu 0 3 40 23 13
		f 3 -35 84 -11
		mu 0 3 37 36 21
		f 3 -44 85 -14
		mu 0 3 23 32 31
		f 3 -24 86 87
		mu 0 3 30 24 26
		f 3 88 89 90
		mu 0 3 26 27 22
		f 3 -17 -88 -91
		mu 0 3 22 30 26
		f 3 -89 91 -20
		mu 0 3 27 26 1
		f 3 -12 92 -22
		mu 0 3 29 31 30
		f 3 -93 -27 -25
		mu 0 3 30 31 28
		f 3 -86 93 -28
		mu 0 3 31 32 20
		f 3 94 95 -31
		mu 0 3 11 35 34
		f 3 -96 96 -32
		mu 0 3 34 35 33
		f 3 -38 -15 97
		mu 0 3 38 25 22
		f 3 -98 98 -34
		mu 0 3 38 22 34
		f 3 -33 99 -37
		mu 0 3 38 33 36
		f 3 -40 -21 -39
		mu 0 3 37 29 25
		f 3 -83 -13 -41
		mu 0 3 39 23 29
		f 3 100 -94 -43
		mu 0 3 8 20 32
		f 3 -48 101 102
		mu 0 3 40 18 6
		f 3 -84 -103 103
		mu 0 3 23 40 6
		f 3 -42 -104 104
		mu 0 3 8 23 6
		f 3 105 -80 -46
		mu 0 3 43 40 19
		f 3 -50 106 107
		mu 0 3 43 41 7
		f 3 -106 -108 -49
		mu 0 3 40 43 7
		f 3 -60 108 109
		mu 0 3 44 16 2
		f 3 110 -52 -110
		mu 0 3 2 41 44
		f 3 -65 111 -55
		mu 0 3 46 50 49
		f 3 -53 112 -58
		mu 0 3 48 49 44
		f 3 -113 -63 -61
		mu 0 3 44 49 47
		f 3 113 114 115
		mu 0 3 50 45 5
		f 3 -112 -116 -64
		mu 0 3 49 50 5
		f 3 -76 116 -67
		mu 0 3 53 55 50
		f 3 117 -69 118
		mu 0 3 15 54 51
		f 3 119 120 121
		mu 0 3 56 15 4
		f 3 122 -73 -122
		mu 0 3 4 52 56
		f 3 123 -121 -119
		mu 0 3 51 4 15
		f 3 -114 -117 124
		mu 0 3 45 50 55
		f 3 -75 125 -125
		mu 0 3 55 3 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim_Char_x_2_1" -p "Numbers";
	rename -uid "0EC06A8E-4E5E-8790-15A1-8AA68298A2B9";
	setAttr ".t" -type "double3" 7.7220452810729538 1.1340243995440122 -4.4408920985006262e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.7309459149837495 0.3338307142257691 0 ;
	setAttr ".sp" -type "double3" 0.73094591498374939 0.33383071422576904 0 ;
	setAttr ".spt" -type "double3" 1.1102230246251568e-016 5.5511151231257839e-017 0 ;
createNode mesh -n "Trim_Char_x_2_1Shape" -p "Trim_Char_x_2_1";
	rename -uid "E043ECA0-46C0-9687-81A1-7ABBEFB002C2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 62 ".uvst[0].uvsp[0:61]" -type "float2" 0.95865923 0.18853064
		 0.23798883 0.10907328 0.51805246 0.10846879 0.043575417 0.72306198 0.90792853 0.74141151
		 0.47777444 1 0.084916204 0.72306198 0 0.026726566 0.41447854 0.8896634 0.71781212
		 0.67885739 0 0 0.89385474 0 1 0.18853064 0.69366008 0.42857143 0.57867861 0.42857143
		 0.5 0.10847594 0.5 0.2857886 0.5 0.35905886 0.5 0 0.29329997 0.14285715 0.19143282
		 0.14285715 0.25 0.10906995 0.25 0.11615998 0.25 0.14285715 0.25 0 0.49989507 0.2857143
		 0.40411311 0.2857143 0.25 0.18026903 0.89990789 0.14285715 0.97428524 0.14285715
		 0.75 0.11104821 0.75 0 0.90585804 0.71428573 0.71399271 0.71428573 0.83690208 0.5714286
		 0.68904942 0.5714286 0.75 0.47772565 0.75 0.5714286 0.75 0.71428573 0.5 0.99967259
		 0.5 0.88143599 0.10610764 0.85714287 0.23870166 0.85714287 0.063268475 0.78571427
		 0.12984578 0.78571427 0.125 0.7805416 0.125 0.78571427 0.125 0.85714287 0.25 0.96070868
		 0.25 0.86145693 0.86331427 0.85714287 0.57749212 0.85714287 0.75 0.85714287 0.677513
		 0.78571427 0.75 0.78571427 0.625 0.85714287 0.625 0.83121336 0.75 0.9430421 0.5 0.9285714
		 0.75 0.9285714 0.625 0.9285714 0.625 0.98499823;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 62 ".vt[0:61]"  0.92893553 0.12588379 0 0.61784345 0.072829321 0
		 0.73873866 0.072424687 0 0.53392088 0.48279569 0 0.90702021 0.49504787 0 0.72135168 0.66766143 0
		 0.55176651 0.48279569 0 0.51511067 0.017845595 0 0.69402874 0.59401238 0 0.82497102 0.45327982 0
		 0.51511067 5.5511151e-017 0 0.9009614 5.5511151e-017 0 0.94678116 0.12588379 0 0.81453794 0.28616557 0
		 0.76426667 0.28658813 0 0.73094589 0.072429515 0 0.73111731 0.19066712 0 0.73055941 0.24004881 0
		 0.73094589 5.5511151e-017 0 0.64142865 0.095675871 0 0.59785897 0.095271498 0 0.62302828 0.072827138 0
		 0.62299627 0.077595107 0 0.62302828 0.095387138 0 0.62302828 5.5511151e-017 0 0.73107195 0.19061755 0
		 0.68954498 0.19078255 0 0.62315196 0.12024427 0 0.90349889 0.095481619 0 0.93568081 0.095387138 0
		 0.83890742 0.073541932 0 0.83886355 5.5511151e-017 0 0.90610409 0.47693953 0 0.82332098 0.4769358 0
		 0.87640685 0.38153347 0 0.81255299 0.38154855 0 0.83887392 0.31897497 0 0.83886355 0.38154855 0
		 0.83886355 0.47693571 0 0.73094225 0.66741586 0 0.73094159 0.58852947 0 0.56087095 0.57234526 0
		 0.61815107 0.57232296 0 0.54240233 0.52463466 0 0.57116067 0.52462965 0 0.56906903 0.52117568 0
		 0.5690695 0.52462929 0 0.5690695 0.57232285 0 0.62303662 0.64146137 0 0.62302828 0.57520342 0
		 0.88833332 0.57261169 0 0.76440376 0.5723328 0 0.83886355 0.57232285 0 0.80749327 0.52458537 0
		 0.83886355 0.52462929 0 0.78490472 0.57232285 0 0.78493857 0.55504245 0 0.83900303 0.62986749 0
		 0.73094589 0.6200164 0 0.83886355 0.6200164 0 0.78490472 0.6200164 0 0.7848587 0.657552 0;
	setAttr -s 132 ".ed[0:131]"  50 57 0 57 59 1 59 50 1 17 16 1 16 13 0 13 17 1
		 17 26 0 26 16 1 15 21 0 21 24 1 24 15 1 23 20 1 20 1 1 1 23 1 19 25 0 25 26 1 26 19 1
		 27 20 0 23 27 1 30 31 1 31 11 0 11 30 1 2 15 0 15 18 1 18 2 1 0 28 0 28 29 1 29 0 1
		 34 32 0 32 38 1 38 34 1 36 34 0 34 37 1 37 36 1 37 35 1 35 36 1 9 35 0 37 9 1 8 40 0
		 40 58 1 58 8 1 44 42 0 42 47 1 47 44 1 45 44 0 44 46 1 46 45 1 43 3 0 3 6 0 6 43 1
		 41 43 0 43 46 1 46 41 1 48 41 0 41 47 1 47 48 1 4 50 0 50 54 1 54 4 1 52 55 1 55 56 1
		 56 52 1 33 38 1 38 54 1 54 33 1 55 51 1 51 56 0 57 61 0 61 60 1 60 57 1 52 59 1 59 55 1
		 55 60 1 60 51 1 61 39 0 39 58 1 58 61 1 23 22 1 22 19 0 19 23 1 52 50 1 13 14 1 14 17 0
		 25 16 0 24 18 0 7 10 0 10 24 0 24 7 1 1 22 0 20 7 0 7 1 1 21 1 0 1 24 1 19 27 1 26 27 0
		 11 29 0 28 11 1 28 30 0 30 2 0 2 31 1 18 31 0 29 12 0 12 0 0 38 37 1 35 14 0 13 35 1
		 13 36 0 33 9 0 9 38 1 48 49 1 49 8 0 8 48 1 39 5 0 5 58 1 5 8 1 5 48 0 47 46 1 43 45 1
		 6 45 0 42 49 0 48 42 1 52 54 1 32 4 0 4 38 1 53 54 1 52 53 1 56 53 0 53 33 0 60 59 1
		 60 58 1 40 60 1 40 51 0;
	setAttr -s 71 -ch 213 ".fc[0:70]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 50 57 59
		f 3 3 4 5
		mu 0 3 17 16 13
		f 3 -4 6 7
		mu 0 3 16 17 26
		f 3 8 9 10
		mu 0 3 15 21 24
		f 3 11 12 13
		mu 0 3 23 20 1
		f 3 14 15 16
		mu 0 3 19 25 26
		f 3 17 -12 18
		mu 0 3 27 20 23
		f 3 19 20 21
		mu 0 3 30 31 11
		f 3 22 23 24
		mu 0 3 2 15 18
		f 3 25 26 27
		mu 0 3 0 28 29
		f 3 28 29 30
		mu 0 3 34 32 38
		f 3 31 32 33
		mu 0 3 36 34 37
		f 3 -34 34 35
		mu 0 3 36 37 35
		f 3 36 -35 37
		mu 0 3 9 35 37
		f 3 38 39 40
		mu 0 3 8 40 58
		f 3 41 42 43
		mu 0 3 44 42 47
		f 3 44 45 46
		mu 0 3 45 44 46
		f 3 47 48 49
		mu 0 3 43 3 6
		f 3 50 51 52
		mu 0 3 41 43 46
		f 3 53 54 55
		mu 0 3 48 41 47
		f 3 56 57 58
		mu 0 3 4 50 54
		f 3 59 60 61
		mu 0 3 52 55 56
		f 3 62 63 64
		mu 0 3 33 38 54
		f 3 65 66 -61
		mu 0 3 55 51 56
		f 3 67 68 69
		mu 0 3 57 61 60
		f 3 -60 70 71
		mu 0 3 55 52 59
		f 3 -66 72 73
		mu 0 3 51 55 60
		f 3 74 75 76
		mu 0 3 61 39 58
		f 3 77 78 79
		mu 0 3 23 22 19
		f 3 -71 80 -3
		mu 0 3 59 52 50
		f 3 81 82 -6
		mu 0 3 13 14 17
		f 3 -16 83 -8
		mu 0 3 26 25 16
		f 3 84 -24 -11
		mu 0 3 24 18 15
		f 3 85 86 87
		mu 0 3 7 10 24
		f 3 88 -78 -14
		mu 0 3 1 22 23
		f 3 -13 89 90
		mu 0 3 1 20 7
		f 3 -10 91 92
		mu 0 3 24 21 1
		f 3 -91 -88 -93
		mu 0 3 1 7 24
		f 3 -19 -80 93
		mu 0 3 27 23 19
		f 3 -17 94 -94
		mu 0 3 19 26 27
		f 3 95 -27 96
		mu 0 3 11 29 28
		f 3 -97 97 -22
		mu 0 3 11 28 30
		f 3 -20 98 99
		mu 0 3 31 30 2
		f 3 100 -100 -25
		mu 0 3 18 31 2
		f 3 101 102 -28
		mu 0 3 29 12 0
		f 3 103 -33 -31
		mu 0 3 38 37 34
		f 3 104 -82 105
		mu 0 3 35 14 13
		f 3 -106 106 -36
		mu 0 3 35 13 36
		f 3 -63 107 108
		mu 0 3 38 33 9
		f 3 -38 -104 -109
		mu 0 3 9 37 38
		f 3 109 110 111
		mu 0 3 48 49 8
		f 3 -76 112 113
		mu 0 3 58 39 5
		f 3 114 -41 -114
		mu 0 3 5 8 58
		f 3 -115 115 -112
		mu 0 3 8 5 48
		f 3 116 -46 -44
		mu 0 3 47 46 44
		f 3 -47 -52 117
		mu 0 3 45 46 43
		f 3 -50 118 -118
		mu 0 3 43 6 45
		f 3 -117 -55 -53
		mu 0 3 46 47 41
		f 3 119 -110 120
		mu 0 3 42 49 48
		f 3 -56 -43 -121
		mu 0 3 48 47 42
		f 3 -81 121 -58
		mu 0 3 50 52 54
		f 3 -30 122 123
		mu 0 3 38 32 4
		f 3 -59 -64 -124
		mu 0 3 4 54 38
		f 3 124 -122 125
		mu 0 3 53 54 52
		f 3 126 -126 -62
		mu 0 3 56 53 52
		f 3 -125 127 -65
		mu 0 3 54 53 33
		f 3 128 -2 -70
		mu 0 3 60 59 57
		f 3 -129 -73 -72
		mu 0 3 59 60 55
		f 3 129 -40 130
		mu 0 3 60 58 40
		f 3 -131 131 -74
		mu 0 3 60 40 51
		f 3 -130 -69 -77
		mu 0 3 58 60 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim_Char_x_3_1" -p "Numbers";
	rename -uid "94A6AA1B-4418-6FAC-FE22-00B2D834DB35";
	setAttr ".t" -type "double3" 7.5450745959836611 -0.00068707251921118484 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 1.2135305404663088 0.3279755655676127 0 ;
	setAttr ".sp" -type "double3" 1.2135305404663086 0.32797556556761265 0 ;
	setAttr ".spt" -type "double3" 2.2204460492503136e-016 5.5511151231257839e-017 0 ;
createNode mesh -n "Trim_Char_x_3_1Shape" -p "Trim_Char_x_3_1";
	rename -uid "B32D8B58-4BC6-7BAC-D5EB-5E88A07BC985";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 81 ".uvst[0].uvsp[0:80]" -type "float2" 0.071757726 0.78510201
		 0.29685405 0.51610821 0.40753731 0.90328825 0.69788772 0.73967826 0.29685405 0.4948158
		 0.67201453 0.5870828 0.10778659 0.12807359 0.80930805 0.25502643 0.47960317 0.061554901
		 0.29860547 0 0 0.075958267 1 0.33617958 0.029067049 0.79645795 0.91285485 0.80373853
		 0.50617927 1 0.67193985 0.42857143 0.97241402 0.42857143 0.74735814 0.14285715 0.88944298
		 0.14285715 0.33333334 0.07875938 0.33333334 0.00026515912 0.00049148576 0.071428575
		 0.33333334 0.071428575 0.16666667 0.0053493977 0.16666667 0.071428575 0.040998988
		 0.035714287 0.16666667 0.035714287 0.083333336 0.020445509 0.083333336 0.035714287
		 0.083333336 0.071428575 0.16666667 0.12295227 0.023298545 0.10714286 0.16666667 0.10714286
		 0.083333336 0.10714286 0.083333336 0.12684433 0.66666669 0.09656778 0.66666669 0.040444177
		 0.80557197 0.2857143 0.99319708 0.2857143 0.76769453 0.35714287 0.99872428 0.35714287
		 0.83333331 0.2857143 0.83333331 0.35714287 0.83333331 0.42857143 0.69536567 0.71428573
		 0.86974764 0.71428573 0.33333334 0.51954579 0.33333334 0.49456504 0.5433147 0.5714286
		 0.73524481 0.5714286 0.66666669 0.43091601 0.66666669 0.5714286 0.33333334 0.5 0.66666669
		 0.5 0.5 0.4793995 0.5 0.5 0.5 0.55581766 0.89938408 0.5 0.83333331 0.5 0.83333331
		 0.53628772 0.66666669 0.65405262 0.33333334 0.89874953 0.33333334 0.98342472 0.18222846
		 0.85714287 0.084297605 0.85714287 0.33333334 0.9285714 0.18248667 0.9285714 0.16666667
		 0.9194169 0.16666667 0.85714287 0.61680752 0.85714287 0.89736962 0.85714287 0.66666669
		 0.81817591 0.66666669 0.85714287 0.66666669 0.98561525 0.66666669 0.9285714 0.5 0.89568591
		 0.5 0.9285714 0.5 0.99998015 0.82196188 0.9285714 0.83333331 0.85714287 0.83333331
		 0.92127442;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 81 ".vt[0:80]"  1.053854704 0.52186304 0 1.13777721 0.3390663 0
		 1.17904317 0.60215938 0 1.2873131 0.49099508 0 1.13777721 0.32459688 0 1.27764809 0.38729763 0
		 1.067285776 0.075956449 0 1.32889163 0.16164576 0 1.20591152 0.03016872 0 1.13843 -0.011947107 0
		 1.027097702 0.039959118 0 1.39996338 0.21679461 0 1.037938356 0.52958006 0 1.36742365 0.53452766 0
		 1.21581984 0.66789824 0 1.27744555 0.2793735 0 1.38964355 0.27957922 0 1.30565155 0.085479952 0
		 1.35872388 0.085412048 0 1.1514554 0.042023644 0 1.15138638 -0.011730347 0 1.027280569 0.036880452 0
		 1.1513778 0.036880925 0 1.089235187 -0.0080484999 0 1.089239597 0.036880925 0 1.042387128 0.012611222 0
		 1.089239597 0.012611015 0 1.058170676 0.002235479 0 1.058170438 0.012611015 0 1.058170438 0.036880925 0
		 1.089378953 0.072358795 0 1.035639048 0.061268341 0 1.089239597 0.061150838 0 1.058170438 0.061150838 0
		 1.058063865 0.075073779 0 1.27566707 0.053947702 0 1.27564788 0.015838291 0 1.32762921 0.18252444 0
		 1.39749467 0.18248564 0 1.31341684 0.23108539 0 1.39943588 0.23103885 0 1.33779252 0.18250039 0
		 1.33779252 0.23104021 0 1.33779252 0.27958003 0 1.28634071 0.47374088 0 1.35144436 0.47370034 0
		 1.15137959 0.34139389 0 1.15137792 0.3244316 0 1.22961974 0.37672105 0 1.3012234 0.37666202 0
		 1.27550256 0.28098741 0 1.27565432 0.37665969 0 1.1513778 0.32811984 0 1.27565432 0.32811984 0
		 1.21351528 0.31411853 0 1.213516 0.32811984 0 1.21351755 0.36604866 0 1.36244631 0.32814273 0
		 1.33779252 0.32811984 0 1.33781016 0.35280094 0 1.27557123 0.43284294 0 1.15137601 0.59910095 0
		 1.15138078 0.65662682 0 1.09503901 0.57082194 0 1.05853188 0.57081783 0 1.1513778 0.61935878 0
		 1.095134258 0.61936218 0 1.089237213 0.61313993 0 1.089239597 0.57081896 0 1.25705135 0.57080531 0
		 1.36166537 0.57081842 0 1.2756542 0.54433864 0 1.27565432 0.57081896 0 1.27565312 0.65812016 0
		 1.27565432 0.61935878 0 1.21351671 0.59701353 0 1.213516 0.61935878 0 1.21351612 0.66788256 0
		 1.33355832 0.61936367 0 1.33779252 0.57081896 0 1.33779788 0.61440444 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  78 73 0 73 74 1 74 78 1 42 40 1 40 16 0 16 42 1 35 36 1
		 36 18 0 18 35 1 19 30 0 30 32 1 32 19 1 9 20 0 20 22 1 22 9 1 28 26 1 26 24 1 24 28 1
		 27 23 0 23 26 1 26 27 1 25 27 0 27 28 1 28 25 1 28 29 1 29 25 1 6 34 0 34 33 1 33 6 1
		 29 24 1 24 32 1 32 29 1 10 21 0 21 29 1 29 10 1 34 31 0 31 33 1 8 19 0 19 22 1 22 8 1
		 7 17 0 17 18 1 18 7 1 11 40 0 42 11 1 37 41 1 41 42 1 42 37 1 39 42 1 42 43 1 43 39 1
		 5 48 1 48 51 1 51 5 1 4 47 0 47 52 1 52 4 1 57 59 0 59 58 1 58 57 1 56 55 1 55 53 1
		 53 56 1 54 50 0 50 53 1 53 54 1 47 54 0 54 55 1 55 47 1 46 52 1 52 55 1 55 46 1 43 16 1
		 16 57 0 57 43 1 15 43 1 43 58 1 58 15 1 49 51 1 51 53 1 53 49 1 60 48 0 5 60 1 65 62 1
		 62 66 0 66 65 1 0 63 0 63 68 1 68 0 1 61 65 1 66 61 1 67 64 0 64 68 1 68 67 1 3 45 1
		 45 13 0 13 3 1 69 71 0 71 72 1 72 69 1 14 77 0 77 76 1 76 14 1 72 74 1 74 69 1 2 75 0
		 75 76 1 76 2 1 65 76 1 76 62 1 79 70 1 70 80 0 80 79 1 72 79 1 80 72 1 17 35 0 24 22 1
		 19 24 1 26 22 1 22 23 1 23 9 0 21 25 0 33 32 1 30 33 1 30 6 0 33 29 1 31 29 1 31 10 0
		 35 8 0 8 36 1 20 8 1 20 36 0 37 7 0 7 41 1 38 41 1 7 38 1 18 38 0 38 42 1 38 11 0
		 39 37 0 15 39 0 49 5 0 45 44 1 44 60 0 60 45 1 5 45 0 46 1 0 1 52 1 1 4 0 48 53 1
		 48 56 0 56 46 0 58 53 1 50 58 1 50 15 0 59 53 1 59 49 0 64 12 0 12 0 0 0 64 1 63 67 1
		 63 61 0 61 67 1 66 67 0 71 79 1 3 44 0;
	setAttr ".ed[166:179]" 13 79 1 71 13 1 71 3 0 13 70 0 76 74 1 73 76 1 73 14 0
		 75 74 1 75 69 0 61 2 0 2 65 1 77 62 0 72 78 1 80 78 0;
	setAttr -s 100 -ch 300 ".fc[0:99]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 78 73 74
		f 3 3 4 5
		mu 0 3 42 40 16
		f 3 6 7 8
		mu 0 3 35 36 18
		f 3 9 10 11
		mu 0 3 19 30 32
		f 3 12 13 14
		mu 0 3 9 20 22
		f 3 15 16 17
		mu 0 3 28 26 24
		f 3 18 19 20
		mu 0 3 27 23 26
		f 3 21 22 23
		mu 0 3 25 27 28
		f 3 -24 24 25
		mu 0 3 25 28 29
		f 3 26 27 28
		mu 0 3 6 34 33
		f 3 29 30 31
		mu 0 3 29 24 32
		f 3 32 33 34
		mu 0 3 10 21 29
		f 3 35 36 -28
		mu 0 3 34 31 33
		f 3 37 38 39
		mu 0 3 8 19 22
		f 3 40 41 42
		mu 0 3 7 17 18
		f 3 43 -4 44
		mu 0 3 11 40 42
		f 3 45 46 47
		mu 0 3 37 41 42
		f 3 48 49 50
		mu 0 3 39 42 43
		f 3 51 52 53
		mu 0 3 5 48 51
		f 3 54 55 56
		mu 0 3 4 47 52
		f 3 57 58 59
		mu 0 3 57 59 58
		f 3 60 61 62
		mu 0 3 56 55 53
		f 3 63 64 65
		mu 0 3 54 50 53
		f 3 66 67 68
		mu 0 3 47 54 55
		f 3 69 70 71
		mu 0 3 46 52 55
		f 3 72 73 74
		mu 0 3 43 16 57
		f 3 75 76 77
		mu 0 3 15 43 58
		f 3 78 79 80
		mu 0 3 49 51 53
		f 3 81 -52 82
		mu 0 3 60 48 5
		f 3 83 84 85
		mu 0 3 65 62 66
		f 3 86 87 88
		mu 0 3 0 63 68
		f 3 89 -86 90
		mu 0 3 61 65 66
		f 3 91 92 93
		mu 0 3 67 64 68
		f 3 94 95 96
		mu 0 3 3 45 13
		f 3 97 98 99
		mu 0 3 69 71 72
		f 3 100 101 102
		mu 0 3 14 77 76
		f 3 -100 103 104
		mu 0 3 69 72 74
		f 3 105 106 107
		mu 0 3 2 75 76
		f 3 -84 108 109
		mu 0 3 62 65 76
		f 3 110 111 112
		mu 0 3 79 70 80
		f 3 113 -113 114
		mu 0 3 72 79 80
		f 3 -73 -50 -6
		mu 0 3 16 43 42
		f 3 -42 115 -9
		mu 0 3 18 17 35
		f 3 116 -39 117
		mu 0 3 24 22 19
		f 3 -12 -31 -118
		mu 0 3 19 32 24
		f 3 -117 -17 118
		mu 0 3 22 24 26
		f 3 119 120 -15
		mu 0 3 22 23 9
		f 3 -20 -120 -119
		mu 0 3 26 23 22
		f 3 -30 -25 -18
		mu 0 3 24 29 28
		f 3 -16 -23 -21
		mu 0 3 26 28 27
		f 3 -34 121 -26
		mu 0 3 29 21 25
		f 3 122 -11 123
		mu 0 3 33 32 30
		f 3 -124 124 -29
		mu 0 3 33 30 6
		f 3 -123 125 -32
		mu 0 3 32 33 29
		f 3 -126 -37 126
		mu 0 3 29 33 31
		f 3 -127 127 -35
		mu 0 3 29 31 10
		f 3 -7 128 129
		mu 0 3 36 35 8
		f 3 -14 130 -40
		mu 0 3 22 20 8
		f 3 -131 131 -130
		mu 0 3 8 20 36
		f 3 -46 132 133
		mu 0 3 41 37 7
		f 3 134 -134 135
		mu 0 3 38 41 7
		f 3 -43 136 -136
		mu 0 3 7 18 38
		f 3 -47 -135 137
		mu 0 3 42 41 38
		f 3 -138 138 -45
		mu 0 3 42 38 11
		f 3 -49 139 -48
		mu 0 3 42 39 37
		f 3 -76 140 -51
		mu 0 3 43 15 39
		f 3 -79 141 -54
		mu 0 3 51 49 5
		f 3 142 143 144
		mu 0 3 45 44 60
		f 3 -83 145 -145
		mu 0 3 60 5 45
		f 3 -70 146 147
		mu 0 3 52 46 1
		f 3 -148 148 -57
		mu 0 3 52 1 4
		f 3 -80 -53 149
		mu 0 3 53 51 48
		f 3 -150 150 -63
		mu 0 3 53 48 56
		f 3 -62 -68 -66
		mu 0 3 53 55 54
		f 3 -71 -56 -69
		mu 0 3 55 52 47
		f 3 -61 151 -72
		mu 0 3 55 56 46
		f 3 -60 -77 -75
		mu 0 3 57 58 43
		f 3 152 -65 153
		mu 0 3 58 53 50
		f 3 154 -78 -154
		mu 0 3 50 15 58
		f 3 -153 -59 155
		mu 0 3 53 58 59
		f 3 -156 156 -81
		mu 0 3 53 59 49
		f 3 157 158 159
		mu 0 3 64 12 0
		f 3 -89 -93 -160
		mu 0 3 0 68 64
		f 3 -94 -88 160
		mu 0 3 67 68 63
		f 3 -161 161 162
		mu 0 3 67 63 61
		f 3 -91 163 -163
		mu 0 3 61 66 67
		f 3 -114 -99 164
		mu 0 3 79 72 71
		f 3 165 -143 -95
		mu 0 3 3 44 45
		f 3 166 -165 167
		mu 0 3 13 79 71
		f 3 168 -97 -168
		mu 0 3 71 3 13
		f 3 -167 169 -111
		mu 0 3 79 13 70
		f 3 170 -2 171
		mu 0 3 76 74 73
		f 3 -172 172 -103
		mu 0 3 76 73 14
		f 3 -171 -107 173
		mu 0 3 74 76 75
		f 3 -174 174 -105
		mu 0 3 74 75 69
		f 3 -90 175 176
		mu 0 3 65 61 2
		f 3 -108 -109 -177
		mu 0 3 2 76 65
		f 3 -102 177 -110
		mu 0 3 76 77 62
		f 3 -3 -104 178
		mu 0 3 78 74 72
		f 3 179 -179 -115
		mu 0 3 80 78 72;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim_Char_x_4_1" -p "Numbers";
	rename -uid "9485139E-4333-7DA3-D888-E68030B194BA";
	setAttr ".t" -type "double3" 6.7337851609195267 -1.1470389852550698 2.2204460492503131e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 1.719206035137177 0.33376085758209229 0 ;
	setAttr ".sp" -type "double3" 1.7192060351371765 0.33376085758209223 0 ;
	setAttr ".spt" -type "double3" 4.4408920985006271e-016 5.5511151231257839e-017 0 ;
createNode mesh -n "Trim_Char_x_4_1Shape" -p "Trim_Char_x_4_1";
	rename -uid "60F9EFB2-4CB0-D95F-53C2-919E800D3D6C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 51 ".uvst[0].uvsp[0:50]" -type "float2" 0.80238873 0.36127168
		 0.80238873 1 0.6829533 1 0 0.35115606 0 0.25867051 0.62323564 0.25867051 0.62323564
		 0 0.80238873 0 0.80238873 0.25867051 1 0.25867051 1 0.36127168 0.10640608 0.36127168
		 0.62323564 0.84754336 0.62323564 0.36127168 0.80238873 0.42857143 0.08148504 0.42857143
		 0.17793502 0.42857143 0.62323564 0.42857143 0.5 0.25867051 0.5 0.36127168 0 0.2857143
		 0.5 0.2857143 0.25 0.25867051 0.25 0.2857143 0.25 0.36127168 0.62323564 0.14285715
		 0.80238873 0.14285715 0.75 0 0.75 0.14285715 1 0.2857143 0.75 0.2857143 0.75 0.42857143
		 0.80238873 0.71428573 0.38221917 0.71428573 0.48160392 0.71428573 0.62323564 0.71428573
		 0.23185211 0.5714286 0.32976946 0.5714286 0.25 0.49637553 0.25 0.5714286 0.25 0.58867007
		 0.80238873 0.5714286 0.62323564 0.5714286 0.75 0.5714286 0.75 0.71428573 0.5 0.82618409
		 0.5 0.73159415 0.80238873 0.85714287 0.53258622 0.85714287 0.75 0.85714287 0.75 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 51 ".vt[0:50]"  1.85353029 0.24115668 0 1.85353029 0.66752172 0
		 1.80047584 0.66752172 0 1.49710071 0.2344043 0 1.49710071 0.17266819 0 1.77394855 0.17266819 0
		 1.77394855 -1.110223e-016 0 1.85353029 -1.110223e-016 0 1.85353029 0.17266819 0 1.94131136 0.17266819 0
		 1.94131136 0.24115668 0 1.54436743 0.24115668 0 1.77394855 0.56575358 0 1.77394855 0.24115668 0
		 1.85353029 0.28608072 0 1.53329718 0.28608072 0 1.57614136 0.28608072 0 1.77394855 0.28608072 0
		 1.71920598 0.17266819 0 1.71920598 0.24115668 0 1.49710071 0.19072048 0 1.71920598 0.19072048 0
		 1.60815334 0.17266819 0 1.60815334 0.19072048 0 1.60815334 0.24115668 0 1.77394855 0.095360242 0
		 1.85353029 0.095360242 0 1.83025861 -1.110223e-016 0 1.83025861 0.095360242 0 1.94131136 0.19072048 0
		 1.83025861 0.19072048 0 1.83025861 0.28608072 0 1.85353029 0.47680122 0 1.66688657 0.47680122 0
		 1.7110343 0.47680122 0 1.77394855 0.47680122 0 1.60009181 0.38144097 0 1.64358783 0.38144097 0
		 1.60815334 0.33134145 0 1.60815334 0.38144097 0 1.60815334 0.39295006 0 1.85353029 0.38144097 0
		 1.77394855 0.38144097 0 1.83025861 0.38144097 0 1.83025861 0.47680122 0 1.71920598 0.55149579 0
		 1.71920598 0.48835495 0 1.85353029 0.57216144 0 1.7336812 0.57216144 0 1.83025861 0.57216144 0
		 1.83025861 0.66752172 0;
	setAttr -s 111 ".ed[0:110]"  47 1 0 1 49 1 49 47 1 29 10 0 10 0 0 0 29 1
		 23 21 1 21 19 1 19 23 1 22 18 0 18 21 1 21 22 1 4 22 0 22 23 1 23 4 1 23 24 1 24 11 0
		 11 23 1 27 7 0 7 26 0 26 27 1 6 27 0 27 28 1 28 6 1 8 9 0 9 29 0 29 8 1 5 25 0 25 28 1
		 28 5 1 31 17 1 17 13 0 13 31 1 41 32 0 32 43 1 43 41 1 40 39 1 39 37 1 37 40 1 38 37 0
		 39 38 1 15 16 1 16 38 0 38 15 1 40 36 0 36 39 1 14 41 0 41 31 1 31 14 1 31 43 1 43 17 1
		 42 43 1 43 44 1 44 42 1 33 34 1 34 46 0 46 33 1 32 47 0 47 44 1 44 32 1 12 2 1 2 48 0
		 48 12 1 12 49 1 49 2 1 1 50 0 50 49 1 0 14 0 31 0 1 31 30 1 30 0 1 0 8 1 19 24 0
		 23 20 1 20 4 0 11 16 0 15 11 1 11 3 1 3 20 0 20 11 1 15 3 0 26 28 1 25 6 0 26 8 0
		 8 28 1 30 28 1 8 30 1 18 5 0 5 21 1 5 13 1 13 21 1 30 5 1 13 19 0 13 30 1 37 34 0
		 33 37 1 33 40 0 36 38 1 36 15 0 42 17 0 44 35 1 35 42 0 46 45 1 45 33 0 49 44 1 46 12 0
		 12 45 1 12 35 0 44 12 1 48 45 0 50 2 0;
	setAttr -s 60 -ch 180 ".fc[0:59]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 47 1 49
		f 3 3 4 5
		mu 0 3 29 10 0
		f 3 6 7 8
		mu 0 3 23 21 19
		f 3 9 10 11
		mu 0 3 22 18 21
		f 3 12 13 14
		mu 0 3 4 22 23
		f 3 15 16 17
		mu 0 3 23 24 11
		f 3 18 19 20
		mu 0 3 27 7 26
		f 3 21 22 23
		mu 0 3 6 27 28
		f 3 24 25 26
		mu 0 3 8 9 29
		f 3 27 28 29
		mu 0 3 5 25 28
		f 3 30 31 32
		mu 0 3 31 17 13
		f 3 33 34 35
		mu 0 3 41 32 43
		f 3 36 37 38
		mu 0 3 40 39 37
		f 3 39 -38 40
		mu 0 3 38 37 39
		f 3 41 42 43
		mu 0 3 15 16 38
		f 3 44 45 -37
		mu 0 3 40 36 39
		f 3 46 47 48
		mu 0 3 14 41 31
		f 3 -31 49 50
		mu 0 3 17 31 43
		f 3 51 52 53
		mu 0 3 42 43 44
		f 3 54 55 56
		mu 0 3 33 34 46
		f 3 57 58 59
		mu 0 3 32 47 44
		f 3 60 61 62
		mu 0 3 12 2 48
		f 3 -61 63 64
		mu 0 3 2 12 49
		f 3 65 66 -2
		mu 0 3 1 50 49
		f 3 67 -49 68
		mu 0 3 0 14 31
		f 3 -69 69 70
		mu 0 3 0 31 30
		f 3 71 -27 -6
		mu 0 3 0 8 29
		f 3 72 -16 -9
		mu 0 3 19 24 23
		f 3 -7 -14 -12
		mu 0 3 21 23 22
		f 3 73 74 -15
		mu 0 3 23 20 4
		f 3 75 -42 76
		mu 0 3 11 16 15
		f 3 77 78 79
		mu 0 3 11 3 20
		f 3 -74 -18 -80
		mu 0 3 20 23 11
		f 3 80 -78 -77
		mu 0 3 15 3 11
		f 3 81 -23 -21
		mu 0 3 26 28 27
		f 3 -29 82 -24
		mu 0 3 28 25 6
		f 3 -82 83 84
		mu 0 3 28 26 8
		f 3 85 -85 86
		mu 0 3 30 28 8
		f 3 -72 -71 -87
		mu 0 3 8 0 30
		f 3 -11 87 88
		mu 0 3 21 18 5
		f 3 89 90 -89
		mu 0 3 5 13 21
		f 3 -86 91 -30
		mu 0 3 28 30 5
		f 3 92 -8 -91
		mu 0 3 13 19 21
		f 3 93 -70 -33
		mu 0 3 13 30 31
		f 3 -90 -92 -94
		mu 0 3 13 5 30
		f 3 -60 -53 -35
		mu 0 3 32 44 43
		f 3 94 -55 95
		mu 0 3 37 34 33
		f 3 -96 96 -39
		mu 0 3 37 33 40
		f 3 -41 -46 97
		mu 0 3 38 39 36
		f 3 98 -44 -98
		mu 0 3 36 15 38
		f 3 -36 -50 -48
		mu 0 3 41 43 31
		f 3 -52 99 -51
		mu 0 3 43 42 17
		f 3 100 101 -54
		mu 0 3 44 35 42
		f 3 102 103 -57
		mu 0 3 46 45 33
		f 3 -3 104 -59
		mu 0 3 47 49 44
		f 3 -103 105 106
		mu 0 3 45 46 12
		f 3 107 -101 108
		mu 0 3 12 35 44
		f 3 -105 -64 -109
		mu 0 3 44 49 12
		f 3 -63 109 -107
		mu 0 3 12 48 45
		f 3 -67 110 -65
		mu 0 3 49 50 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim_Char_x_5_1" -p "Numbers";
	rename -uid "566DFA36-4772-C4D0-67B1-C9A715932562";
	setAttr ".t" -type "double3" 5.4042621657072294 -1.9693153814003654 2.2204460492503131e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 2.2137763500213627 0.3210845733992756 0 ;
	setAttr ".sp" -type "double3" 2.2137763500213623 0.32108457339927554 0 ;
	setAttr ".spt" -type "double3" 4.4408920985006271e-016 5.5511151231257839e-017 0 ;
createNode mesh -n "Trim_Char_x_5_1Shape" -p "Trim_Char_x_5_1";
	rename -uid "E05EEB59-4057-EF9D-1AD2-5EBFDE591CAE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 69 ".uvst[0].uvsp[0:68]" -type "float2" 0.38558564 1 0.056886595
		 0.61824757 0.27306944 0.7450155 0.10443366 0.14856958 0.80815011 0.29593757 0.44129798
		 0.074549347 0.28628036 0 0 0.096267045 0.97241157 0.37163168 0.38558564 0.87685406
		 0.90139031 0.87685406 1 1 0.74545699 0.42857143 0.9640218 0.42857143 0.70588583 0.14285715
		 0.15707496 0.14285715 0.056072373 0.14285715 0.82350916 0.14285715 0.33333334 0.085611381
		 0.33333334 0.00089213258 0.0090088146 0.071428575 0.33333334 0.071428575 0.16666667
		 0.0069809449 0.16666667 0.071428575 0.057643957 0.035714287 0.16666667 0.035714287
		 0.083333336 0.025310135 0.083333336 0.035714287 0.083333336 0.071428575 0.16666667
		 0.1405267 0.0020810168 0.10714286 0.16666667 0.10714286 0.083333336 0.10714286 0.083333336
		 0.14285715 0.017026465 0.125 0.083333336 0.125 0.041666668 0.10714286 0.041666668
		 0.125 0.041666668 0.13827097 0.66666669 0.12218351 0.66666669 0.0637713 0.66666669
		 0.071428575 0.5 0.018826669 0.5 0.071428575 0.5 0.077714525 0.80778164 0.2857143
		 0.95393723 0.2857143 0.78301913 0.21428572 0.90637618 0.21428572 0.83333331 0.14972642
		 0.83333331 0.21428572 0.83333331 0.2857143 0.13957798 0.71428573 0.49252549 0.71428573
		 0.33333334 0.59775764 0.33333334 0.71428573 0.46823519 0.5714286 0.85145378 0.5714286
		 0.66666669 0.49102643 0.66666669 0.5714286 0.66666669 0.66619694 0.33333334 0.93931395
		 0.33333334 0.73910242 0.33333334 0.81562847 0.26258183 0.85714287 0.33333334 0.85714287
		 0.36876333 0.85714287 0.66666669 0.87685406 0.66666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 69 ".vt[0:68]"  2.16992784 0.65401691 0 2.044526339 0.39983779 0
		 2.127002 0.48424262 0 2.062673092 0.087536678 0 2.33113956 0.18523668 0 2.19118261 0.037831467 0
		 2.13204217 -0.011847765 0 2.023220539 0.052281789 0 2.39412665 0.23563254 0 2.16992784 0.57202363 0
		 2.36671162 0.57202363 0 2.40433216 0.65401691 0 2.30724239 0.27355865 0 2.39122677 0.27365032 0
		 2.2922647 0.083185799 0 2.082753181 0.083322816 0 2.044008493 0.083759099 0 2.3370049 0.083307698 0
		 2.14998698 0.04518006 0 2.14999366 -0.01121879 0 2.026360512 0.035794273 0 2.14999318 0.035753649 0
		 2.086417913 -0.0071159503 0 2.086408377 0.035753649 0 2.044825315 0.011986502 0 2.086408377 0.011974292 0
		 2.054680586 0.0051560625 0 2.054615974 0.011974292 0 2.054615974 0.035753649 0 2.086394787 0.081733853 0
		 2.024104357 0.05942259 0 2.086408377 0.059533004 0 2.054615974 0.059533004 0 2.054615974 0.083312362 0
		 2.029324055 0.071419433 0 2.054615974 0.071422681 0 2.038719893 0.059533004 0 2.038719893 0.071422681 0
		 2.038481951 0.080603153 0 2.2775383 0.069094069 0 2.27721977 0.030566789 0 2.27716255 0.035753649 0
		 2.21360397 0.00064740225 0 2.21357799 0.035753649 0 2.21362185 0.039675791 0 2.33099937 0.17842978 0
		 2.38676667 0.17842774 0 2.32135963 0.13094364 0 2.36864543 0.13085498 0 2.34075642 0.087878868 0
		 2.34074736 0.13087107 0 2.34074736 0.17842978 0 2.076073885 0.46378207 0 2.21052837 0.46323851 0
		 2.14999366 0.38619751 0 2.14999318 0.46378207 0 2.20145869 0.36866325 0 2.34839249 0.36924401 0
		 2.27708006 0.31505489 0 2.27716255 0.36866465 0 2.27694964 0.43141717 0 2.14999318 0.6136108 0
		 2.14997745 0.48022813 0 2.14999318 0.53125834 0 2.12300086 0.55889952 0 2.14999318 0.55889952 0
		 2.16351008 0.55889952 0 2.27716255 0.57202363 0 2.27716255 0.65401691 0;
	setAttr -s 153 ".ed[0:152]"  10 11 0 11 68 0 68 10 1 4 46 1 46 8 0 8 4 1
		 41 40 1 40 17 0 17 41 1 18 29 0 29 31 1 31 18 1 6 19 0 19 21 1 21 6 1 27 25 1 25 23 1
		 23 27 1 26 22 0 22 25 1 25 26 1 24 26 0 26 27 1 27 24 1 27 28 1 28 24 1 35 32 1 32 31 1
		 31 35 1 28 23 1 23 31 1 31 28 1 28 32 1 32 36 1 36 28 1 38 37 1 37 35 1 35 38 1 35 36 1
		 34 30 0 30 36 1 36 34 1 38 34 0 34 37 1 44 43 1 43 41 1 41 44 1 43 40 1 19 42 0 42 21 1
		 5 18 0 18 21 1 21 5 1 3 16 0 16 33 1 33 3 1 48 46 0 46 51 1 51 48 1 49 48 0 48 50 1
		 50 49 1 47 14 0 14 17 1 17 47 1 45 47 0 47 50 1 50 45 1 59 57 1 57 60 0 60 59 1 52 1 0
		 1 54 0 54 52 1 12 13 1 13 57 0 57 12 1 56 58 0 58 59 1 59 56 1 60 56 1 61 64 0 64 65 1
		 65 61 1 64 52 0 52 2 1 2 64 1 62 55 1 55 53 1 53 62 0 9 67 0 67 68 1 68 9 1 66 65 1
		 65 63 1 63 66 0 67 10 0 4 45 0 45 51 1 51 4 1 8 13 0 12 8 1 12 4 0 14 39 0 39 17 1
		 39 41 1 23 21 1 18 23 1 25 21 1 21 22 1 22 6 0 28 20 1 20 24 0 29 15 0 15 31 1 31 33 1
		 33 35 1 15 33 1 30 7 0 7 36 1 7 20 0 28 7 1 16 35 1 16 38 0 37 36 1 39 44 0 43 42 1
		 42 40 0 42 5 1 44 5 0 5 43 1 15 3 0 51 50 1 47 49 1 17 49 0 54 55 1 55 52 1 58 57 1
		 58 12 0 54 53 1 54 56 0 56 53 1 60 53 0 62 2 0 2 55 1 64 63 1 2 63 0 65 9 1 9 61 1
		 68 0 0 0 61 0 61 68 1 66 9 0;
	setAttr -s 85 -ch 255 ".fc[0:84]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 10 11 68
		f 3 3 4 5
		mu 0 3 4 46 8
		f 3 6 7 8
		mu 0 3 41 40 17
		f 3 9 10 11
		mu 0 3 18 29 31
		f 3 12 13 14
		mu 0 3 6 19 21
		f 3 15 16 17
		mu 0 3 27 25 23
		f 3 18 19 20
		mu 0 3 26 22 25
		f 3 21 22 23
		mu 0 3 24 26 27
		f 3 -24 24 25
		mu 0 3 24 27 28
		f 3 26 27 28
		mu 0 3 35 32 31
		f 3 29 30 31
		mu 0 3 28 23 31
		f 3 32 33 34
		mu 0 3 28 32 36
		f 3 35 36 37
		mu 0 3 38 37 35
		f 3 -34 -27 38
		mu 0 3 36 32 35
		f 3 39 40 41
		mu 0 3 34 30 36
		f 3 42 43 -36
		mu 0 3 38 34 37
		f 3 44 45 46
		mu 0 3 44 43 41
		f 3 -7 -46 47
		mu 0 3 40 41 43
		f 3 -14 48 49
		mu 0 3 21 19 42
		f 3 50 51 52
		mu 0 3 5 18 21
		f 3 53 54 55
		mu 0 3 3 16 33
		f 3 56 57 58
		mu 0 3 48 46 51
		f 3 59 60 61
		mu 0 3 49 48 50
		f 3 62 63 64
		mu 0 3 47 14 17
		f 3 65 66 67
		mu 0 3 45 47 50
		f 3 68 69 70
		mu 0 3 59 57 60
		f 3 71 72 73
		mu 0 3 52 1 54
		f 3 74 75 76
		mu 0 3 12 13 57
		f 3 77 78 79
		mu 0 3 56 58 59
		f 3 -80 -71 80
		mu 0 3 56 59 60
		f 3 81 82 83
		mu 0 3 61 64 65
		f 3 84 85 86
		mu 0 3 64 52 2
		f 3 87 88 89
		mu 0 3 62 55 53
		f 3 90 91 92
		mu 0 3 9 67 68
		f 3 93 94 95
		mu 0 3 66 65 63
		f 3 -92 96 -3
		mu 0 3 68 67 10
		f 3 97 98 99
		mu 0 3 4 45 51
		f 3 100 -75 101
		mu 0 3 8 13 12
		f 3 102 -6 -102
		mu 0 3 12 4 8
		f 3 -58 -4 -100
		mu 0 3 51 46 4
		f 3 -64 103 104
		mu 0 3 17 14 39
		f 3 105 -9 -105
		mu 0 3 39 41 17
		f 3 106 -52 107
		mu 0 3 23 21 18
		f 3 -12 -31 -108
		mu 0 3 18 31 23
		f 3 -107 -17 108
		mu 0 3 21 23 25
		f 3 109 110 -15
		mu 0 3 21 22 6
		f 3 -20 -110 -109
		mu 0 3 25 22 21
		f 3 -30 -25 -18
		mu 0 3 23 28 27
		f 3 -16 -23 -21
		mu 0 3 25 27 26
		f 3 111 112 -26
		mu 0 3 28 20 24
		f 3 -11 113 114
		mu 0 3 31 29 15
		f 3 115 116 -29
		mu 0 3 31 33 35
		f 3 117 -116 -115
		mu 0 3 15 33 31
		f 3 -28 -33 -32
		mu 0 3 31 32 28
		f 3 -41 118 119
		mu 0 3 36 30 7
		f 3 120 -112 121
		mu 0 3 7 20 28
		f 3 -35 -120 -122
		mu 0 3 28 36 7
		f 3 -117 -55 122
		mu 0 3 35 33 16
		f 3 123 -38 -123
		mu 0 3 16 38 35
		f 3 -37 124 -39
		mu 0 3 35 37 36
		f 3 -125 -44 -42
		mu 0 3 36 37 34
		f 3 -106 125 -47
		mu 0 3 41 39 44
		f 3 126 127 -48
		mu 0 3 43 42 40
		f 3 128 -53 -50
		mu 0 3 42 5 21
		f 3 -45 129 130
		mu 0 3 43 44 5
		f 3 -129 -127 -131
		mu 0 3 5 42 43
		f 3 -118 131 -56
		mu 0 3 33 15 3
		f 3 132 -61 -59
		mu 0 3 51 50 48
		f 3 -62 -67 133
		mu 0 3 49 50 47
		f 3 134 -134 -65
		mu 0 3 17 49 47
		f 3 -133 -99 -68
		mu 0 3 50 51 45
		f 3 135 136 -74
		mu 0 3 54 55 52
		f 3 -69 -79 137
		mu 0 3 57 59 58
		f 3 138 -77 -138
		mu 0 3 58 12 57
		f 3 -89 -136 139
		mu 0 3 53 55 54
		f 3 -140 140 141
		mu 0 3 53 54 56
		f 3 142 -142 -81
		mu 0 3 60 53 56
		f 3 -88 143 144
		mu 0 3 55 62 2
		f 3 -95 -83 145
		mu 0 3 63 65 64
		f 3 -87 146 -146
		mu 0 3 64 2 63
		f 3 -86 -137 -145
		mu 0 3 2 52 55
		f 3 -84 147 148
		mu 0 3 61 65 9
		f 3 149 150 151
		mu 0 3 68 0 61
		f 3 -149 -93 -152
		mu 0 3 61 9 68
		f 3 152 -148 -94
		mu 0 3 66 9 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim_Char_x_6_1" -p "Numbers";
	rename -uid "2227D4D2-4E68-4E32-5A03-58B576CC5A86";
	setAttr ".t" -type "double3" 3.7589146564284155 -2.2813623081462246 2.2204460492503131e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 2.7185572385787968 0.3275175597518683 0 ;
	setAttr ".sp" -type "double3" 2.7185572385787964 0.32751755975186825 0 ;
	setAttr ".spt" -type "double3" 4.4408920985006271e-016 5.5511151231257839e-017 0 ;
createNode mesh -n "Trim_Char_x_6_1Shape" -p "Trim_Char_x_6_1";
	rename -uid "02298C9F-41B4-B4C8-F752-039D4ABCCA1B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 72 ".uvst[0].uvsp[0:71]" -type "float2" 0.26259217 0.55524063
		 0.96815759 0.97375423 0.96815759 1 0.50105131 0 0 0.39786178 1 0.34163597 0.59546047
		 0.62586641 0.24276638 0.50345844 0.79271185 0.273352 0.49334365 0.56458551 0.53097856
		 0.039952666 0.22164176 0.35417098 0.0012987312 0.42857143 0.98280042 0.42857143 0.74880266
		 0.42857143 0.22814791 0.42857143 0.43828845 0.0028060668 0.43828845 0.054100726 0.1157544
		 0.14285715 0.30241376 0.14285715 0.25 0.051269874 0.25 0.14285715 0.018463211 0.2857143
		 0.23007844 0.2857143 0.25 0.22833361 0.90398985 0.14285715 0.75479734 0.14285715
		 0.75 0.045697149 0.75 0.13624518 0.75 0.071428575 0.66638201 0.071428575 0.59414423
		 0.0060624592 0.59414423 0.046492171 0.99303049 0.2857143 0.79243809 0.2857143 0.75
		 0.42857143 0.75 0.42658037 0.35938722 0.71428573 0.14877711 0.71428573 0.43828845
		 0.60930926 0.43828845 0.56075239 0.26979372 0.5714286 0.042539574 0.5714286 0.30409542
		 0.5714286 0.43828845 0.5714286 0.25 0.5714286 0.25 0.50620192 0.25 0.71428573 0.83888727
		 0.5714286 0.75 0.5714286 0.68735749 0.5 0.75 0.5 0.59414423 0.5714286 0.59414423
		 0.54958272 0.93517178 0.5 0.875 0.5 0.875 0.42857143 0.875 0.5502997 0.75 0.6059342
		 0.43828845 0.7909466 0.43828845 0.90397882 0.43828845 0.85714287 0.34502599 0.85714287
		 0.25 0.79755884 0.53464103 0.85714287 0.75 0.94510239 0.75 0.98927218 0.69083452
		 0.9285714 0.49761882 0.9285714 0.59414423 0.88929695 0.59414423 0.9285714 0.59414423
		 0.95996851;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 72 ".vt[0:71]"  2.62040854 0.36511123 0 2.91220808 0.64967608 0
		 2.91220808 0.66752172 0 2.71902752 -0.012486596 0 2.51172304 0.2581028 0 2.92539144 0.21987249 0
		 2.75807238 0.41312346 0 2.61220932 0.32990235 0 2.83970833 0.17344345 0 2.7158401 0.37147203 0
		 2.73140335 0.014480972 0 2.6035428 0.22839549 0 2.51230073 0.27898601 0 2.91811228 0.27894464 0
		 2.82131815 0.27892083 0 2.60619545 0.27898052 0 2.69307327 -0.010497759 0 2.69312358 0.024465391 0
		 2.55970788 0.084731758 0 2.63688374 0.084717676 0 2.61529374 0.022562709 0 2.61520076 0.084714457 0
		 2.51979828 0.18192703 0 2.606462 0.18178234 0 2.61437821 0.142608 0 2.88568425 0.084705666 0
		 2.82344294 0.084942259 0 2.82195759 0.018692918 0 2.82142782 0.080481067 0 2.82198501 0.036147188 0
		 2.78740859 0.036140658 0 2.75754452 -0.0083746212 0 2.75760436 0.018974824 0 2.92248535 0.18185046 0
		 2.83957791 0.18185022 0 2.82198501 0.27898353 0 2.82180882 0.27756643 0 2.66043997 0.47325259 0
		 2.57342196 0.47320056 0 2.69305539 0.40192148 0 2.6930716 0.36885604 0 2.62338686 0.37611809 0
		 2.5295639 0.37606886 0 2.63756776 0.37612674 0 2.69307089 0.37611809 0 2.61520076 0.37611809 0
		 2.61520052 0.33176821 0 2.61520076 0.47325262 0 2.85882616 0.376214 0 2.82198501 0.37611809 0
		 2.79606152 0.32753846 0 2.82198501 0.3275508 0 2.75752807 0.37611809 0 2.7575891 0.36138204 0
		 2.898803 0.32768348 0 2.87368107 0.3275508 0 2.87368107 0.27898353 0 2.87388587 0.3619428 0
		 2.82198429 0.39957803 0 2.6930716 0.52537715 0 2.69306183 0.60224545 0 2.69307089 0.57038718 0
		 2.65446663 0.57042396 0 2.61521649 0.52986002 0 2.73291135 0.57039529 0 2.82198811 0.63018674 0
		 2.82198358 0.66023469 0 2.79751015 0.61896545 0 2.71760917 0.61895263 0 2.75750518 0.5922783 0
		 2.75752807 0.61895442 0 2.75755382 0.64024401 0;
	setAttr -s 157 ".ed[0:156]"  1 2 0 2 66 0 66 1 1 34 56 1 56 36 1 36 34 0
		 4 22 0 22 11 1 11 4 1 20 16 0 16 17 1 17 20 1 18 20 0 20 21 1 21 18 1 21 19 1 19 24 0
		 24 21 1 24 18 1 25 26 1 26 28 0 28 25 1 29 28 1 28 30 0 30 29 1 27 29 1 30 27 1 3 31 0
		 31 10 1 10 3 1 33 34 1 34 8 0 8 33 1 35 14 1 14 36 0 36 35 1 48 58 0 58 49 1 49 48 1
		 41 37 0 37 47 1 47 41 1 0 41 0 41 45 1 45 0 1 42 12 0 12 15 1 15 42 1 38 42 0 42 45 1
		 45 38 1 54 57 0 57 55 1 55 54 1 49 52 1 52 53 1 53 49 1 35 51 1 51 14 1 44 40 1 40 9 0
		 9 44 1 55 56 1 56 54 1 35 56 1 55 35 1 49 51 1 51 48 1 39 9 1 9 52 1 52 39 1 61 60 1
		 60 62 0 62 61 1 59 62 1 62 63 0 63 59 1 63 38 0 38 47 1 47 63 1 59 64 0 64 61 1 61 59 1
		 67 65 0 65 66 1 66 67 1 69 67 0 67 70 1 70 69 1 64 69 0 69 68 1 68 64 1 71 68 0 68 70 1
		 70 71 1 39 43 0 43 44 1 44 39 1 65 1 0 33 5 0 5 34 1 5 13 0 13 34 1 13 56 1 22 23 1
		 23 11 0 12 4 0 4 15 1 11 15 0 20 19 1 17 19 0 24 23 0 22 24 1 22 18 0 27 25 0 25 29 1
		 32 31 1 31 27 0 27 32 1 30 32 0 32 10 0 16 3 0 3 17 1 10 17 0 8 26 0 25 8 1 25 33 0
		 47 45 1 43 40 1 45 46 1 46 0 1 43 0 0 46 43 1 46 40 0 7 46 0 45 7 1 42 7 1 15 7 0
		 50 51 1 49 50 1 53 50 0 50 14 0 9 53 0 13 54 0 55 51 1 57 51 1 57 48 0 58 52 1 58 6 0
		 6 52 1 6 39 0 37 63 1 37 59 0 67 71 1 66 71 0 64 60 1 68 60 0;
	setAttr -s 85 -ch 255 ".fc[0:84]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 1 2 66
		f 3 3 4 5
		mu 0 3 34 56 36
		f 3 6 7 8
		mu 0 3 4 22 11
		f 3 9 10 11
		mu 0 3 20 16 17
		f 3 12 13 14
		mu 0 3 18 20 21
		f 3 15 16 17
		mu 0 3 21 19 24
		f 3 -15 -18 18
		mu 0 3 18 21 24
		f 3 19 20 21
		mu 0 3 25 26 28
		f 3 22 23 24
		mu 0 3 29 28 30
		f 3 25 -25 26
		mu 0 3 27 29 30
		f 3 27 28 29
		mu 0 3 3 31 10
		f 3 30 31 32
		mu 0 3 33 34 8
		f 3 33 34 35
		mu 0 3 35 14 36
		f 3 36 37 38
		mu 0 3 48 58 49
		f 3 39 40 41
		mu 0 3 41 37 47
		f 3 42 43 44
		mu 0 3 0 41 45
		f 3 45 46 47
		mu 0 3 42 12 15
		f 3 48 49 50
		mu 0 3 38 42 45
		f 3 51 52 53
		mu 0 3 54 57 55
		f 3 54 55 56
		mu 0 3 49 52 53
		f 3 -34 57 58
		mu 0 3 14 35 51
		f 3 59 60 61
		mu 0 3 44 40 9
		f 3 -54 62 63
		mu 0 3 54 55 56
		f 3 64 -63 65
		mu 0 3 35 56 55
		f 3 -39 66 67
		mu 0 3 48 49 51
		f 3 68 69 70
		mu 0 3 39 9 52
		f 3 71 72 73
		mu 0 3 61 60 62
		f 3 74 75 76
		mu 0 3 59 62 63
		f 3 77 78 79
		mu 0 3 63 38 47
		f 3 80 81 82
		mu 0 3 59 64 61
		f 3 83 84 85
		mu 0 3 67 65 66
		f 3 86 87 88
		mu 0 3 69 67 70
		f 3 89 90 91
		mu 0 3 64 69 68
		f 3 92 93 94
		mu 0 3 71 68 70
		f 3 95 96 97
		mu 0 3 39 43 44
		f 3 -85 98 -3
		mu 0 3 66 65 1
		f 3 -65 -36 -5
		mu 0 3 56 35 36
		f 3 -31 99 100
		mu 0 3 34 33 5
		f 3 101 102 -101
		mu 0 3 5 13 34
		f 3 -4 -103 103
		mu 0 3 56 34 13
		f 3 104 105 -8
		mu 0 3 22 23 11
		f 3 -47 106 107
		mu 0 3 15 12 4
		f 3 -9 108 -108
		mu 0 3 4 11 15
		f 3 -16 -14 109
		mu 0 3 19 21 20
		f 3 -12 110 -110
		mu 0 3 20 17 19
		f 3 111 -105 112
		mu 0 3 24 23 22
		f 3 113 -19 -113
		mu 0 3 22 18 24
		f 3 -26 114 115
		mu 0 3 29 27 25
		f 3 -23 -116 -22
		mu 0 3 28 29 25
		f 3 116 117 118
		mu 0 3 32 31 27
		f 3 119 -119 -27
		mu 0 3 30 32 27
		f 3 -117 120 -29
		mu 0 3 31 32 10
		f 3 -11 121 122
		mu 0 3 17 16 3
		f 3 -30 123 -123
		mu 0 3 3 10 17
		f 3 124 -20 125
		mu 0 3 8 26 25
		f 3 -126 126 -33
		mu 0 3 8 25 33
		f 3 127 -44 -42
		mu 0 3 47 45 41
		f 3 -60 -97 128
		mu 0 3 40 44 43
		f 3 129 130 -45
		mu 0 3 45 46 0
		f 3 131 -131 132
		mu 0 3 43 0 46
		f 3 -133 133 -129
		mu 0 3 43 46 40
		f 3 134 -130 135
		mu 0 3 7 46 45
		f 3 -136 -50 136
		mu 0 3 7 45 42
		f 3 -48 137 -137
		mu 0 3 42 15 7
		f 3 -128 -79 -51
		mu 0 3 45 47 38
		f 3 138 -67 139
		mu 0 3 50 51 49
		f 3 140 -140 -57
		mu 0 3 53 50 49
		f 3 -139 141 -59
		mu 0 3 51 50 14
		f 3 142 -56 -70
		mu 0 3 9 53 52
		f 3 -69 -98 -62
		mu 0 3 9 39 44
		f 3 -104 143 -64
		mu 0 3 56 13 54
		f 3 144 -58 -66
		mu 0 3 55 51 35
		f 3 -145 -53 145
		mu 0 3 51 55 57
		f 3 146 -68 -146
		mu 0 3 57 48 51
		f 3 -55 -38 147
		mu 0 3 52 49 58
		f 3 -148 148 149
		mu 0 3 52 58 6
		f 3 -150 150 -71
		mu 0 3 52 6 39
		f 3 -83 -74 -75
		mu 0 3 59 61 62
		f 3 -80 -41 151
		mu 0 3 63 47 37
		f 3 152 -77 -152
		mu 0 3 37 59 63
		f 3 -95 -88 153
		mu 0 3 71 70 67
		f 3 154 -154 -86
		mu 0 3 66 71 67
		f 3 -89 -94 -91
		mu 0 3 69 70 68
		f 3 -72 -82 155
		mu 0 3 60 61 64
		f 3 -92 156 -156
		mu 0 3 64 68 60;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim_Char_x_7_1" -p "Numbers";
	rename -uid "BA17AE9F-48E5-E3F6-069E-4CB62A606E77";
	setAttr ".t" -type "double3" 2.1302448843856245 -1.9684868768379884 2.2204460492503131e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 3.2066603899002084 0.32025606883689767 0 ;
	setAttr ".sp" -type "double3" 3.2066603899002075 0.32025606883689761 0 ;
	setAttr ".spt" -type "double3" 8.8817841970012543e-016 5.5511151231257839e-017 0 ;
createNode mesh -n "Trim_Char_x_7_1Shape" -p "Trim_Char_x_7_1";
	rename -uid "241FB110-4DEA-CAC8-E885-F987B6E3307B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0 0.7680636 0.033838972
		 0.76011562 0.8144691 0.88222545 0.51656795 0.8830865 0.34189031 0 0.47257876 1.3482712e-016
		 1 0.97254336 1 1 0.15169194 1 0.57146174 0.42857143 0.7049979 0.42857143 0.5 0.29516432
		 0.5 0.050563648 0.41841412 0.14285715 0.5 0.14285715 0.49493793 0.2857143 0.5 0.2857143
		 0.55005181 0.14285715 0.62752485 0.2857143 0.72450936 0.71428573 0.85994399 0.71428573
		 0.64798558 0.5714286 0.78247094 0.5714286 0.75 0.51155353 0.75 0.5714286 0.75 0.71428573
		 0.5 0.88307822 0.5 1 0.17482713 0.85714287 0.058259971 0.85714287 0.25 0.87548023
		 0.25 1 0.8010332 0.85714287 0.93741703 0.85714287 0.75 0.76187247 0.75 0.88232911
		 0.75 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 37 ".vt[0:36]"  2.99998903 0.49919432 0 3.013976336 0.49388888 0
		 3.33664393 0.57539988 0 3.21350861 0.5759747 0 3.14130688 -0.013504774 0 3.19532609 -0.013504774 0
		 3.41333175 0.63568902 0 3.41333175 0.65401691 0 3.062689781 0.65401691 0 3.23619866 0.27257594 0
		 3.29139471 0.27257594 0 3.20666051 0.1835238 0 3.20666051 0.020247558 0 3.17293763 0.081855468 0
		 3.20666051 0.081855468 0 3.20456815 0.17721571 0 3.20666051 0.17721571 0 3.22734904 0.081855468 0
		 3.25937176 0.17721571 0 3.2994597 0.46329644 0 3.35544062 0.46329644 0 3.26782918 0.36793619 0
		 3.32341766 0.36793619 0 3.30999613 0.3279683 0 3.30999613 0.36793619 0 3.30999613 0.46329644 0
		 3.20666051 0.57596916 0 3.20666051 0.65401691 0 3.072196245 0.55876285 0 3.024070501 0.55865669 0
		 3.10352039 0.57002395 0 3.10332489 0.65401691 0 3.33109021 0.55865669 0 3.38746357 0.55865669 0
		 3.30999613 0.49506164 0 3.30999613 0.57546902 0 3.30999613 0.65401691 0;
	setAttr -s 75 ".ed[0:74]"  2 32 0 32 33 1 33 2 1 11 16 1 16 18 1 18 11 1
		 11 15 0 15 16 1 4 5 0 5 12 0 12 4 1 15 13 0 13 14 1 14 15 1 14 12 1 12 17 0 17 14 1
		 16 14 1 17 16 1 22 20 0 20 25 1 25 22 1 23 22 0 22 24 1 24 23 1 21 9 0 9 10 1 10 21 1
		 19 21 0 21 24 1 24 19 1 26 27 1 27 31 0 31 26 1 1 28 0 28 29 1 29 1 1 30 31 1 31 8 0
		 8 30 1 34 25 1 20 34 1 34 19 0 19 25 1 3 35 0 35 36 1 36 3 1 35 2 0 2 36 1 33 6 0
		 6 2 1 6 7 0 7 36 0 36 6 1 18 10 0 9 18 1 9 11 0 13 12 1 13 4 0 17 18 0 25 24 1 21 23 1
		 10 23 0 30 26 0 29 0 0 0 1 0 8 29 0 28 8 1 28 30 0 20 33 0 32 20 1 32 34 0 26 3 0
		 3 27 1 36 27 0;
	setAttr -s 39 -ch 117 ".fc[0:38]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 2 32 33
		f 3 3 4 5
		mu 0 3 11 16 18
		f 3 6 7 -4
		mu 0 3 11 15 16
		f 3 8 9 10
		mu 0 3 4 5 12
		f 3 11 12 13
		mu 0 3 15 13 14
		f 3 14 15 16
		mu 0 3 14 12 17
		f 3 17 -17 18
		mu 0 3 16 14 17
		f 3 19 20 21
		mu 0 3 22 20 25
		f 3 22 23 24
		mu 0 3 23 22 24
		f 3 25 26 27
		mu 0 3 21 9 10
		f 3 28 29 30
		mu 0 3 19 21 24
		f 3 31 32 33
		mu 0 3 26 27 31
		f 3 34 35 36
		mu 0 3 1 28 29
		f 3 37 38 39
		mu 0 3 30 31 8
		f 3 40 -21 41
		mu 0 3 34 25 20
		f 3 42 43 -41
		mu 0 3 34 19 25
		f 3 44 45 46
		mu 0 3 3 35 36
		f 3 -46 47 48
		mu 0 3 36 35 2
		f 3 49 50 -3
		mu 0 3 33 6 2
		f 3 51 52 53
		mu 0 3 6 7 36
		f 3 -49 -51 -54
		mu 0 3 36 2 6
		f 3 54 -27 55
		mu 0 3 18 10 9
		f 3 -56 56 -6
		mu 0 3 18 9 11
		f 3 -15 -13 57
		mu 0 3 12 14 13
		f 3 -58 58 -11
		mu 0 3 12 13 4
		f 3 -18 -8 -14
		mu 0 3 14 16 15
		f 3 59 -5 -19
		mu 0 3 17 18 16
		f 3 60 -24 -22
		mu 0 3 25 24 22
		f 3 -25 -30 61
		mu 0 3 23 24 21
		f 3 -28 62 -62
		mu 0 3 21 10 23
		f 3 -61 -44 -31
		mu 0 3 24 25 19
		f 3 -38 63 -34
		mu 0 3 31 30 26
		f 3 64 65 -37
		mu 0 3 29 0 1
		f 3 66 -36 67
		mu 0 3 8 29 28
		f 3 68 -40 -68
		mu 0 3 28 30 8
		f 3 69 -2 70
		mu 0 3 20 33 32
		f 3 -71 71 -42
		mu 0 3 20 32 34
		f 3 -32 72 73
		mu 0 3 27 26 3
		f 3 -47 74 -74
		mu 0 3 3 36 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim_Char_x_8_1" -p "Numbers";
	rename -uid "371E3C6F-43EC-8608-92BB-9B86288B9004";
	setAttr ".t" -type "double3" 0.79647666755848867 -1.1412299864244542 2.2204460492503131e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 3.7054759263992318 0.32795185875147587 0 ;
	setAttr ".sp" -type "double3" 3.705475926399231 0.32795185875147581 0 ;
	setAttr ".spt" -type "double3" 8.8817841970012543e-016 5.5511151231257839e-017 0 ;
createNode mesh -n "Trim_Char_x_8_1Shape" -p "Trim_Char_x_8_1";
	rename -uid "CA0D8658-492A-0E75-6C5A-C5A5D028309C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 90 ".uvst[0].uvsp[0:89]" -type "float2" 0.60485935 0.55042613
		 0.34398976 0.50213069 0.4961637 1 0.96163684 0.79261363 0.019181585 0.77059656 0.49488491
		 0 0 0.23650569 1 0.24573864 0.54475701 0.578125 0.49854472 0.95880729 0.2046096 0.81869799
		 0.78005666 0.79933709 0.40409207 0.47514203 0.51534528 0.038352273 0.81969309 0.18678977
		 0.19565217 0.24005681 0.18010694 0.42857143 0.85797662 0.42857143 0.50853503 0.42857143
		 0.31970158 0.42857143 0.039783422 0.14285715 0.95776808 0.14285715 0.80812567 0.14285715
		 0.23000664 0.14285715 0.33333334 0.010814349 0.33333334 0.06931068 0.1350807 0.071428575
		 0.32819438 0.071428575 0.16666667 0.056156792 0.16666667 0.071428575 0.16666667 0.14285715
		 0.66666669 0.01220714 0.66666669 0.056340367 0.85933393 0.071428575 0.71349168 0.071428575
		 0.83333331 0.059031978 0.83333331 0.071428575 0.83333331 0.14285715 0.011508646 0.2857143
		 0.20159931 0.2857143 0.069996238 0.35714287 0.23865457 0.35714287 0.16666667 0.2857143
		 0.16666667 0.35714287 0.16666667 0.42138931 0.99383026 0.2857143 0.76206994 0.2857143
		 0.66666669 0.42857143 0.66666669 0.34883481 0.92633188 0.71428573 0.03223655 0.71428573
		 0.27203637 0.71428573 0.7515946 0.71428573 0.33333334 0.50698119 0.33333334 0.49783337
		 0.33333334 0.67414117 0.33333334 0.43727642 0.19946171 0.5714286 0.33333334 0.5714286
		 0.089513555 0.64285713 0.33333334 0.64285713 0.16666667 0.5896548 0.16666667 0.64285713
		 0.16666667 0.71428573 0.66444159 0.5714286 0.66666669 0.52378547 0.66666669 0.57223272
		 0.66666669 0.64265102 0.83168703 0.64285713 0.66700357 0.64285713 0.83333331 0.64375597
		 0.83333331 0.71428573 0.33333334 0.98863673 0.33333334 0.93525994 0.051203899 0.85714287
		 0.2149737 0.85714287 0.14281552 0.9285714 0.31392676 0.9285714 0.16666667 0.85714287
		 0.16666667 0.9285714 0.16666667 0.94058162 0.93937868 0.85714287 0.76615405 0.85714287
		 0.66666669 0.9875201 0.66666669 0.93376517 0.84970993 0.9285714 0.6799159 0.9285714
		 0.83333331 0.9285714 0.83333331 0.85714287 0.83333331 0.93700022;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".vt[0:89]"  3.7451632 0.36221734 0 3.64677143 0.32942003 0
		 3.70416665 0.66754347 0 3.8800745 0.52668995 0 3.52412319 0.5117355 0 3.70368457 -0.011639753 0
		 3.51675653 0.14903493 0 3.89419532 0.15530489 0 3.7224946 0.38102755 0 3.70506477 0.63953829 0
		 3.59415102 0.54439968 0 3.81131434 0.53125203 0 3.66944003 0.31109211 0 3.71139884 0.014275479 0
		 3.82620454 0.11527284 0 3.59082389 0.1514464 0 3.58495545 0.27947086 0 3.8406868 0.27951589 0
		 3.70893836 0.2795946 0 3.63761044 0.27946621 0 3.5320456 0.08544407 0 3.87828755 0.085429452 0
		 3.82172918 0.085469529 0 3.60382867 0.085459076 0 3.64276052 -0.0041994546 0 3.64271021 0.035435475 0
		 3.5680654 0.037024096 0 3.64077044 0.036874428 0 3.57997727 0.026669577 0 3.57989049 0.036931425 0
		 3.57989049 0.085438371 0 3.76836586 -0.0029139577 0 3.76864648 0.026323318 0 3.8411386 0.036936682 0
		 3.78627539 0.036739536 0 3.83119369 0.028699007 0 3.83133674 0.036931425 0 3.83133674 0.085438371 0
		 3.52111149 0.18251985 0 3.59306622 0.18245225 0 3.5433352 0.23102118 0 3.60704231 0.23095919 0
		 3.57989049 0.18245226 0 3.57989049 0.23095921 0 3.57988834 0.274591 0 3.89180708 0.18244097 0
		 3.80387735 0.18206777 0 3.76847506 0.27946615 0 3.76847458 0.2253167 0 3.86726856 0.47306359 0
		 3.52886724 0.47341019 0 3.61928248 0.47324184 0 3.80045152 0.47351694 0 3.64275146 0.33271322 0
		 3.64275169 0.32650226 0 3.64273047 0.44621009 0 3.64275193 0.28537774 0 3.59218335 0.37640029 0
		 3.64275217 0.37648004 0 3.55077505 0.42497665 0 3.64275217 0.42498699 0 3.57982159 0.38879171 0
		 3.57989049 0.42498699 0 3.57989049 0.47349393 0 3.76762486 0.37649715 0 3.76852489 0.34418958 0
		 3.76846313 0.37704456 0 3.76851225 0.42481345 0 3.83064747 0.42505723 0 3.76863909 0.42495373 0
		 3.83127141 0.42566413 0 3.83133674 0.47349393 0 3.64289665 0.65930331 0 3.64259052 0.62384939 0
		 3.53605843 0.57062882 0 3.59777713 0.57060724 0 3.57054305 0.61939222 0 3.6351912 0.61938089 0
		 3.57989049 0.57050782 0 3.57989049 0.61901474 0 3.57976222 0.62733209 0 3.87128735 0.57048893 0
		 3.80597115 0.57049966 0 3.768471 0.65903282 0 3.7685225 0.62261426 0 3.83755946 0.61906236 0
		 3.77352357 0.61908227 0 3.83133674 0.61901474 0 3.83133674 0.57050782 0 3.83136368 0.62476951 0;
	setAttr -s 199 ".ed";
	setAttr ".ed[0:165]"  85 89 0 89 87 1 87 85 1 17 47 1 47 48 1 48 17 1 33 21 0
		 21 37 1 37 33 1 29 27 1 27 23 0 23 29 1 24 25 1 25 27 0 27 24 1 26 28 0 28 29 1 29 26 1
		 29 30 1 30 26 1 5 31 0 31 13 1 13 5 1 35 33 0 33 36 1 36 35 1 36 34 1 34 35 1 22 34 0
		 36 22 1 44 43 1 43 41 1 41 44 1 20 30 1 30 15 1 15 20 1 39 41 0 43 39 1 40 38 0 38 42 1
		 42 40 1 44 40 0 40 43 1 7 45 0 45 46 1 46 7 1 47 18 1 18 48 0 70 49 0 49 71 1 71 70 1
		 51 63 1 63 62 1 62 51 1 57 53 0 53 58 1 58 57 1 58 60 1 60 57 1 59 61 0 61 62 1 62 59 1
		 63 50 1 50 59 0 59 63 1 17 65 0 65 47 1 0 8 1 8 58 1 58 0 1 8 55 0 55 60 1 60 8 1
		 68 69 1 69 67 0 67 68 1 71 52 1 52 70 1 80 79 1 79 77 1 77 80 1 51 10 0 10 63 1 75 77 0
		 79 75 1 76 74 0 74 78 1 78 76 1 80 76 0 76 79 1 3 81 0 81 11 1 11 3 1 2 72 0 72 9 1
		 9 2 1 87 88 1 88 85 1 87 86 1 86 82 0 82 87 1 83 84 1 84 86 0 86 83 1 16 19 1 19 56 0
		 56 16 1 45 17 0 17 46 1 48 46 0 37 36 1 23 30 1 28 27 1 28 24 0 20 26 0 31 32 1 32 13 0
		 24 5 0 5 25 1 13 25 0 34 32 0 31 34 1 31 35 0 37 22 1 41 19 0 16 41 1 16 44 0 15 39 0
		 39 42 1 42 15 1 23 15 0 15 38 1 38 6 0 6 15 1 6 20 0 43 42 1 14 22 0 37 14 1 14 21 1
		 21 7 0 7 14 1 46 14 0 62 60 1 55 62 1 55 51 0 61 60 1 61 57 0 54 56 1 56 12 0 12 54 1
		 65 18 1 12 18 0 18 0 1 0 12 1 58 12 1 65 0 0 53 1 0 1 58 1 12 1 1 1 54 0 64 66 0
		 66 67 1 67 64 1 0 64 0 64 8 1 67 8 0;
	setAttr ".ed[166:198]" 66 68 0 52 69 0 68 52 1 68 70 0 77 73 0 73 72 1 72 77 1
		 72 80 0 10 75 0 75 78 1 78 10 1 4 50 0 63 4 1 10 74 1 74 4 0 4 10 1 79 78 1 88 82 1
		 82 11 0 11 88 1 11 52 0 71 11 1 49 3 0 3 71 1 81 88 1 73 9 0 9 84 0 83 9 1 83 2 0
		 81 85 0 89 86 1 89 83 0 54 16 0;
	setAttr -s 108 -ch 324 ".fc[0:107]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 85 89 87
		f 3 3 4 5
		mu 0 3 17 47 48
		f 3 6 7 8
		mu 0 3 33 21 37
		f 3 9 10 11
		mu 0 3 29 27 23
		f 3 12 13 14
		mu 0 3 24 25 27
		f 3 15 16 17
		mu 0 3 26 28 29
		f 3 -18 18 19
		mu 0 3 26 29 30
		f 3 20 21 22
		mu 0 3 5 31 13
		f 3 23 24 25
		mu 0 3 35 33 36
		f 3 -26 26 27
		mu 0 3 35 36 34
		f 3 28 -27 29
		mu 0 3 22 34 36
		f 3 30 31 32
		mu 0 3 44 43 41
		f 3 33 34 35
		mu 0 3 20 30 15
		f 3 36 -32 37
		mu 0 3 39 41 43
		f 3 38 39 40
		mu 0 3 40 38 42
		f 3 41 42 -31
		mu 0 3 44 40 43
		f 3 43 44 45
		mu 0 3 7 45 46
		f 3 46 47 -5
		mu 0 3 47 18 48
		f 3 48 49 50
		mu 0 3 70 49 71
		f 3 51 52 53
		mu 0 3 51 63 62
		f 3 54 55 56
		mu 0 3 57 53 58
		f 3 -57 57 58
		mu 0 3 57 58 60
		f 3 59 60 61
		mu 0 3 59 61 62
		f 3 62 63 64
		mu 0 3 63 50 59
		f 3 65 66 -4
		mu 0 3 17 65 47
		f 3 67 68 69
		mu 0 3 0 8 58
		f 3 70 71 72
		mu 0 3 8 55 60
		f 3 73 74 75
		mu 0 3 68 69 67
		f 3 -51 76 77
		mu 0 3 70 71 52
		f 3 78 79 80
		mu 0 3 80 79 77
		f 3 -52 81 82
		mu 0 3 63 51 10
		f 3 83 -80 84
		mu 0 3 75 77 79
		f 3 85 86 87
		mu 0 3 76 74 78
		f 3 88 89 -79
		mu 0 3 80 76 79
		f 3 90 91 92
		mu 0 3 3 81 11
		f 3 93 94 95
		mu 0 3 2 72 9
		f 3 -3 96 97
		mu 0 3 85 87 88
		f 3 98 99 100
		mu 0 3 87 86 82
		f 3 101 102 103
		mu 0 3 83 84 86
		f 3 104 105 106
		mu 0 3 16 19 56
		f 3 -45 107 108
		mu 0 3 46 45 17
		f 3 109 -109 -6
		mu 0 3 48 46 17
		f 3 110 -25 -9
		mu 0 3 37 36 33
		f 3 111 -19 -12
		mu 0 3 23 30 29
		f 3 -10 -17 112
		mu 0 3 27 29 28
		f 3 -113 113 -15
		mu 0 3 27 28 24
		f 3 -34 114 -20
		mu 0 3 30 20 26
		f 3 115 116 -22
		mu 0 3 31 32 13
		f 3 -13 117 118
		mu 0 3 25 24 5
		f 3 -23 119 -119
		mu 0 3 5 13 25
		f 3 120 -116 121
		mu 0 3 34 32 31
		f 3 -122 122 -28
		mu 0 3 34 31 35
		f 3 -111 123 -30
		mu 0 3 36 37 22
		f 3 124 -105 125
		mu 0 3 41 19 16
		f 3 126 -33 -126
		mu 0 3 16 44 41
		f 3 127 128 129
		mu 0 3 15 39 42
		f 3 -112 130 -35
		mu 0 3 30 23 15
		f 3 131 132 133
		mu 0 3 15 38 6
		f 3 134 -36 -134
		mu 0 3 6 20 15
		f 3 -40 -132 -130
		mu 0 3 42 38 15
		f 3 135 -129 -38
		mu 0 3 43 42 39
		f 3 -136 -43 -41
		mu 0 3 42 43 40
		f 3 136 -124 137
		mu 0 3 14 22 37
		f 3 138 139 140
		mu 0 3 14 21 7
		f 3 141 -141 -46
		mu 0 3 46 14 7
		f 3 -8 -139 -138
		mu 0 3 37 21 14
		f 3 142 -72 143
		mu 0 3 62 60 55
		f 3 144 -54 -144
		mu 0 3 55 51 62
		f 3 -143 -61 145
		mu 0 3 60 62 61
		f 3 146 -59 -146
		mu 0 3 61 57 60
		f 3 -62 -53 -65
		mu 0 3 59 62 63
		f 3 147 148 149
		mu 0 3 54 56 12
		f 3 -47 -67 150
		mu 0 3 18 47 65
		f 3 151 152 153
		mu 0 3 12 18 0
		f 3 -70 154 -154
		mu 0 3 0 58 12
		f 3 155 -153 -151
		mu 0 3 65 0 18
		f 3 -56 156 157
		mu 0 3 58 53 1
		f 3 158 159 -150
		mu 0 3 12 1 54
		f 3 -159 -155 -158
		mu 0 3 1 12 58
		f 3 160 161 162
		mu 0 3 64 66 67
		f 3 -68 163 164
		mu 0 3 8 0 64
		f 3 -58 -69 -73
		mu 0 3 60 58 8
		f 3 165 -165 -163
		mu 0 3 67 8 64
		f 3 -162 166 -76
		mu 0 3 67 66 68
		f 3 167 -74 168
		mu 0 3 52 69 68
		f 3 169 -78 -169
		mu 0 3 68 70 52
		f 3 170 171 172
		mu 0 3 77 73 72
		f 3 173 -81 -173
		mu 0 3 72 80 77
		f 3 174 175 176
		mu 0 3 10 75 78
		f 3 177 -63 178
		mu 0 3 4 50 63
		f 3 179 180 181
		mu 0 3 10 74 4
		f 3 -182 -179 -83
		mu 0 3 10 4 63
		f 3 -87 -180 -177
		mu 0 3 78 74 10
		f 3 182 -176 -85
		mu 0 3 79 78 75
		f 3 -183 -90 -88
		mu 0 3 78 79 76
		f 3 183 184 185
		mu 0 3 88 82 11
		f 3 186 -77 187
		mu 0 3 11 52 71
		f 3 -50 188 189
		mu 0 3 71 49 3
		f 3 -93 -188 -190
		mu 0 3 3 11 71
		f 3 -92 190 -186
		mu 0 3 11 81 88
		f 3 -172 191 -95
		mu 0 3 72 73 9
		f 3 192 -102 193
		mu 0 3 9 84 83
		f 3 194 -96 -194
		mu 0 3 83 2 9
		f 3 -191 195 -98
		mu 0 3 88 81 85
		f 3 -184 -97 -101
		mu 0 3 82 88 87
		f 3 -99 -2 196
		mu 0 3 86 87 89
		f 3 -197 197 -104
		mu 0 3 86 89 83
		f 3 -148 198 -107
		mu 0 3 56 54 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14";
	rename -uid "65CB148A-4564-371E-1FD4-F6AB48603A81";
	setAttr ".t" -type "double3" 0 1.8973333038386195 0.23581639834371682 ;
	setAttr ".s" -type "double3" 2.4992311198516184 2.4992311198516184 0.10331449751025439 ;
createNode mesh -n "pCubeShape10" -p "pCube14";
	rename -uid "FCF1FA72-4B0F-A5BB-C71F-64B12A7329B4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder4";
	rename -uid "3E9DA0BE-453D-A5DE-9489-C3B3713B76CC";
	setAttr ".t" -type "double3" 0 0 18.012261360127724 ;
	setAttr ".s" -type "double3" 1 0.11995100508912585 1 ;
createNode transform -n "transform9" -p "pCylinder4";
	rename -uid "52E7E75E-4151-1A11-E128-43831D7C6A62";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape4" -p "transform9";
	rename -uid "6F4A0784-45A5-698C-DDA5-0DA9BBB53735";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41250000894069672 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube15";
	rename -uid "C1FE98B1-4A96-9782-F76B-5C99B7CF522B";
	setAttr ".t" -type "double3" 0 0 11.916510462408999 ;
	setAttr ".s" -type "double3" 0.51864282617059088 0.25664539254003443 6.5668833226443057 ;
createNode transform -n "transform8" -p "pCube15";
	rename -uid "3198D566-41EB-869B-6E44-08AB131D3D4D";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform8";
	rename -uid "E1867428-4E89-5CFC-DED7-839EDC365DDF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube16";
	rename -uid "3F02984B-4F5D-9F7E-A3E2-0DAD33F3DB85";
	setAttr ".t" -type "double3" 3.9678164761812993 0 11.916510462408999 ;
	setAttr ".s" -type "double3" 0.51864282617059088 0.25664539254003443 6.5668833226443057 ;
createNode transform -n "transform11" -p "pCube16";
	rename -uid "0F1D4840-4082-8F84-5974-588F4086EEEF";
	setAttr ".v" no;
createNode mesh -n "pCubeShape16" -p "transform11";
	rename -uid "7F4358AB-4EF7-E70F-C410-A387B41FDDCA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:36]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 46 ".uvst[0].uvsp[0:45]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5
		 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5
		 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5
		 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5
		 0.625 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -0.5 -0.5 0.46926451 0.5 -0.5 0.46926451
		 -0.5 0.5 0.46926451 0.5 0.5 0.46926451 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -1.86116993 0.5 -0.52588868 1.86116993 0.5 -0.52588868 1.86116993 -0.5 -0.52588868
		 -1.86116993 -0.5 -0.52588868 -2.84702468 0.5 -0.61979389 2.84702468 0.5 -0.61979389
		 2.84702468 -0.5 -0.61979389 -2.84702468 -0.5 -0.61979389 -3.055958986 0.5 -0.69778252
		 3.055958986 0.5 -0.69778252 3.055958986 -0.5 -0.69778252 -3.055958986 -0.5 -0.69778252
		 -2.4512682 0.5 -0.78173172 2.4512682 0.5 -0.78173172 2.4512682 -0.5 -0.78173172 -2.4512682 -0.5 -0.78173172
		 -1.41368377 0.5 -0.87344229 1.41368377 0.5 -0.87344229 1.41368377 -0.5 -0.87344229
		 -1.41368377 -0.5 -0.87344229 -0.96703547 0.5 -0.94911766 0.96703547 0.5 -0.94911766
		 0.96703547 -0.5 -0.94911766 -0.96703547 -0.5 -0.94911766 -0.46295112 0.5 -1.31349242
		 0.46295112 0.5 -1.31349242 0.46295112 -0.5 -1.31349242 -0.46295112 -0.5 -1.31349242
		 -0.26819915 0.5 -1.37786222 0.26819915 0.5 -1.37786222 0.26819915 -0.5 -1.37786222
		 -0.26819915 -0.5 -1.37786222;
	setAttr -s 76 ".ed[0:75]"  0 1 0 2 3 0 4 5 1 6 7 1 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 1 7 10 0 9 10 0 6 11 0 11 10 1 8 11 0
		 8 12 0 9 13 0 12 13 1 10 14 0 13 14 1 11 15 0 15 14 1 12 15 1 12 16 0 13 17 0 16 17 1
		 14 18 0 17 18 0 15 19 0 19 18 1 16 19 0 16 20 0 17 21 0 20 21 1 18 22 0 21 22 1 19 23 0
		 23 22 1 20 23 1 20 24 0 21 25 0 24 25 1 22 26 0 25 26 1 23 27 0 27 26 1 24 27 1 24 28 0
		 25 29 0 28 29 1 26 30 0 29 30 1 27 31 0 31 30 1 28 31 1 28 32 0 29 33 0 32 33 1 30 34 0
		 33 34 1 31 35 0 35 34 1 32 35 1 32 36 0 33 37 0 36 37 0 34 38 0 37 38 0 35 39 0 39 38 0
		 36 39 0;
	setAttr -s 37 -ch 148 ".fc[0:36]" -type "polyFaces" 
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 70 72 -75 -76
		mu 0 4 42 43 44 45
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 22 29 -31 -29
		mu 0 4 18 19 23 22
		f 4 24 31 -33 -30
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -28 28 35 -34
		mu 0 4 21 18 22 25
		f 4 30 37 -39 -37
		mu 0 4 22 23 27 26
		f 4 32 39 -41 -38
		mu 0 4 23 24 28 27
		f 4 -35 41 42 -40
		mu 0 4 24 25 29 28
		f 4 -36 36 43 -42
		mu 0 4 25 22 26 29
		f 4 38 45 -47 -45
		mu 0 4 26 27 31 30
		f 4 40 47 -49 -46
		mu 0 4 27 28 32 31
		f 4 -43 49 50 -48
		mu 0 4 28 29 33 32
		f 4 -44 44 51 -50
		mu 0 4 29 26 30 33
		f 4 46 53 -55 -53
		mu 0 4 30 31 35 34
		f 4 48 55 -57 -54
		mu 0 4 31 32 36 35
		f 4 -51 57 58 -56
		mu 0 4 32 33 37 36
		f 4 -52 52 59 -58
		mu 0 4 33 30 34 37
		f 4 54 61 -63 -61
		mu 0 4 34 35 39 38
		f 4 56 63 -65 -62
		mu 0 4 35 36 40 39
		f 4 -59 65 66 -64
		mu 0 4 36 37 41 40
		f 4 -60 60 67 -66
		mu 0 4 37 34 38 41
		f 4 62 69 -71 -69
		mu 0 4 38 39 43 42
		f 4 64 71 -73 -70
		mu 0 4 39 40 44 43
		f 4 -67 73 74 -72
		mu 0 4 40 41 45 44
		f 4 -68 68 75 -74
		mu 0 4 41 38 42 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5";
	rename -uid "7357E232-4800-8321-FA38-13A72EAB426A";
	setAttr ".t" -type "double3" 3.9878243814037813 0 15.86087227940661 ;
	setAttr ".s" -type "double3" 0.83571172100393365 0.14041716015205477 0.83571172100393365 ;
createNode transform -n "transform10" -p "pCylinder5";
	rename -uid "700C9725-4597-10F8-0AF2-A69B901F6A51";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape5" -p "transform10";
	rename -uid "2DF37E83-4F2B-3FF0-B2B8-3ABDF78E0E26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:28]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41250000894069672 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.62640893 0.064408526
		 0.54828387 0.0076473951 0.45171607 0.00764741 0.37359107 0.064408556 0.34375 0.15625001
		 0.37359107 0.24809146 0.4517161 0.3048526 0.54828393 0.3048526 0.62640893 0.24809144
		 0.65625 0.15625 0.375 0.3125 0.40000001 0.3125 0.42500001 0.3125 0.45000002 0.3125
		 0.47500002 0.3125 0.5 0.3125 0.52499998 0.3125 0.54999995 0.3125 0.57499993 0.3125
		 0.5999999 0.3125 0.62499988 0.3125 0.375 0.68843985 0.40000001 0.68843985 0.42500001
		 0.68843985 0.45000002 0.68843985 0.47500002 0.68843985 0.5 0.68843985 0.52499998
		 0.68843985 0.54999995 0.68843985 0.57499993 0.68843985 0.5999999 0.68843985 0.62499988
		 0.68843985 0.62640893 0.75190854 0.54828387 0.6951474 0.45171607 0.6951474 0.37359107
		 0.75190854 0.34375 0.84375 0.37359107 0.93559146 0.4517161 0.9923526 0.54828393 0.9923526
		 0.62640893 0.93559146 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".vt[0:21]"  0.80901706 -1 -0.58778542 0.30901694 -1 -0.95105672
		 -0.30901715 -1 -0.9510566 -0.80901718 -1 -0.58778524 -1.000000119209 -1 5.9604645e-008
		 -0.80901706 -1 0.58778536 -0.30901697 -1 0.9510566 0.30901703 -1 0.95105654 0.809017 -1 0.58778524
		 1 -1 0 0.80901706 1 -0.58778542 0.30901694 1 -0.95105672 -0.30901715 1 -0.9510566
		 -0.80901718 1 -0.58778524 -1.000000119209 1 5.9604645e-008 -0.80901706 1 0.58778536
		 -0.30901697 1 0.9510566 0.30901703 1 0.95105654 0.809017 1 0.58778524 1 1 0 0 -1 0
		 0 1 0;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 10 21 1 11 21 1
		 12 21 1 13 21 1 14 21 1 15 21 1 16 21 1 17 21 1 18 21 1 19 21 1;
	setAttr -s 29 -ch 96 ".fc[0:28]" -type "polyFaces" 
		f 4 0 21 -11 -21
		mu 0 4 10 11 22 21
		f 4 2 23 -13 -23
		mu 0 4 12 13 24 23
		f 4 3 24 -14 -24
		mu 0 4 13 14 25 24
		f 4 4 25 -15 -25
		mu 0 4 14 15 26 25
		f 4 5 26 -16 -26
		mu 0 4 15 16 27 26
		f 4 6 27 -17 -27
		mu 0 4 16 17 28 27
		f 4 7 28 -18 -28
		mu 0 4 17 18 29 28
		f 4 8 29 -19 -29
		mu 0 4 18 19 30 29
		f 4 9 20 -20 -30
		mu 0 4 19 20 31 30
		f 3 -1 -31 31
		mu 0 3 1 0 42
		f 3 -2 -32 32
		mu 0 3 2 1 42
		f 3 -3 -33 33
		mu 0 3 3 2 42
		f 3 -4 -34 34
		mu 0 3 4 3 42
		f 3 -5 -35 35
		mu 0 3 5 4 42
		f 3 -6 -36 36
		mu 0 3 6 5 42
		f 3 -7 -37 37
		mu 0 3 7 6 42
		f 3 -8 -38 38
		mu 0 3 8 7 42
		f 3 -9 -39 39
		mu 0 3 9 8 42
		f 3 -10 -40 30
		mu 0 3 0 9 42
		f 3 10 41 -41
		mu 0 3 40 39 43
		f 3 11 42 -42
		mu 0 3 39 38 43
		f 3 12 43 -43
		mu 0 3 38 37 43
		f 3 13 44 -44
		mu 0 3 37 36 43
		f 3 14 45 -45
		mu 0 3 36 35 43
		f 3 15 46 -46
		mu 0 3 35 34 43
		f 3 16 47 -47
		mu 0 3 34 33 43
		f 3 17 48 -48
		mu 0 3 33 32 43
		f 3 18 49 -49
		mu 0 3 32 41 43
		f 3 19 40 -50
		mu 0 3 41 40 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder6";
	rename -uid "5551CB07-46FE-88AA-FE77-26B224CEE23E";
	setAttr ".s" -type "double3" 0.10089081686454267 0.10089081686454267 0.10089081686454267 ;
	setAttr ".rp" -type "double3" 0 0 1.8060357198778456 ;
	setAttr ".sp" -type "double3" 0 0 17.900893024809662 ;
	setAttr ".spt" -type "double3" 0 0 -16.094857304931825 ;
createNode mesh -n "pCylinder6Shape" -p "pCylinder6";
	rename -uid "3AAA9F1F-4B17-711B-B33B-C193BED8B689";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41335804760456085 0.62117630243301392 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube17";
	rename -uid "C4AC758E-40B8-DFEF-ABA5-329E1A126F65";
	setAttr ".s" -type "double3" 0.10089081686454267 0.10089081686454267 0.10089081686454267 ;
	setAttr ".rp" -type "double3" 0.40031625706119084 0 0.9848927469959412 ;
	setAttr ".sp" -type "double3" 3.9678165912628174 0 9.7619662284851074 ;
	setAttr ".spt" -type "double3" -3.5675003342016267 0 -8.7770734814891664 ;
createNode mesh -n "pCube17Shape" -p "pCube17";
	rename -uid "8492A877-4D3F-9EFC-5670-2F9DD426B48B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D32695C4-48FD-A18E-C4FD-48833F1697F3";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "02268503-4A9F-3692-7C0F-DCBDC7FF5556";
createNode displayLayer -n "defaultLayer";
	rename -uid "D8278F1D-4AF0-C0AB-EFB9-0A954768391D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "AF562FB8-4265-6F40-015A-988905D4A3E0";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EDB7FCE9-49FA-3198-379F-C787D55D624A";
	setAttr ".g" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "10968630-47A9-94D1-9969-AEB391022B67";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 3.3465405928566008 0 0 0 0 0.066639647484445064 0 0
		 0 0 1.7885475764579029 0 0 3.4121691829751661 -0.46061518603284257 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.4454889 -0.46061519 ;
	setAttr ".rs" 54422;
	setAttr ".lt" -type "double3" 0 0.045533560765521078 0.051078303635383897 ;
	setAttr ".ls" -type "double3" 0.95000000092488956 0.95000000092488956 0.95000000092488956 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6732702964283004 3.4454890067173887 -1.354888974261794 ;
	setAttr ".cbx" -type "double3" 1.6732702964283004 3.4454890067173887 0.43365860219610886 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "D1450E31-449B-A4B0-726F-808870BBD225";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 3.3465405928566008 0 0 0 0 0.066639647484445064 0 0
		 0 0 1.7885475764579029 0 0 3.4121691829751661 -0.46061518603284257 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.5044572 -0.50614882 ;
	setAttr ".rs" 34804;
	setAttr ".lt" -type "double3" 0 0.028655067779887688 -2.2268087524545981e-015 ;
	setAttr ".ls" -type "double3" 0.95055555720314144 0.95055555720314144 0.95055555720314144 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5896068613946306 3.5044572374252803 -1.355708985636632 ;
	setAttr ".cbx" -type "double3" 1.5896068613946306 3.5044572374252803 0.3434113505858416 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "B7279D89-4C66-6ED7-FF3A-CFA1F1EDF65A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0.11839882 0 0 0.11839882
		 0 0 0.11839882 0 0 0.11839882 0;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "DA0A02D9-4D54-8AF3-69BD-2694CB1D2A05";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode polySplit -n "polySplit1";
	rename -uid "0F9F1099-405B-0BF6-1402-168921335CB3";
	setAttr -s 2 ".e[0:1]"  0.951653 0.97495401;
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "ADF187A9-4E3D-694B-2F87-729F877020D2";
	setAttr -s 2 ".e[0:1]"  0.051819898 0.0252598;
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "3732CECD-46F3-B6C5-E558-97A453F7B52C";
	setAttr ".dc" -type "componentList" 1 "e[33]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "94A5F348-4EAD-7886-6090-25828370BA8C";
	setAttr ".dc" -type "componentList" 1 "vtx[18]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "5331E564-4608-D27F-296A-E486678876A7";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "053E6DA3-4EDF-94EF-DEDB-229077E5ACD0";
	setAttr ".dc" -type "componentList" 1 "e[29]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "BEFAB7B1-42BD-0052-9A8C-FD8A0E83CFDB";
	setAttr ".dc" -type "componentList" 1 "vtx[16]";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "15468C7F-4211-1254-142D-118940401FBE";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[16]";
	setAttr ".ix" -type "matrix" 3.3465405928566008 0 0 0 0 0.066639647484445064 0 0
		 0 0 1.7885475764579029 0 0 3.4121691829751661 -0.46061518603284257 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "9740D2E6-43EB-8283-FCF3-E28CAEEDCBFF";
	setAttr ".ics" -type "componentList" 1 "vtx[15:16]";
	setAttr ".ix" -type "matrix" 3.3465405928566008 0 0 0 0 0.066639647484445064 0 0
		 0 0 1.7885475764579029 0 0 3.4121691829751661 -0.46061518603284257 1;
	setAttr ".am" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "3CCBEBAF-432E-BF6A-2BBD-90B04E66B899";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 3.3465405928566008 0 0 0 0 0.066639647484445064 0 0
		 0 0 1.7885475764579029 0 0 3.4121691829751661 -0.46061518603284257 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.5598888e-005 3.5044572 -0.53958648 ;
	setAttr ".rs" 51189;
	setAttr ".lt" -type "double3" 2.7105054312137611e-020 8.3778806912061741e-017 0.021014719750388711 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5111607470264847 3.5044573248099957 -1.3519231491898127 ;
	setAttr ".cbx" -type "double3" 1.5110095492491309 3.5044573248099957 0.27275023910065388 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "BC0015E2-4523-65F9-5863-B8BEFE35D1CD";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" 0 -4.7683716e-007 0 ;
	setAttr ".tk[13]" -type "float3" 0 -4.7683716e-007 0 ;
	setAttr ".tk[14]" -type "float3" 0 -4.7683716e-007 -0.0016155601 ;
	setAttr ".tk[15]" -type "float3" 0 -4.7683716e-007 -0.0016155601 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "8DAF5CF9-44AE-C366-502D-CBA23E68E6F4";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 2.9729732749070923 0 0 0 0 2.9729732749070923 0 0 0 0 0.60878095086037842 0
		 0 1.8972583696246037 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.8972584 0.30439049 ;
	setAttr ".rs" 54764;
	setAttr ".ls" -type "double3" 0.81666667000320892 0.81666667000320892 0.81666667000320892 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4864866374535461 0.41077173217105756 0.30439047543018921 ;
	setAttr ".cbx" -type "double3" 1.4864866374535461 3.3837450070781498 0.30439047543018921 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "D82ACEE5-41CA-690B-8DED-A8B538D71B77";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 2.9729732749070923 0 0 0 0 2.9729732749070923 0 0 0 0 0.60878095086037842 0
		 0 1.8972583696246037 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.8972586 0.30439052 ;
	setAttr ".rs" 61485;
	setAttr ".lt" -type "double3" 0 0 -0.15511269090818366 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2139642585499781 0.68329437687914951 0.30439051171636156 ;
	setAttr ".cbx" -type "double3" 1.2139642585499781 3.1112228939791056 0.30439051171636156 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "9B97CD49-4E61-783E-28C4-60A38FC221FD";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 2.9729732749070923 0 0 0 0 2.9729732749070923 0 0 0 0 0.60878095086037842 0
		 0 1.8972583696246037 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.8972589 0.14927784 ;
	setAttr ".rs" 40678;
	setAttr ".ls" -type "double3" 1.100000003667408 1.100000003667408 1.100000003667408 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.213964347151486 0.68329455408216555 0.14927783853194426 ;
	setAttr ".cbx" -type "double3" 1.213964347151486 3.1112232483851381 0.14927783853194426 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "9D14E282-4DF5-6373-F699-35BC24D94E40";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 2.9729732749070923 0 0 0 0 2.9729732749070923 0 0 0 0 0.60878095086037842 0
		 0 1.8972583696246037 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.8972591 0.14927785 ;
	setAttr ".rs" 39093;
	setAttr ".lt" -type "double3" 0 0 -0.1805981769890225 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3353609059087459 0.56189826112942964 0.14927785667503043 ;
	setAttr ".cbx" -type "double3" 1.3353609059087459 3.2326200729469212 0.14927785667503043 ;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "C10BCC0C-481E-8B60-A185-708B8FEB32B1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 2.9729732749070923 0 0 0 0 2.9729732749070923 0 0 0 0 1.0341304883325599 0
		 0 1.8972583696246037 -0.83921275342880397 1;
	setAttr ".wt" 0.69026404619216919;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "21B550DF-4207-98A0-D876-F49AE4FFEE12";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[6]" "f[10]";
	setAttr ".ix" -type "matrix" 2.9729732749070923 0 0 0 0 2.9729732749070923 0 0 0 0 1.0341304883325599 0
		 0 1.8972583696246037 -0.83921275342880397 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.8972584 -0.32214752 ;
	setAttr ".rs" 59127;
	setAttr ".ls" -type "double3" 0.91174227639117156 0.83125001039049706 0.83125001039049706 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4864866374535461 0.41077173217105756 -0.322147509262524 ;
	setAttr ".cbx" -type "double3" 1.4864866374535461 3.3837450070781498 -0.322147509262524 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "4138EC6D-4037-89AC-85CA-52B134C80D32";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[6]" "f[10]";
	setAttr ".ix" -type "matrix" 2.9729732749070923 0 0 0 0 2.9729732749070923 0 0 0 0 1.0341304883325599 0
		 0 1.8972583696246037 -0.83921275342880397 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.8972586 -0.32214755 ;
	setAttr ".rs" 41219;
	setAttr ".lt" -type "double3" 0 0 -0.95791626920006379 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3552928783489187 0.49438674729023235 -0.32214754008201418 ;
	setAttr ".cbx" -type "double3" 1.3552928783489187 3.3001305235680229 -0.32214754008201418 ;
createNode polyCube -n "polyCube1";
	rename -uid "35890C88-4E81-0AFD-3E69-288CD55FDF51";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "2B7D2F86-4BA3-9BCB-818E-A4AED4DCBC0C";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.6668501109597016 0 0 0 0 0.79360813613511327 0 0 0 0 0.75825364325529498 0
		 0 2.8844613339791385 -0.68060371407990916 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.2812655 -0.68060374 ;
	setAttr ".rs" 39137;
	setAttr ".ls" -type "double3" 0.9644385258307242 0.9166666674678916 0.9166666674678916 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3334250554798508 3.2812654020466949 -1.0597305357075566 ;
	setAttr ".cbx" -type "double3" 1.3334250554798508 3.2812654020466949 -0.30147689245226167 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "1395B691-4873-183B-0AC4-97810CDE9798";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.6668501109597016 0 0 0 0 0.79360813613511327 0 0 0 0 0.75825364325529498 0
		 0 2.8844613339791385 -0.68060371407990916 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.2812655 -0.68060374 ;
	setAttr ".rs" 43533;
	setAttr ".lt" -type "double3" 0 5.5129977019472947e-017 -0.75171665603815763 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2860063782511253 3.2812655912576192 -1.0281366640355454 ;
	setAttr ".cbx" -type "double3" 1.2860063782511253 3.2812655912576192 -0.33307083191743153 ;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "AC7D28EC-4183-2EDB-722B-E3B9651D2406";
	setAttr ".sa" 16;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCBoolOp -n "polyCBoolOp1";
	rename -uid "071E9C9D-4759-1CCE-ACF9-D3BC94BFA6D8";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 2 1 -3 ;
createNode groupId -n "groupId1";
	rename -uid "7AA48401-4280-DED8-5207-919D69EDB7C1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "94776563-48D9-5DB3-4CE4-39914808C4A2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId2";
	rename -uid "F543E28D-4C8A-2263-46C5-B49DC23FE0ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "304277AB-4B96-FDFA-DDCE-BD9F4A298C84";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "4A6F4EB8-48A8-D0F5-5AC7-FEB559A9366F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode groupId -n "groupId4";
	rename -uid "9E5E43CA-4A64-9A5D-992A-04A701A1C896";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "A12984A2-4EB6-ACCF-4051-43B2A7299BB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "9F64C092-4EDE-0610-11D8-709061FCF3A3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "72A68293-4F8C-9114-40FD-1092EBF5EA91";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "79DBE707-4FEB-2847-3BD0-37B49B0C3007";
	setAttr ".sa" 16;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "545072B8-4F91-91AC-5576-388D187B9FC7";
	setAttr ".ics" -type "componentList" 3 "e[33:37]" "e[49:53]" "e[65:69]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "4F9036D7-4126-1B38-B84D-B1B614389FC9";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.3443861 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.019962726 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.19681014 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.27293089 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.19681056 ;
	setAttr ".tk[5]" -type "float3" 0 0 -0.019962033 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.34438521 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.3443861 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.019962726 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.19681014 ;
	setAttr ".tk[19]" -type "float3" 0 0 0.27293089 ;
	setAttr ".tk[20]" -type "float3" 0 0 0.19681056 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.019962033 ;
	setAttr ".tk[22]" -type "float3" 0 0 -0.34438521 ;
createNode polyPipe -n "polyPipe1";
	rename -uid "E06C280F-4E9D-A088-61D3-F8B63C55AD4F";
	setAttr ".t" 0.2;
	setAttr ".sa" 18;
	setAttr ".sc" 0;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "6E54B6A9-46BF-5ED7-CADD-9E9136A0473E";
	setAttr ".dc" -type "componentList" 4 "f[5:12]" "f[23:30]" "f[41:48]" "f[59:66]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "62565CF6-460A-A247-1407-8C9129A9BFCA";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode polyTweak -n "polyTweak4";
	rename -uid "DFC8E291-4A18-21DD-7B6A-AE84E14DAAFF";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[5]" -type "float3" -0.017364763 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.017364971 0 0 ;
	setAttr ".tk[16]" -type "float3" -0.017364763 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.017364971 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.017364971 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.017364554 0 0 ;
	setAttr ".tk[38]" -type "float3" 0.017364971 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.017364554 0 0 ;
createNode deleteComponent -n "deleteComponent9";
	rename -uid "3AE38FA9-473E-9174-BC34-26A3F8084A15";
	setAttr ".dc" -type "componentList" 1 "f[25]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "D01DE8FE-4D7D-8FE9-9FBC-A6B2ECE59DE7";
	setAttr ".dc" -type "componentList" 1 "f[21:31]";
createNode polyUnite -n "polyUnite1";
	rename -uid "0D8D4B8C-4D0B-AB45-E6CF-1E9022F564E7";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId8";
	rename -uid "711D289A-405D-0E50-EF82-199E5078B4A8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "DFA21A4D-44C7-5E0A-49C4-86B679B4E08C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:38]";
createNode groupId -n "groupId9";
	rename -uid "E73F88FD-48B4-752B-6DCD-2A979E613903";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "B1090319-453E-6681-F0B3-789C535D5040";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "FA95E24D-4EFA-A56C-9888-1C86D40D7EFC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "groupId11";
	rename -uid "06BF3600-40D4-78D4-5C3C-248CF3A15561";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "768F6578-4764-318D-A7B7-97A7D9D2799C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "82EC6B01-4B63-17D1-1FF4-1996E9A8A01D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "7B1A6B39-401E-4256-C056-908A960DD180";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[55]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "B368EBEC-4E55-8B3E-210F-D89CB85A124D";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "A7DA6A20-4366-1544-59DF-24AEFC974553";
	setAttr ".ics" -type "componentList" 2 "vtx[40]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "A92B2ECB-4771-19E8-2EF6-2994FF361381";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "F2111DCB-4908-DE87-B072-40A273A6A583";
	setAttr ".dc" -type "componentList" 4 "f[0:4]" "f[10:14]" "f[20:24]" "f[29:33]";
createNode polyMirror -n "polyMirror1";
	rename -uid "09943791-45D8-97AA-B8C1-84B385D5B3E9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0.4190417155623436 0 4.098902702331543 ;
	setAttr ".d" 5;
	setAttr ".mm" 1;
createNode polyCube -n "polyCube2";
	rename -uid "8F8195EC-48A1-E937-593A-BB9DC318489F";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder3";
	rename -uid "C44C9057-4AC9-7063-51F1-EC884C2FAE36";
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyPipe -n "polyPipe2";
	rename -uid "28DC52DE-4F98-DEBB-B0D8-598F76B69AD3";
	setAttr ".r" 1.3;
	setAttr ".t" 0.60000000000000009;
	setAttr ".sa" 12;
	setAttr ".sc" 0;
createNode deleteComponent -n "deleteComponent12";
	rename -uid "058A2533-4F86-23E2-C152-68901D981A60";
	setAttr ".dc" -type "componentList" 4 "f[4:7]" "f[15:20]" "f[28:32]" "f[39:44]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "A9C28246-4171-4513-F2B1-48B339ED6FE9";
	setAttr ".dc" -type "componentList" 1 "f[3:4]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "5F78FB75-41AF-6D95-EC50-3F9ACC7C0CBF";
	setAttr ".dc" -type "componentList" 1 "f[15]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "64B3D293-4F95-42BF-8D32-9DA69CD931FD";
	setAttr ".ics" -type "componentList" 1 "e[*]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "908F8F8A-4AA9-F5C9-7C60-449270DD8D44";
	setAttr ".dc" -type "componentList" 1 "f[24]";
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "26F1866F-4D6A-1C5D-0B01-399C7595D05F";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 1 0 0 -0.43087154038004744 9.5672700957127307e-017 0 0
		 0 0 1 0 0 1.882624337759343 5.6400491780384456 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.8826244 6.640049 ;
	setAttr ".rs" 44144;
	setAttr ".lt" -type "double3" 4.9303806576313238e-032 -3.3792333433109848e-016 1.5218714025733306 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21543577019002372 1.882624337759343 6.3400490469082271 ;
	setAttr ".cbx" -type "double3" 0.21543577019002372 1.882624337759343 6.9400490111454403 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "64820CF2-4728-C0BE-7CD7-7687A6131A26";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 1 0 0 -0.43087154038004744 9.5672700957127307e-017 0 0
		 0 0 1 0 0 1.882624337759343 5.6400491780384456 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.3306691e-016 0.36075276 6.640049 ;
	setAttr ".rs" 57859;
	setAttr ".lt" -type "double3" 0 -3.4579984663752122e-015 0.213279697692424 ;
	setAttr ".ls" -type "double3" 1 0.68526699696184579 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21543577019002405 0.36075277098688208 6.3400489873035824 ;
	setAttr ".cbx" -type "double3" 0.21543577019002338 0.36075277098688208 6.9400488919361507 ;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "A0E3CC7E-48F8-E056-3F33-DD8589A6E58E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 0.52723679963918546 0 0 0 0 0.57084601222244002 0 0
		 0 0 1.6139069924359297 0 0 1.5762952105283079 3.5995852600315565 1;
	setAttr ".wt" 0.28390610218048096;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "BED25B14-41A2-91BF-3C26-6F91B8E91169";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  0 0 0.32710662 0 0 0.32710662
		 0 0 0.32710662 0 0 0.32710662;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "799BA3E2-4BB7-8DDC-6AD6-A089139A10C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[3]" "e[9]";
	setAttr ".ix" -type "matrix" 1.6973380338375333e-016 0.76441309367124854 0 0 -0.20026144874577234 4.4466974268469426e-017 0 0
		 0 0 0.76441309367124854 0 0 1.5545422106246327 2.1133394480057084 1;
	setAttr ".wt" 0.57608449459075928;
	setAttr ".dr" no;
	setAttr ".re" 3;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent16";
	rename -uid "D2447F14-4FE6-1EA0-20A7-80949F092EDB";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode polyUnite -n "polyUnite2";
	rename -uid "0B3CE647-4A8D-B8AC-D794-47A5D4CB5990";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId13";
	rename -uid "A212652D-47D1-2F5B-7F4F-0C89AD5A35EC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "BC155E32-4DB3-F43B-EDD1-B8B9857A9DEF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId14";
	rename -uid "A4B9E95F-4BC3-7F94-5139-BC86F092AD2F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "B3AB0A53-44FA-9BA9-DC3D-5985B3C70A3A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "9C379E71-45C9-89FE-089E-F9BEE6BFF15A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode groupId -n "groupId16";
	rename -uid "595E3B1F-477E-BE7C-19D9-8882BA86FE28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "3C33FEE1-4F1D-FB4B-C7FB-4989B77A0946";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "ED3594EB-4370-E28D-7FB9-C89DC8D646DF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:32]";
createNode groupId -n "groupId18";
	rename -uid "A991E84D-4AD9-0B65-1D6F-E9841E79D828";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "D5F6275E-413E-AEFA-4097-C2BAB4561C15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "5045EE3A-48CE-FAD8-0D05-9B8799C9C7D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:61]";
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "C740C330-40A5-2B03-F1B5-77B51689C009";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[54]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "AD0D3374-481B-28E9-098F-33863DAD8CC7";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "033248B2-454D-871C-BD98-7087C812FF1B";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "C4EDC6B3-4C20-1D4D-3833-8EBF69DA7727";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "8142C6C1-4CC8-3008-32D9-979DB9E21C2E";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "42D1240F-4EB8-9224-6002-2A8FC9BACD64";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "79FEAD56-46CB-FF58-659D-FE87DAFB8C82";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "D9B59FE7-4240-E342-7ADB-689F48122CC1";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode surfaceShader -n "surfaceShader1";
	rename -uid "EDD82B51-41AD-51E1-AFEA-F0B4967F227D";
createNode shadingEngine -n "surfaceShader1SG";
	rename -uid "7BE8C6BA-4793-263C-53D3-E1A9536150DB";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "2C1CA806-4BE4-E0C5-26BE-08BEC3BD19C9";
createNode blinn -n "blinn1";
	rename -uid "E04A8F46-47B8-35AA-ECE8-4FAD9D014450";
	setAttr ".it" -type "float3" 0.60140383 0.60140383 0.60140383 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "C8F3254B-4A58-567A-0357-3BB6B79AD2F6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "295911DA-4383-D808-CB0B-92BFFD3B6106";
createNode polyCube -n "polyCube3";
	rename -uid "2FA28AB6-4FBB-CEA2-45DD-70AFD2EC24F2";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder4";
	rename -uid "552D20BE-4F3C-4825-EA1E-188270003C69";
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube4";
	rename -uid "D35D265A-4BE1-EA1C-6A1A-F78F13044401";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "3F28AB35-45F2-C1E6-C053-5795FD415C42";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.51864282617059088 0 0 0 0 1 0 0 0 0 6.5668833226443057 0
		 0 0 13.696068261826193 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 10.412626 ;
	setAttr ".rs" 44587;
	setAttr ".lt" -type "double3" 0 1.2325951644078309e-031 0.17000744382638899 ;
	setAttr ".ls" -type "double3" 3.7223399786954001 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.25932141308529544 -0.5 10.412626600504041 ;
	setAttr ".cbx" -type "double3" 0.25932141308529544 0.5 10.412626600504041 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "401EDCC6-4567-0164-4320-219A8BD06F42";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.51864282617059088 0 0 0 0 1 0 0 0 0 6.5668833226443057 0
		 0 0 13.696068261826193 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 10.242619 ;
	setAttr ".rs" 61806;
	setAttr ".lt" -type "double3" 0 8.6281661508548166e-032 0.61666423361869782 ;
	setAttr ".ls" -type "double3" 1.529696314488818 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.96528243469496033 -0.5 10.242618650296013 ;
	setAttr ".cbx" -type "double3" 0.96528243469496033 0.5 10.242618650296013 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "61E2364D-4A94-26BE-1524-8D8C67BC7C3C";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.51864282617059088 0 0 0 0 1 0 0 0 0 6.5668833226443057 0
		 0 0 13.696068261826193 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 9.6259537 ;
	setAttr ".rs" 36902;
	setAttr ".lt" -type "double3" 0 -1.1093356479670479e-031 0.51214139106663659 ;
	setAttr ".ls" -type "double3" 1.0733868151682167 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4765889257893887 -0.5 9.6259540895870259 ;
	setAttr ".cbx" -type "double3" 1.4765889257893887 0.5 9.6259540895870259 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "25CB6AB3-4902-3E89-36EE-A097F0F4DC8D";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.51864282617059088 0 0 0 0 1 0 0 0 0 6.5668833226443057 0
		 0 0 13.696068261826193 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 9.1138115 ;
	setAttr ".rs" 60216;
	setAttr ".lt" -type "double3" 0 -9.8607613152626476e-032 0.55128572067414083 ;
	setAttr ".ls" -type "double3" 0.80212697926755605 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5849512053068913 -0.5 9.1138118915242394 ;
	setAttr ".cbx" -type "double3" 1.5849512053068913 0.5 9.1138118915242394 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "E9829FB5-43CA-E80D-430B-8CA1BA940817";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.51864282617059088 0 0 0 0 1 0 0 0 0 6.5668833226443057 0
		 0 0 13.696068261826193 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 8.5625277 ;
	setAttr ".rs" 33419;
	setAttr ".lt" -type "double3" 0 1.7256332301709633e-031 0.60225198150065395 ;
	setAttr ".ls" -type "double3" 0.57671542680986176 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2713321703141369 -0.5 8.5625272358551943 ;
	setAttr ".cbx" -type "double3" 1.2713321703141369 0.5 8.5625272358551943 ;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "75632C79-4535-8814-89B0-F7851C0D5116";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.51864282617059088 0 0 0 0 1 0 0 0 0 6.5668833226443057 0
		 0 0 13.696068261826193 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 7.9602747 ;
	setAttr ".rs" 34791;
	setAttr ".lt" -type "double3" 0 -1.7256332301709633e-031 0.93131601221573579 ;
	setAttr ".ls" -type "double3" 0.68405358062283361 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.73319694686675352 -0.5 7.9602746397975404 ;
	setAttr ".cbx" -type "double3" 0.73319694686675352 0.5 7.9602746397975404 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "22E77526-4F11-BD7E-C899-069B14CF4260";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.51864282617059088 0 0 0 0 1 0 0 0 0 6.5668833226443057 0
		 0 0 13.696068261826193 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 7.0289578 ;
	setAttr ".rs" 54982;
	setAttr ".lt" -type "double3" 0 -9.8607613152626476e-032 2.2629363331052206 ;
	setAttr ".ls" -type "double3" 0.4787322922775033 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.50154601040913649 -0.5 7.0289579839252498 ;
	setAttr ".cbx" -type "double3" 0.50154601040913649 0.5 7.0289579839252498 ;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "F5293EE2-4A71-3AD1-ED25-0D9A0BCC6688";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.51864282617059088 0 0 0 0 1 0 0 0 0 6.5668833226443057 0
		 0 0 13.696068261826193 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 5.0705166 ;
	setAttr ".rs" 42481;
	setAttr ".lt" -type "double3" 0 1.7256332301709633e-031 0.42270848564829144 ;
	setAttr ".ls" -type "double3" 0.57932494725924044 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24010627918211166 -0.5 5.0705168120058772 ;
	setAttr ".cbx" -type "double3" 0.24010627918211166 0.5 5.0705168120058772 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "A816A3A0-4D75-15D3-FD28-28A075CBFE90";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[28]" -type "float3" 0 0 0.066144742 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.066144742 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.066144742 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.066144742 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.046368279 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.046368279 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.046368279 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.046368279 ;
createNode deleteComponent -n "deleteComponent17";
	rename -uid "9A7DAC0C-4734-A95E-8605-2983CD5DFA95";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode polyTweak -n "polyTweak7";
	rename -uid "11AE9343-42E2-2DBB-D5C5-F78B2699EE09";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.27684811 ;
	setAttr ".tk[1]" -type "float3" 0 0 0.27684811 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.27684811 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.27684811 ;
createNode deleteComponent -n "deleteComponent18";
	rename -uid "3B7A1898-4C66-FB5A-3B33-0E8118352433";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode polyUnite -n "polyUnite3";
	rename -uid "5AAB49CD-4B6B-2B72-E976-C89958AF616E";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId20";
	rename -uid "6C95EFF8-41D8-AB7B-84A7-AC86994F41FE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "80BF0BB9-4697-DC82-4465-8992A2F89C0F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:28]";
createNode groupId -n "groupId21";
	rename -uid "32CBF1C7-45F9-457A-3811-C8991807CFFA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "E6022816-4A02-83CD-2FF6-63B8142F55B8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "D454810D-479B-2CD8-0A05-CEAC8DE40CDD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:36]";
createNode groupId -n "groupId23";
	rename -uid "A7168AFA-4B02-461A-7217-C48468B9B6DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "800E2E8F-4527-B7C7-A35D-6E85F303579D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "42019F35-4B42-C506-4A43-3790D9FAE202";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode polyUnite -n "polyUnite4";
	rename -uid "783107EA-4A45-FF62-58DE-0FACA259BD79";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId25";
	rename -uid "D75B13E2-41DE-F14C-91BB-AEA0D4F287E8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "7F7267B4-4215-F390-77FD-369D926E1879";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "FAD5A9DB-4EB4-F81A-4243-46ABAF56EB2D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "FC2933D6-4CF3-FDC4-D3BC-CA920C21A274";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "0F8B86FB-4F80-B2BE-8CC3-508D2ABD39AC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "7BF0A35E-40AF-ACBA-D26F-4F85239204DA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "0AD17626-4B4B-9DE4-FD8A-928B6198A246";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "79F27953-449D-9684-FDCA-86AA9F6EC341";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "3942AB73-4722-5F91-ABA3-7B8D8FDB069F";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "DB856609-48FD-CBF2-CE67-9F8F5EBE41E5";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert19";
	rename -uid "69CA8A4E-433C-B8D3-D76E-ABA561195560";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert20";
	rename -uid "2EB409E2-4C91-7BCE-6C1B-6580ECAE92CA";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert21";
	rename -uid "7BD368C4-4D43-A485-E401-A8B690B7EF1F";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert22";
	rename -uid "1A3BE259-4A73-797F-1F22-49AAB82F346D";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5706E426-4265-DA01-C7E5-15809906D7FF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 770\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 770\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 769\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 769\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 770\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 770\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 769\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 769\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n"
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
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 770\\n    -height 343\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 770\\n    -height 343\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 769\\n    -height 343\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 769\\n    -height 343\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 769\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 769\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 770\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 770\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6FD11A19-4A83-37B1-0DEF-5EBA00714449";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "2CFA1483-46BD-8739-EA9B-CDAE715B759F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 262.85714721679687;
	setAttr ".tgi[0].ni[0].y" -5.7142858505249023;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[1].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 582.85711669921875;
	setAttr ".tgi[0].ni[2].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 844.28570556640625;
	setAttr ".tgi[0].ni[3].y" -114.28571319580078;
	setAttr ".tgi[0].ni[3].nvs" 1923;
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
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 41 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 28 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyExtrudeFace9.out" "pCubeShape2.i";
connectAttr "polyExtrudeFace7.out" "pCubeShape3.i";
connectAttr "polyExtrudeFace3.out" "pCubeShape4.i";
connectAttr "groupId1.id" "pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape8.i";
connectAttr "groupId2.id" "pCubeShape8.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pCylinderShape1.i";
connectAttr "groupId4.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "polyCBoolOp1.out" "pCube9Shape.i";
connectAttr "groupId5.id" "pCube9Shape.ciog.cog[0].cgid";
connectAttr "groupId6.id" "pCube10Shape.ciog.cog[1].cgid";
connectAttr "groupId7.id" "pCube11Shape.ciog.cog[2].cgid";
connectAttr "groupId10.id" "pCylinderShape2.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[1].gco";
connectAttr "groupParts4.og" "pCylinderShape2.i";
connectAttr "groupId11.id" "pCylinderShape2.ciog.cog[1].cgid";
connectAttr "groupId8.id" "pPipeShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape1.iog.og[1].gco";
connectAttr "groupParts3.og" "pPipeShape1.i";
connectAttr "groupId9.id" "pPipeShape1.ciog.cog[1].cgid";
connectAttr "polyMirror1.out" "pPipe2Shape.i";
connectAttr "groupId12.id" "pPipe2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipe2Shape.iog.og[0].gco";
connectAttr "groupId13.id" "pCubeShape9.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape9.iog.og[1].gco";
connectAttr "groupParts6.og" "pCubeShape9.i";
connectAttr "groupId14.id" "pCubeShape9.ciog.cog[1].cgid";
connectAttr "groupId15.id" "pCylinderShape3.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape3.iog.og[1].gco";
connectAttr "groupParts7.og" "pCylinderShape3.i";
connectAttr "groupId16.id" "pCylinderShape3.ciog.cog[1].cgid";
connectAttr "groupId17.id" "pPipeShape2.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape2.iog.og[1].gco";
connectAttr "groupParts8.og" "pPipeShape2.i";
connectAttr "groupId18.id" "pPipeShape2.ciog.cog[1].cgid";
connectAttr "polyMergeVert14.out" "pCube13Shape.i";
connectAttr "groupId19.id" "pCube13Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube13Shape.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "Trim_Char_x_10_1Shape.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "Trim_Char_x_12_1Shape.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "Trim_Char_x_14_1Shape.iog.og[0].gco";
connectAttr "polyCube3.out" "pCubeShape10.i";
connectAttr "groupId20.id" "pCylinderShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape4.iog.og[0].gco";
connectAttr "groupParts10.og" "pCylinderShape4.i";
connectAttr "groupId21.id" "pCylinderShape4.ciog.cog[0].cgid";
connectAttr "groupId22.id" "pCubeShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape11.iog.og[0].gco";
connectAttr "groupParts11.og" "pCubeShape11.i";
connectAttr "groupId23.id" "pCubeShape11.ciog.cog[0].cgid";
connectAttr "groupId25.id" "pCubeShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape16.iog.og[0].gco";
connectAttr "groupId26.id" "pCubeShape16.ciog.cog[0].cgid";
connectAttr "groupId27.id" "pCylinderShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape5.iog.og[0].gco";
connectAttr "groupId28.id" "pCylinderShape5.ciog.cog[0].cgid";
connectAttr "polyMergeVert18.out" "pCylinder6Shape.i";
connectAttr "groupId24.id" "pCylinder6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder6Shape.iog.og[0].gco";
connectAttr "polyMergeVert22.out" "pCube17Shape.i";
connectAttr "groupId29.id" "pCube17Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube17Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "|pCube4|polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyMergeVert1.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert2.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace3.mp";
connectAttr "polyMergeVert2.out" "polyTweak2.ip";
connectAttr "polySurfaceShape2.o" "polyExtrudeFace4.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace7.mp";
connectAttr "polySurfaceShape3.o" "polySplitRing1.ip";
connectAttr "pCubeShape2.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace9.mp";
connectAttr "polyCube1.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace11.mp";
connectAttr "pCubeShape8.o" "polyCBoolOp1.ip[0]";
connectAttr "pCylinderShape1.o" "polyCBoolOp1.ip[1]";
connectAttr "pCubeShape8.wm" "polyCBoolOp1.im[0]";
connectAttr "pCylinderShape1.wm" "polyCBoolOp1.im[1]";
connectAttr "polyExtrudeFace11.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCylinder1.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyTweak3.out" "polyDelEdge1.ip";
connectAttr "polyCylinder2.out" "polyTweak3.ip";
connectAttr "polyPipe1.out" "deleteComponent7.ig";
connectAttr "polyDelEdge1.out" "deleteComponent8.ig";
connectAttr "deleteComponent7.og" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent9.ig";
connectAttr "deleteComponent8.og" "deleteComponent10.ig";
connectAttr "pPipeShape1.o" "polyUnite1.ip[0]";
connectAttr "pCylinderShape2.o" "polyUnite1.ip[1]";
connectAttr "pPipeShape1.wm" "polyUnite1.im[0]";
connectAttr "pCylinderShape2.wm" "polyUnite1.im[1]";
connectAttr "deleteComponent9.og" "groupParts3.ig";
connectAttr "groupId8.id" "groupParts3.gi";
connectAttr "deleteComponent10.og" "groupParts4.ig";
connectAttr "groupId10.id" "groupParts4.gi";
connectAttr "polyUnite1.out" "groupParts5.ig";
connectAttr "groupId12.id" "groupParts5.gi";
connectAttr "groupParts5.og" "polyMergeVert3.ip";
connectAttr "pPipe2Shape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pPipe2Shape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "pPipe2Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "pPipe2Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "polyMirror1.ip";
connectAttr "pPipe2Shape.wm" "polyMirror1.mp";
connectAttr "polyPipe2.out" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "polyExtrudeFace12.ip";
connectAttr "pPipeShape2.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polyExtrudeFace13.ip";
connectAttr "pPipeShape2.wm" "polyExtrudeFace13.mp";
connectAttr "polyTweak5.out" "polySplitRing2.ip";
connectAttr "pCubeShape9.wm" "polySplitRing2.mp";
connectAttr "polyCube2.out" "polyTweak5.ip";
connectAttr "polyCylinder3.out" "polySplitRing3.ip";
connectAttr "pCylinderShape3.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "deleteComponent16.ig";
connectAttr "pCubeShape9.o" "polyUnite2.ip[0]";
connectAttr "pCylinderShape3.o" "polyUnite2.ip[1]";
connectAttr "pPipeShape2.o" "polyUnite2.ip[2]";
connectAttr "pCubeShape9.wm" "polyUnite2.im[0]";
connectAttr "pCylinderShape3.wm" "polyUnite2.im[1]";
connectAttr "pPipeShape2.wm" "polyUnite2.im[2]";
connectAttr "deleteComponent16.og" "groupParts6.ig";
connectAttr "groupId13.id" "groupParts6.gi";
connectAttr "polySplitRing3.out" "groupParts7.ig";
connectAttr "groupId15.id" "groupParts7.gi";
connectAttr "polyExtrudeFace13.out" "groupParts8.ig";
connectAttr "groupId17.id" "groupParts8.gi";
connectAttr "polyUnite2.out" "groupParts9.ig";
connectAttr "groupId19.id" "groupParts9.gi";
connectAttr "groupParts9.og" "polyMergeVert7.ip";
connectAttr "pCube13Shape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "pCube13Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "pCube13Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "pCube13Shape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "pCube13Shape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "pCube13Shape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "pCube13Shape.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert13.out" "polyMergeVert14.ip";
connectAttr "pCube13Shape.wm" "polyMergeVert14.mp";
connectAttr "surfaceShader1.oc" "surfaceShader1SG.ss";
connectAttr "Trim_Char_x_8_1Shape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "Trim_Char_x_7_1Shape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "Trim_Char_x_6_1Shape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "Trim_Char_x_5_1Shape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "Trim_Char_x_4_1Shape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "Trim_Char_x_3_1Shape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "Trim_Char_x_2_1Shape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "Trim_Char_x_1_1Shape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "Trim_Char_x_14_1Shape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "Trim_Char_x_12_1Shape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "Trim_Char_x_10_1Shape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "NumbersShape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "surfaceShader1SG.msg" "materialInfo1.sg";
connectAttr "surfaceShader1.msg" "materialInfo1.m";
connectAttr "surfaceShader1.msg" "materialInfo1.t" -na;
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "pCubeShape10.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "blinn1.msg" "materialInfo2.m";
connectAttr "polyCube4.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace15.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace16.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace17.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace18.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace19.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace20.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak6.ip";
connectAttr "polyCylinder4.out" "deleteComponent17.ig";
connectAttr "polyExtrudeFace21.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "deleteComponent18.ig";
connectAttr "pCylinderShape4.o" "polyUnite3.ip[0]";
connectAttr "pCubeShape11.o" "polyUnite3.ip[1]";
connectAttr "pCylinderShape4.wm" "polyUnite3.im[0]";
connectAttr "pCubeShape11.wm" "polyUnite3.im[1]";
connectAttr "deleteComponent17.og" "groupParts10.ig";
connectAttr "groupId20.id" "groupParts10.gi";
connectAttr "deleteComponent18.og" "groupParts11.ig";
connectAttr "groupId22.id" "groupParts11.gi";
connectAttr "polyUnite3.out" "groupParts12.ig";
connectAttr "groupId24.id" "groupParts12.gi";
connectAttr "pCubeShape16.o" "polyUnite4.ip[0]";
connectAttr "pCylinderShape5.o" "polyUnite4.ip[1]";
connectAttr "pCubeShape16.wm" "polyUnite4.im[0]";
connectAttr "pCylinderShape5.wm" "polyUnite4.im[1]";
connectAttr "polyUnite4.out" "groupParts13.ig";
connectAttr "groupId29.id" "groupParts13.gi";
connectAttr "groupParts12.og" "polyMergeVert15.ip";
connectAttr "pCylinder6Shape.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert15.out" "polyMergeVert16.ip";
connectAttr "pCylinder6Shape.wm" "polyMergeVert16.mp";
connectAttr "polyMergeVert16.out" "polyMergeVert17.ip";
connectAttr "pCylinder6Shape.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert17.out" "polyMergeVert18.ip";
connectAttr "pCylinder6Shape.wm" "polyMergeVert18.mp";
connectAttr "groupParts13.og" "polyMergeVert19.ip";
connectAttr "pCube17Shape.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert19.out" "polyMergeVert20.ip";
connectAttr "pCube17Shape.wm" "polyMergeVert20.mp";
connectAttr "polyMergeVert20.out" "polyMergeVert21.ip";
connectAttr "pCube17Shape.wm" "polyMergeVert21.mp";
connectAttr "polyMergeVert21.out" "polyMergeVert22.ip";
connectAttr "pCube17Shape.wm" "polyMergeVert22.mp";
connectAttr "surfaceShader1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "surfaceShader1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "blinn1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube9Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube10Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube11Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube11Shape.ciog.cog[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipe2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube13Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Trim_Char_x_10_1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Trim_Char_x_12_1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Trim_Char_x_14_1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder6Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube17Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
// End of parentRig_Clock.ma
