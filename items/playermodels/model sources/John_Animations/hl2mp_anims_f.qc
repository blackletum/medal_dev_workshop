$modelname player/john/hl2mp_anims_female.mdl

$include "..\Humans\female\commonbones.qci"
$include "..\Humans\standardhierarchy.qci"
$include "..\Humans\standardikchains.qci"
$include "..\Humans\male\hitbox.qci"

//$lockbonelengths

//$lockdefinebones

$include "player_macros.qci"

$include "player_anims.qci"

$animation "a_ptrick" "anims/female_ragdoll_pose.smd" subtract "reference" 0
$sequence "ptrick" "a_ptrick" activity "ACT_PROPORTIONS" 1 predelta autoplay


$attachment "eyes" "ValveBiped.Bip01_Head1" 0 -4 67.5 absolute
//$include "body_poses_lean.qci"
