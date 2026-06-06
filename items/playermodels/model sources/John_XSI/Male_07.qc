/*
==============================================================================

male_07, Group02

!!!!!!!!!! USE THE INCLUDED FORTRESS-LIFE MODEL COMPILER FOR JOHN, INCLUDES BACKPORTED L4D STUFF !!!!!!!!!!!!

==============================================================================
*/


$modelname player/john/john_freeman.mdl
$cdmaterials models\player\john\ models\player\john\face\ models\Humans\Male

//start eye/face data
$eyeposition 0 0 70

// head controllers
$attachment "eyes" "ValveBiped.Bip01_Head1" -0.1199 -3.2202 67.1661 absolute
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.60 -5.50 0.00 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5.00 4.00 0.00 rotate 0 90 90

$model male_07 "dmx\male_07_high.dmx"{
	eyeball righteye "ValveBiped.Bip01_Head1" -1.351 -3.2202 67.1935 "eyeball_r" 1 4 "grn_pupil_r" 0.63
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.1112 -3.2202 67.1386 "eyeball_l" 1 -4 "grn_pupil_l" 0.63

	dmxeyelid  upper "dmx\male_07_high.dmx" lowerer 1 -0.1627 neutral "joit" 0.1716 raiser 2 0.2642 split 0.1 righteyeball "righteye" lefteyeball "lefteye"
	dmxeyelid  lower "dmx\male_07_high.dmx" lowerer 3 -0.2623 neutral "joit" -0.1926 raiser 4 -0.0231 split -0.1 righteyeball "righteye" lefteyeball "lefteye"

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination

	noautodmxrules

	$include "../Humans/facerules_xsi.qci"
	
	flexcontroller mouth RELAX
	%RELAX = RELAX
	
	$include "../Humans/bodyrules_xsi.qci"
}
//end eye/face data
$body body male_07_body.smd
$surfaceprop "flesh"
$bbox -13 -13 0  13 13 72
$mostlyopaque
$include "../Humans/standardhierarchy.qci"
$include "../Humans/standardikchains.qci"
$alwayscollapse "Male_01"
$alwayscollapse "XSISceneRoot"
$proceduralbones "../Humans/male.vrd"
$include "../Humans/Male/commonbones.qci"
$unlockdefinebones


$texturegroup "skinfamilies"
{
	{ "john_sheet"            	 "mike_facemap"                 "eyeball_l"             "eyeball_r"        "hands_w"  }
	{ "john_sheet_blue"          "mike_facemap"                 "eyeball_l"             "eyeball_r"        "hands_w"  }
	{ "john_sheet_red_invun"     "mike_facemap_invun"           "eyeball_l_invun"       "eyeball_r_invun"        "hands_w_red_invun"  }
	{ "john_sheet_blue_invun"    "mike_facemap_blue_invun"      "eyeball_l_invun"       "eyeball_r_invun"        "hands_w_blue_invun"  }
}

$includemodel player/john/hl2mp_anims.mdl

$pushd "../Humans/Male/"
$include "../Humans/Male/hitbox.qci"
$include "../Humans/Male/ragdoll.qci"
$popd