+++
title = "Brain networks in learning"

date = 2022-06-10
lastmod = 2022-06-10
draft = false

tags = ["neuroscience", "functional_connectivity", "BNL", "fMRI", "Bayesian", "mixed_model", "regression"]
summary = "The work plan of the EU-funded project *Brain Networks in Learning*"
abstract = "The work plan of the EU-funded project *Brain Networks in Learning*"
authors = ["Vassilis Kehayas"]
hasPlotly = false
doi = "10.5281/zenodo.6630894"
sourceFile = "src/bnl-framework.Rmd"

+++
I have been awarded a Marie-Curie Individual Fellowship to study the
changes in functional connectivity between cortical areas of the human
brain during verbal learning. In this post, I will describe the idea
behind the project and some of the tools that we plan to use.

The brain’s cerebral cortex has been described as a distributed network
that supports the formation of associative memories ([Braitenberg and
Schüz 1998](#ref-braitenbergCortexStatisticsGeometry1998)). The
prevailing theory of understanding cortical function, Hebb’s dual-trace
theory ([Hebb 2002–1949](#ref-hebbOrganizationBehavior2002);
[Pulvermüller 1999](#ref-pulvermullerWordsBrainLanguage1999)), predicts
that a persistent memory trace is formed through repeated co-activation
of cortical neurons during learning from experience. Studies using a
variety of learning tasks have shown the occurrence of a persistent
memory trace by measuring brain activity through functional magnetic
resonance imaging (fMRI) during rest periods following the learning task
([Guerra-Carrillo, Mackey, and Bunge
2014](#ref-guerra-carrilloRestingStateFMRIWindow2014); [Tambini, Ketz,
and Davachi 2010](#ref-tambiniEnhancedBrainCorrelations2010); [Tambini
and Davachi 2013](#ref-tambiniPersistenceHippocampalMultivoxel2013);
[van Kesteren et al.
2010](#ref-vankesterenPersistentSchemadependentHippocampalneocortical2010)).
However, we know less about how the memory trace forms during learning.
It is known that the strength of some brain areas’ signal changes during
learning depending on the task ([Andreasen et al.
1995](#ref-andreasenIIPETStudies1995); [Behrens et al.
2007](#ref-behrensLearningValueInformation2007); [Chein and Schneider
2005](#ref-cheinNeuroimagingStudiesPracticerelated2005); [Karuza et al.
2013](#ref-karuzaNeuralCorrelatesStatistical2013); [Kopelman
1998](#ref-kopelmanPETActivationMedial1998); [Raichle et al.
1994](#ref-raichlePracticerelatedChangesHuman1994); [Saykin et al.
1999](#ref-saykinFunctionalDifferentiationMedial1999); [Sigman et al.
2005](#ref-sigmanTopDownReorganizationActivity2005); [Strange et al.
2002](#ref-strangeDissociableHumanPerirhinal2002)). Additionally,
changes in functional connectivity have been detected between small sets
of selected brain areas or groups of areas during learning ([Bassett et
al. 2015](#ref-bassettLearninginducedAutonomySensorimotor2015);
[Karlaftis et al. 2019](#ref-karlaftisMultimodalImagingBrain2019);
[Vahdat et al. 2011](#ref-vahdatFunctionallySpecificChanges2011); [van
Kesteren et al.
2010](#ref-vankesterenPersistentSchemadependentHippocampalneocortical2010);
[Zhuang et al. 2021](#ref-zhuangRapidNeuralReorganization2021)).
However, a complete description of changes in functional connectivity
during learning across cortical areas is still missing.

The verbal learning test (VLT) ([Boake
2000](#ref-boakeEdouardClaparedeAuditory2000)) and its variations have
been shown to induce learning associated with changes in signal strength
to brain areas related to word processing, task engagement, and memory
encoding, such as left frontal, left medial temporal, and hippocampal
cortical areas, respectively ([Andreasen et al.
1995](#ref-andreasenIIPETStudies1995); [Kopelman
1998](#ref-kopelmanPETActivationMedial1998); [Strange et al.
2002](#ref-strangeDissociableHumanPerirhinal2002)). Upon learning the
task, cortical activity is increased, among other cortical areas, in the
left medial parietal cortex and the right prefrontal cortex, whose
function is related to recognition and retrieval, respectively
([Kopelman 1998](#ref-kopelmanPETActivationMedial1998); [Saykin et al.
1999](#ref-saykinFunctionalDifferentiationMedial1999)). How this
distributed memory trace is formed and spread throughout the cortical
network has not been adequately examined. Our goal is to study the
changes in functional connectivity between cortical areas as the
subjects learn to perform the task.

We will administer a version of the VLT adapted for visual presentation
of the word lists to healthy human subjects while assessing their brain
activity with fMRI. We will present to the subjects two distractor
lists, each consisting of 25 words, with instructions to silently read
them. Afterwards, we will show them a target list of 25 words with
instructions to memorize them in 5 consecutive learning blocks. We will
evaluate their learning rate after each block. Additionally, we will
record brain activity during rest periods at the beginning and end of
the learning task. By comparing the cortical brain activity associated
with the epochs of the two different lists’ presentation, we will detect
the changes in functional connectivity related to the engagement in the
learning task.

We will use standard routines for data preprocessing ([Antypa et al.
2021](#ref-antypaAnxietyDepressionSeverity2021); [Simos et al.
2017](#ref-simosNeuralFoundationsOvert2017)). We will segment cortical
areas using local-global parcellation to identify functionally
homogeneous and spatially restricted units and reduce the dimensionality
of the data ([Schaefer et al.
2018](#ref-schaeferLocalGlobalParcellationHuman2018)). We will analyze
the data with Bayesian multi-level regression models ([Gelman and Hill
2006](#ref-gelmanDataAnalysisUsing2006)) to construct generative models
that respect our data structure. An additional advantage of such models
is that they provide interpretable estimates as opposed to competing
machine-learning techniques, most of which need non-negligible effort to
interpret. Furthermore, we will exploit the distributional flexibility
that this framework offers in combination with multi-membership
modelling that takes into account that a given area participates in
multiple pairs ([Chen et al.
2019](#ref-chenIntegrativeBayesianApproach2019)) to estimate functional
connectivity between pairs of cortical areas across time. We will
include the subjects’ age and educational level as confounding predictor
variables to adjust the functional connectivity estimates. We will use
the obtained estimates of functional connectivity to provide a
graph-theoretical description of the network’s evolution.

Our primary hypothesis is that beyond the changes in individual areas’
activity during learning, we will observe pronounced changes in
functional connectivity between cortical areas. We expect to detect the
transition of cortical activity from the sub-network associated with
task engagement to the sub-network associated with retrieval and
describe it in terms of changes in inter-areal interactions.
Furthermore, we expect that the robust learning induced by the task will
translate to persistent functional connectivity changes that can be
detected when comparing the rest periods recorded before and after the
learning task, thus affirming the existence of a memory trace.
Additionally, we hypothesize that the changes in functional connectivity
we will observe will carry considerable predictive power of a subject’s
learning rate. As a subject’s performance in the VLT is predictive of
the occurrence of dementia in the future ([Constantinidou et al.
2014](#ref-constantinidouAgeRelatedDeclineVerbal2014); [Estévez-González
et al. 2003](#ref-estevez-gonzalezReyVerbalLearning2003)), the ability
to predict a subject’s learning rate by observing the brain’s activity
offers the potential for our statistical modelling approach to inform
the creation of a neuropsychological diagnostic test in future work.

## Acknowledgements

<p style="max-width:30%; float:left">
<img src="img/5000200-commission-cl.jpg" style="margin-top:0.75em; margin-bottom:1rem">
</p>
<p style="width:70%; float:right">
This project has received funding from the European Union’s Horizon 2020
research and innovation programme under the Marie Skłodowska-Curie grant
agreement No 895465.
</p>

<h2 id="references" style="margin-top:5em">
References
</h2>

Andreasen, Nancy C., Daniel S. O’Leary, Ted Cizadlo, Stephan Arndt,
Karim Rezai, G.Leonard Watkins, Laura L.Boles Ponto, and Richard D.
Hichwa. 1995. “II. PET Studies of Memory: Novel Versus Practiced Free
Recall of Word Lists.” *NeuroImage* 2 (4): 296–305.
<https://doi.org/10.1006/nimg.1995.1037>.

Antypa, Despina, Nicholas J Simos, Eleftherios Kavroulakis, George
Bertsias, Antonis Fanouriakis, Prodromos Sidiropoulos, Dimitrios
Boumpas, and Efrosini Papadaki. 2021. “Anxiety and Depression Severity
in Neuropsychiatric SLE Are Associated with Perfusion and Functional
Connectivity Changes of the Frontolimbic Neural Circuit: A Resting-State
f(unctional) MRI Study.” *Lupus Science & Medicine* 8 (1): e000473.
<https://doi.org/10.1136/lupus-2020-000473>.

Bassett, Danielle S, Muzhi Yang, Nicholas F Wymbs, and Scott T Grafton.
2015. “Learning-Induced Autonomy of Sensorimotor Systems.” *Nature
Neuroscience* 18 (5): 744–51. <https://doi.org/10.1038/nn.3993>.

Behrens, Timothy E J, Mark W Woolrich, Mark E Walton, and Matthew F S
Rushworth. 2007. “Learning the Value of Information in an Uncertain
World.” *Nature Neuroscience* 10 (9): 1214–21.
<https://doi.org/10.1038/nn1954>.

Boake, Corwin. 2000. “Édouard Claparède and the Auditory Verbal Learning
Test.” *Journal of Clinical and Experimental Neuropsychology* 22 (2):
286–92. <https://doi.org/10.1076/1380-3395(200004)22:2;1-1;FT286>.

Braitenberg, Valentino, and Almut Schüz. 1998. *Cortex: Statistics and
Geometry of Neuronal Connectivity*. Berlin, Heidelberg: Springer Berlin
Heidelberg. <https://doi.org/10.1007/978-3-662-03733-1>.

Chein, Jason M., and Walter Schneider. 2005. “Neuroimaging Studies of
Practice-Related Change: <span class="nocase">fMRI</span> and
Meta-Analytic Evidence of a Domain-General Control Network for
Learning.” *Cognitive Brain Research* 25 (3): 607–23.
<https://doi.org/10.1016/j.cogbrainres.2005.08.013>.

Chen, Gang, Paul-Christian Bürkner, Paul A. Taylor, Zhihao Li, Lijun
Yin, Daniel R. Glen, Joshua Kinnison, Robert W. Cox, and Luiz Pessoa.
2019. “An Integrative Bayesian Approach to Matrix-Based Analysis in
Neuroimaging.” *Human Brain Mapping* 40 (14): 4072–90.
<https://doi.org/10.1002/hbm.24686>.

Constantinidou, Fofi, Ioannis Zaganas, Emmanouil Papastefanakis,
Dimitrios Kasselimis, Andreas Nidos, and Panagiotis G Simos. 2014.
“Age-Related Decline in Verbal Learning Is Moderated by Demographic
Factors, Working Memory Capacity, and Presence of Amnestic Mild
Cognitive Impairment.” *Journal of the International Neuropsychological
Society* 20 (8): 822–35. <https://doi.org/10.1017/S1355617714000678>.

Estévez-González, Armando, Jaime Kulisevsky, Anunciación Boltes, Pilar
Otermín, and Carmen García-Sánchez. 2003. “Rey Verbal Learning Test Is a
Useful Tool for Differential Diagnosis in the Preclinical Phase of
Alzheimer’s Disease: Comparison with Mild Cognitive Impairment and
Normal Aging: REY VERBAL LEARNING TEST.” *International Journal of
Geriatric Psychiatry* 18 (11): 1021–28.
<https://doi.org/10.1002/gps.1010>.

Gelman, Andrew, and Jennifer Hill. 2006. *Data Analysis Using Regression
and Multilevel/Hierarchical Models*. 1 edition. Cambridge ; New York:
Cambridge University Press.

Guerra-Carrillo, Belén, Allyson P. Mackey, and Silvia A. Bunge. 2014.
“Resting-<span class="nocase">State fMRI</span>: A Window into Human
Brain Plasticity.” *The Neuroscientist* 20 (5): 522–33.
<https://doi.org/10.1177/1073858414524442>.

Hebb, D. O. 2002–1949. *The Organization of Behavior*. Routledge.
<https://doi.org/10.4324/9781410612403>.

Karlaftis, Vasilis M., Joseph Giorgio, Petra E. Vértes, Rui Wang, Yuan
Shen, Peter Tino, Andrew E. Welchman, and Zoe Kourtzi. 2019. “Multimodal
Imaging of Brain Connectivity Reveals Predictors of Individual Decision
Strategy in Statistical Learning.” *Nature Human Behaviour* 3 (3):
297–307. <https://doi.org/10.1038/s41562-018-0503-4>.

Karuza, Elisabeth A., Elissa L. Newport, Richard N. Aslin, Sarah J.
Starling, Madalina E. Tivarus, and Daphne Bavelier. 2013. “The Neural
Correlates of Statistical Learning in a Word Segmentation Task: <span
class="nocase">An fMRI</span> Study.” *Brain and Language* 127 (1):
46–54. <https://doi.org/10.1016/j.bandl.2012.11.007>.

Kesteren, M. T. R. van, G. Fernandez, D. G. Norris, and E. J. Hermans.
2010. “Persistent Schema-Dependent Hippocampal-Neocortical Connectivity
During Memory Encoding and Postencoding Rest in Humans.” *Proceedings of
the National Academy of Sciences* 107 (16): 7550–55.
<https://doi.org/10.1073/pnas.0914892107>.

Kopelman, M. 1998. “PET Activation of the Medial Temporal Lobe in
Learning.” *Brain* 121 (5): 875–87.
<https://doi.org/10.1093/brain/121.5.875>.

Pulvermüller, Friedemann. 1999. “Words in the Brain’s Language.”
*BEHAVIORAL AND BRAIN SCIENCES*, 84.

Raichle, Marcus E., Julie A. Fiez, Tom O. Videen, Ann-Mary K. MacLeod,
Jose V. Pardo, Peter T. Fox, and Steven E. Petersen. 1994.
“Practice-Related Changes in Human Brain Functional Anatomy During
Nonmotor Learning.” *Cerebral Cortex* 4 (1): 8–26.
<https://doi.org/10.1093/cercor/4.1.8>.

Saykin, Andrew J., Sterling C. Johnson, Laura A. Flashman, Thomas W.
McAllister, Molly Sparling, Terrance M. Darcey, Chad H. Moritz, Stephen
J. Guerin, John Weaver, and Alexander Mamourian. 1999. “Functional
Differentiation of Medial Temporal and Frontal Regions Involved in
Processing Novel and Familiar Words: An <span class="nocase">fMRI</span>
Study.” *Brain* 122 (10): 1963–71.
<https://doi.org/10.1093/brain/122.10.1963>.

Schaefer, Alexander, Ru Kong, Evan M Gordon, Timothy O Laumann, Xi-Nian
Zuo, Avram J Holmes, Simon B Eickhoff, and B T Thomas Yeo. 2018.
“Local-Global Parcellation of the Human Cerebral Cortex from Intrinsic
Functional Connectivity MRI.” *Cerebral Cortex* 28 (9): 3095–3114.
<https://doi.org/10.1093/cercor/bhx179>.

Sigman, Mariano, Hong Pan, Yihong Yang, Emily Stern, David Silbersweig,
and Charles D. Gilbert. 2005. “Top-Down Reorganization of Activity in
the Visual Pathway After Learning a Shape Identification Task.” *Neuron*
46 (5): 823–35. <https://doi.org/10.1016/j.neuron.2005.05.014>.

Simos, Panagiotis G., Eleftherios Kavroulakis, Thomas Maris, Efrosini
Papadaki, Themistoklis Boursianis, Giorgos Kalaitzakis, and Helen E.
Savaki. 2017. “Neural Foundations of Overt and Covert Actions.”
*NeuroImage* 152 (May): 482–96.
<https://doi.org/10.1016/j.neuroimage.2017.03.036>.

Strange, B. A., L. J. Otten, O. Josephs, M. D. Rugg, and R. J. Dolan.
2002. “Dissociable Human Perirhinal, Hippocampal, and Parahippocampal
Roles During Verbal Encoding.” *The Journal of Neuroscience* 22 (2):
523–28. <https://doi.org/10.1523/JNEUROSCI.22-02-00523.2002>.

Tambini, A., and L. Davachi. 2013. “Persistence of Hippocampal
Multivoxel Patterns into Postencoding Rest Is Related to Memory.”
*Proceedings of the National Academy of Sciences* 110 (48): 19591–96.
<https://doi.org/10.1073/pnas.1308499110>.

Tambini, A., N. Ketz, and L. Davachi. 2010. “Enhanced Brain Correlations
During Rest Are Related to Memory for Recent Experiences.” *Neuron* 65
(2): 280–90. <https://doi.org/10.1016/j.neuron.2010.01.001>.

Vahdat, S., M. Darainy, T. E. Milner, and D. J. Ostry. 2011.
“Functionally Specific Changes in Resting-State Sensorimotor Networks
After Motor Learning.” *Journal of Neuroscience* 31 (47): 16907–15.
<https://doi.org/10.1523/JNEUROSCI.2737-11.2011>.

Zhuang, Liping, Jingyi Wang, Bingsen Xiong, Cheng Bian, Lei Hao, Peter
J. Bayley, and Shaozheng Qin. 2021. “Rapid Neural Reorganization During
Retrieval Practice Predicts Subsequent Long-Term Retention and False
Memory.” *Nature Human Behaviour*, October.
<https://doi.org/10.1038/s41562-021-01188-4>.
