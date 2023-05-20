Last Updated: 13 Jul 2017: "blacklist" of unacceptable blocks expanded for generic structures

These templates were created for the Minecraft mod "Ruins," maintained by AtomicStryker, by various contributors to the "Ruins" forum, as noted in the comments of each template.

I've made changes to these templates for the purpose of keeping them up to date with more recent versions of Minecraft, and new features in the Ruins mod.  Such considerations include:

* Corrections to apparent conversion issues of some templates when changing from numeric block IDs to named block IDs.  (In particular, Floater.tml, which for a long time had end-portal blocks as part of the structure.

* Updating of treasure chest logic (MC version 1.9 and and 1.10).

* Extended use of "preserveBlock" and "-1" spacing for some structures to minimize "cutting" into the landscape quite so much.  (In particular, the CaveSpiderBurrow.tml, OreSpire, and variants thereof.)

* Extension of Unacceptable_Blocks to include Cloud (Natura, to avoid spawning atop clouds), slime_dirt/slime_congealed/slime_grass (to avoid spawning atop Tinkers Construct Slime Islands), various Nether and End materials, mushroom blocks, and ice (so houses won't spawn atop Frozen Oceans).

* Use of "uniqueMinDistance" to replace the old "Unique=1" limitation on special template occurence.  (So, "Floater" won't be absolutely unique, but at least it won't dot your oceans quite so frequently.)

Templates should be placed in the \mods\resources\ruins\* tree of folders.  "Generic" structures go in the "generic" folder, "jungle" structures go in the "jungle" folder, and so on.  Structures in the "optional" folder will not actually appear in terrain generation unless they are put into a proper biome folder.

