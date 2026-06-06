// Created by Crowbar 0.74

$modelname "player/john/cj_john_freeman.mdl"

$bodygroup "body"
{
	studio "cjohnfreeman.smd"
}

$surfaceprop "flesh"

$contents "solid"

$illumposition -1.223 0.062 35.881

$eyeposition 0 0 70

$mostlyopaque

$include "../../Humans/standardhierarchy.qci"
$include "../../Humans/standardikchains.qci"
$include "../../Humans/Male/commonbones.qci"

// THIS BONE CHANGES THE POSITIONING OF HATS
// THANKS TO YOW FOR THIS BONE DEFINE
$definebone "prp_hat" "ValveBiped.Bip01_Head1" 5 -1 0 90 -120 -35 0 0 0 0 0 0

$cdmaterials "models\ebmage\cjohnfreeman\"

$texturegroup "skinfamilies"
{
	{ "cj"            }
	{ "cj_blue"       }
	{ "cj_red_invun"  }
	{ "cj_blue_invun" }
}

$includemodel player/john/hl2mp_anims.mdl

$pushd "../../Humans/Male/"
$include "../../Humans/Male/hitbox.qci"
$include "../../Humans/Male/ragdoll.qci"
$popd