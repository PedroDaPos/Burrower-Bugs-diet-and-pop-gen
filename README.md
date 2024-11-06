# Burrower-Bugs-diet-and-pop-gen
 Data and Code associated to our study on the peanut burrower bug population genetics and molecular gut content analysis

## "Intro"
_Pangaeus_ _bilineatus_, the peanut burrower bug, is an emerging peanut pest in North America. Belonging to the family Cydnidae, the nymphal stages of this insect can cause significant damage on peanut seeds, resulting in concerning losses for this industry. One of the main goals of our study was to characterize the population genetics of _P._ _bilineatus_ at different peanut farms in GA, a major part of the peanut industry worldwide. In addition, we also sampled plant DNA from these insects to gain further insight on host plant utilization by adult peanut burrowers - a key information for understanding how peanut and landscape may relate to burrower bug biology. In this study we also investigated the population genetics and diet breadth of another species, _Dallasiellus_ _lugubris_, another burrower bug commonly found in peanut farms. _D._ _lugubris_ shares morphological similarities with _P._ _bilineatus_, which results in mistaken identification of peanut burrower bug, in particular by untrained personnel. In addition, it is unclear whether _D._ _lugubris_ represents a threat for peanut production, since so little is known about its biology, including their range of host plant. We found an unexpected diversity of plant DNA associated to both burrower bug species, indicating that these insects are likely polyphagous. In addition, we found evidence that these insects can easily move between fields, as shown by the low genetic variability among the populations we sampled. Altogether, we describe for the first time dietary breadth and population dynamics for these insects, fundamental information that can help delineate future experiments that may result in more effective pest management strategies.

In this repository we make available all code written for this study, to allow transparency and reproducibility of our data analyses and results.

## Molecular validation of species identification
Samples were sorted from light traps, and every specimen similar to _P._ _bilineatus_ was selected and their DNA extracted. Diet information was obtained from sequencing a total of  three batches of samples. For two batches of burrower bugs ("PBB2" and "PBB3"), DNA was submitted for both diet analysis (targeting the _trnF_ gene, PacBio sequencing at Washington State University) and for RAD-Seq sequencing (Illumina platform, service provided by SNPsaurus Inc.), whereas the remaining batch of samples ("PBB1") was only sequenced for _trnF_.

To validate species attribution to each sample, for all three batches of sequences, as well as to be able to cross reference species name in batches sequenced for both RAD-seq and trnF, all samples were subjected to alignment against draft genomes we generated for _Pangaeus_ _bilineatus_ and for _Dallasiellus_ _lugubris_. The following file describes the step-by-step process for obtaining alignment statistics. Accompanying files for this analysis are located in the folder linked below.

[Step-by-step for aligning sequences to reference draft genomes](https://github.com/PedroDaPos/Burrower-Bugs-diet-and-pop-gen/blob/main/Species%20ID%20validation/bowtie_alignment_burrowerbugs.txt)

[Required files to reproduce the steps described in the link above](https://github.com/PedroDaPos/Burrower-Bugs-diet-and-pop-gen/tree/main/Species%20ID%20validation)

In addition to confirming species identification via alignment of RAD-seq data to draft genomes, we also sequenced COI for a subset of our study samples identified as _Dallasiellus_ _lugubris_, _Pangaeus_ _bilineatus_ and reference _Dallasiellus_ _lugubris_ specimens diagnosed by Dr. Mark Abney. This data was then compared to COI of other burrower bug species and outgroups, further validating our results based only on alignment to our reference draft genomes. It is worth noting that, before our study, NCBI and BOLD did not have any COI sequence available for _Dallasiellus_ _lugubris_.

[Step-by-step for recreating our phylogenetic analyses of burrower bugs COI sequences](https://github.com/PedroDaPos/Burrower-Bugs-diet-and-pop-gen/blob/main/Species%20ID%20validation/Sanger%20Sequencing%20and%20identification/tree_building_method.txt)

## Building of a trnF database



## Workflow for trnF data analysis
