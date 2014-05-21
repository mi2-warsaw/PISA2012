polska <- read.csv("~/Desktop/pisa/polaczone.csv", header=TRUE)

#Ponumerowane Nazwy Kolumn
#http://pisa2012.acer.edu.au/downloads/M_stu_codebook.pdf
#do 150 strony wlacznie

#1 BirthMonth
#2 BirthYear
#3 Gender
#4 AttendISCED0
#5 AgeAtISCED1
#6 RepeatISCED1
#7 RepeatISCED2
#8 RepeatISCED3
#9 LateForSchool
#10 SkipWholeSchoolDay
#11 1SkipClassesWithinSchoolDay
#12 AtHomeMother
#13 AtHomeFather
#14 AtHomeBrothers
#15 AtHomeSisters
#16 AtHomeGrandparents
#17 AtHomeOthers
#18 MotherHighestSchooling
#19 MotherQualificationsISCEDLevel6
#20 MotherQualificationsISCEDLevel5A
#21 MotherQualificationsISCEDLevel5B
#22 MotherQualificationsISCEDLevel4
#23 MotherCurrentJobStatus
#24 FatherHighestSchooling
#25 FatherQualificationsISCEDLevel6
#26 FatherQualificationsISCEDLevel5A
#27 FatherQualificationsISCEDLevel5B
#28 FatherQualificationsISCEDLevel4
#29 FatherCurrentJobStatus
#30 CountryOfBirthInternationalSelf
#31 CountryOfBirthInternationalMother
#32 CountryOfBirthInternationalFather
#33 AgeOfArrivalInCountryOfTest
#34 InternationalLanguageAtHome
#35 PossessionsDesk
#36 PossessionsOwnRoom
#37 PossessionsStudyPlace
#38 PossessionsComputer
#39 PossessionsSoftware
#40 PossessionsInternet
#41 PossessionsLiterature
#42 PossessionsPoetry
#43 PossessionsArt
#44 PossessionsTextbooks
#45 PossessionsTechnicalReferenceBooks
#46 PossessionsDictionary
#47 PossessionsDishwasher
#48 PossessionsDVD
#49 PossessionsSatelliteOrCableTVWithAtLeast30Channels
#50 PossessionsDigitalCamera
#51 PossessionsPlasmaOrLCDTv
#52 HowManyCellularPhones
#53 HowManyTelevisions
#54 HowManyComputers
#55 HowManyCars
#56 HowManyRoomsBathOrShower
#57 HowManyBooksAtHome
#58 MathsInterestEnjoyReading
#59 InstrumentalMotivationWorthwhileForWork
#60 MathsInterestLookForwardToLessons
#61 MathsInterestEnjoyMaths
#62 InstrumentalMotivationWorthwhileForCareerChances
#63 MathsInterestInterested
#64 InstrumentalMotivationImportantForFutureStudy
#65 InstrumentalMotivationHelpsToGetaJob
#66 SubjectiveNormsFriendsDoWellInMathematics
#67 SubjectiveNormsFriendsWorkHardOnMathematics
#68 SubjectiveNormsFriendsEnjoyMathematicsTests
#69 SubjectiveNormsParentsBelieveStudyingMathematicsIsImportant
#70 SubjectiveNormsParentsBelieveMathematicsIsImportantForCareer
#71 SubjectiveNormsParentsLikeMathematics
#72 MathsSelfEfficacyUsingATrainTimetable
#73 MathsSelfEfficacyCalculatingTVDiscount
#74 MathsSelfEfficacyCalculatingSquareMetresOfTiles
#75 MathsSelfEfficacyUnderstandingGraphsInNewspapers
#76 MathsSelfEfficacySolvingEquation1
#77 MathsSelfEfficacyDistanceToScale
#78 MathsSelfEfficacySolvingEquation2
#79 MathsSelfEfficacyCalculatePetrolConsumptionRate
#80 MathsAnxietyWorryThatItWillBeDifficult
#81 MathsSelfConceptNotGoodAtMaths
#82 MathsAnxietyGetVeryTense
#83 MathsSelfConceptGetGoodGrades
#84 MathsAnxietyGetVeryNervous
#85 MathsSelfConceptLearnQuickly
#86 MathsSelfConceptOneOfBestSubjects
#87 MathsAnxietyFeelHelpless
#88 MathsSelfConceptUnderstandDifficultWork
#89 MathsAnxietyWorryAboutGettingPoorGrades
#90 PerceivedControlCanSucceedWithEnoughEffort
#91 PerceivedControlDoingWellIsCompletelyUpToMe
#92 PerceivedControlFamilyDemandsAndProblems
#93 PerceivedControlDifferentTeachers
#94 PerceivedControlIfIWantedICouldPerformWell
#95 PerceivedControlPerformPoorlyRegardless
#96 AttributionsToFailureNotGoodAtMathsProblems
#97 AttributionsToFailureTeacherDidNotExplainWell
#98 AttributionsToFailureBadGuesses
#99 AttributionsToFailureMaterialTooHard
#100 AttributionsToFailureTeacherDidntGetStudentsInterested
#101 AttributionsToFailureUnlucky
#102 MathsWorkEthicHomeworkCompletedInTime
#103 MathsWorkEthicWorkHardOnHomework
#104 MathsWorkEthicPreparedForExams
#105 MathsWorkEthicStudyHardForQuizzes
#106 MathsWorkEthicStudyUntilIUnderstandEverything
#107 MathsWorkEthicPayAttentionInClasses
#108 MathsWorkEthicListenInClasses
#109 MathsWorkEthicAvoidDistractionsWhenStudying
#110 MathsWorkEthicKeepWorkOrganized
#111 MathsIntentionsMathematicsVsLanguageCoursesAfterSchool
#112 MathsIntentionsMathematicsVsScienceRelatedMajorinCollege
#113 MathsIntentionsStudyHarderInMathematicsVsLanguageClasses
#114 MathsIntentionsTakeMaximumNumberOfMathematicsVsScienceClasses
#115 MathsIntentionsPursuingACareerThatInvolvesMathematicsVsScience
#116 MathsBehaviourTalkAboutMathsWithFriends
#117 MathsBehaviourHelpFriendsWithMaths
#118 MathsBehaviourExtracurricularActivity
#119 MathsBehaviourParticipateInCompetitions
#120 MathsBehaviourStudyMoreThan2ExtraHoursADay
#121 MathsBehaviourPlayChess
#122 MathsBehaviourComputerProgramming
#123 MathsBehaviourParticipateInMathsClub
#124 LearningStrategiesImportantPartsVsExistingKnowledgeVsLearnByHeart
#125 LearningStrategiesImproveUnderstandingVsNewWaysVsMemory
#126 LearningStrategiesOtherSubjectsVsLearningGoalsvsRehearseProblems
#127 LearningStrategiesRepeatExamplesVsEverydayApplicationsVsMoreInformation
#128 OutOfSchoolLessonsTestLang
#129 OutOfSchoolLessonsMaths
#130 OutOfSchoolLessonsScience
#131 OutOfSchoolLessonsOther
#132 OutOfSchoolStudyTimeHomework
#133 OutOfSchoolStudyTimeGuidedHomework
#134 OutOfSchoolStudyTimePersonalTutor
#135 OutOfSchoolStudyTimeCommercialCompany
#136 OutOfSchoolStudyTimeWithParent
#137 OutOfSchoolStudyTimeComputer
#138 ExperienceWithAppliedMathsTasksUseTrainTimetable
#139 ExperienceWithAppliedMathsTasksCalculatePriceincludingTax
#140 ExperienceWithAppliedMathsTasksCalculateSquareMetres
#141 ExperienceWithAppliedMathsTasksUnderstandScientificTables
#142 ExperienceWithPureMathsTasksSolveEquation1
#143 ExperienceWithAppliedMathsTasksUseAMapToCalculateDistance
#144 ExperienceWithPureMathsTasksSolveEquation2
#145 ExperienceWithAppliedMathsTasksCalculatePowerConsumptionRate
#146 ExperienceWithAppliedMathsTasksSolveEquation3
#147 FamiliarityWithMathsConceptsExponentialFunction
#148 FamiliarityWithMathsConceptsDivisor
#149 FamiliarityWithMathsConceptsQuadraticFunction
#150 OverclaimingProperNumber
#151 FamiliarityWithMathsConceptsLinearEquation
#152 FamiliarityWithMathsConceptsVectors
#153 FamiliarityWithMathsConceptsComplexNumber
#154 FamiliarityWithMathsConceptsRationalNumber
#155 FamiliarityWithMathsConceptsRadicals
#156 OverclaimingSubjunctiveScaling
#157 FamiliarityWithMathsConceptsPolygon
#158 OverclaimingDeclarativeFraction
#159 FamiliarityWithMathsConceptsCongruentFigure
#160 FamiliarityWithMathsConceptsCosine
#161 FamiliarityWithMathsConceptsArithmeticMean
#162 FamiliarityWithMathsConceptsProbability
#163 MinInClassPeriodTestLang
#164 MinInClassPeriodMaths
#165 MinInClassPeriodScience
#166 NoOfClassPeriodP/wkTestLang
#167 NoOfClassPeriodP/wkMaths
#168 NoOfClassPeriodP/wkScience
#169 NoOfALLClassPeriodAWeek
#170 ClassSizeNoOfStudentsInTestLanguageClass
#171 OTLAlgebraicWordProblemInMathsLesson
#172 OTLAlgebraicWordProblemInTests
#173 OTLProceduralTaskInMathsLesson
#174 OTLProceduralTaskInTests
#175 OTLPureMathsReasoningInMathsLesson
#176 OTLPureMathsReasoningInTests
#177 OTLAppliedMathsReasoningInMathsLesson
#178 OTLAppliedMathsReasoningInTests
#179 MathsTeachingTeacherShowsInterest
#180 MathsTeachingExtraHelp
#181 MathsTeachingTeacherHelps
#182 MathsTeachingTeacherContinues
#183 MathsTeachingExpressOpinions
#184 TeacherDirectedInstructionSetsClearGoals
#185 TeacherDirectedInstructionEncouragesThinkingAndReasoning
#186 StudentOrientationDifferentiatesBetweenStudentsWhenGivingTasks
#187 StudentOrientationAssignsComplexProjects
#188 FormativeAssessmentGivesFeedback
#189 TeacherDirectedInstructionChecksUnderstanding
#190 StudentOrientationHasStudentsWorkInSmallGroups
#191 TeacherDirectedInstructionSummarizesPreviousLessons
#192 StudentOrientationPlansClassroomActivities
#193 FormativeAssessmentGivesFeedbackOnStrengthsAndWeaknesses
#194 FormativeAssessmentInformsAboutExpectations
#195 TeacherDirectedInstructionInformsAboutLearningGoals
#196 FormativeAssessmentTellsHowToGetBetter
#197 CognitiveActivationTeacherEncouragesToReflectProblems
#198 CognitiveActivationGivesProblemsThatRequireToThink
#199 CognitiveActivationAsksToUseOwnProcedures
#200 CognitiveActivationPresentsProblemsWithNoObviousSolutions
#201 CognitiveActivationPresentsProblemsInDifferentContexts
#202 CognitiveActivationHelpsLearnFromMistakes
#203 CognitiveActivationAsksForExplanations
#204 CognitiveActivationApplyWhatWeLearned
#205 CognitiveActivationProblemsWithMultipleSolutions
#206 DisciplinaryClimateStudentsDonëtListen
#207 DisciplinaryClimateNoiseAndDisorder
#208 DisciplinaryClimateTeacherHasToWaitUntilItsQuiet
#209 DisciplinaryClimateStudentsDoNotWorkWell
#210 DisciplinaryClimateStudentsStartWorkingLate
#211 VignetteTeacherSupportHomeworkEveryOtherDay/BackInTime
#212 VignetteTeacherSupportHomeworkOnceAWeek/BackInTime
#213 VignetteTeacherSupportHomeworkOnceAWeek/NotBackInTime
#214 TeacherSupportLetsUsKnowWeHaveToWorkHard
#215 TeacherSupportProvidesExtraHelpWhenNeeded
#216 TeacherSupportHelpsStudentsWithLearning
#217 TeacherSupportGivesOpportunityToExpressOpinions
#218 VignetteClassroomManagementStudentsFrequentlyInterrupt/TeacherArrivesEarly
#219 VignetteClassroomManagementStudentsAreCalm/TeacherArrivesOnTime
#220 VignetteClassroomManagementStudentsFrequentlyInterrupt/TeacherArrivesLate
#221 ClassroomManagementStudentsListen
#222 ClassroomManagementTeacherKeepsClassOrderly
#223 ClassroomManagementTeacherStartsOnTime
#224 ClassroomManagementWaitLongToQuietDown
#225 StudentTeacherRelationsGetAlongWithTeachers
#226 StudentTeacherRelationsTeachersAreInterested
#227 StudentTeacherRelationsTeachersListenToStudents
#228 StudentTeacherRelationsTeachersHelpStudents
#229 StudentTeacherRelationsTeachersTreatStudentsFair
#230 SenseOfBelongingFeelLikeOutsider
#231 SenseOfBelongingMakeFriendsEasily
#232 SenseOfBelongingBelongAtSchool
#233 SenseOfBelongingFeelAwkwardAtSchool
#234 SenseOfBelongingLikedByOtherStudents
#235 SenseOfBelongingFeelLonelyAtSchool
#236 SenseOfBelongingFeelHappyAtSchool
#237 SenseOfBelongingThingsAreIdealAtSchool
#238 SenseOfBelongingSatisfiedAtSchool
#239 AttitudeTowardsSchoolDoesLittleToPrepareMeForLife
#240 AttitudeTowardsSchoolWasteOfTime
#241 AttitudeTowardsSchoolGaveMeConfidence
#242 AttitudeTowardsSchoolUsefulForJob
#243 AttitudeTowardSchoolHelpsToGetAJob
#244 AttitudeTowardSchoolPrepareForCollege
#245 AttitudeTowardSchoolEnjoyGoodGrades
#246 AttitudeTowardSchoolTryingHardIsImportant
#247 PerceivedControlCanSucceedWithEnoughEffort
#248 PerceivedControlMyChoiceWhetherIWillBeGood
#249 PerceivedControlProblemsPreventFromPuttingEffortIntoSchoo
#250 PerceivedControlDifferentTeachersWouldMakeMeTryHarder
#251 PerceivedControlCouldPerformWellIfIWanted
#252 PerceivedControlPerformPoorRegardless
#253 PerseveranceGiveUpEasily


polska <- polska[,c(11:263)] 
colnames(polska) <- c(
  "BirthMonth",
  "BirthYear",
  "Gender",
  "AttendISCED0",
  "AgeAtISCED1",
  "RepeatISCED1",
  "RepeatISCED2",
  "RepeatISCED3",
  "LateForSchool",
  "SkipWholeSchoolDay",
  "1SkipClassesWithinSchoolDay",
  "AtHomeMother",
  "AtHomeFather",
  "AtHomeBrothers",
  "AtHomeSisters",
  "AtHomeGrandparents",
  "AtHomeOthers",
  "MotherHighestSchooling",
  "MotherQualificationsISCEDLevel6",
  "MotherQualificationsISCEDLevel5A",
  "MotherQualificationsISCEDLevel5B",
  "MotherQualificationsISCEDLevel4",
  "MotherCurrentJobStatus",
  "FatherHighestSchooling",
  "FatherQualificationsISCEDLevel6",
  "FatherQualificationsISCEDLevel5A",
  "FatherQualificationsISCEDLevel5B",
  "FatherQualificationsISCEDLevel4",
  "FatherCurrentJobStatus",
  "CountryOfBirthInternationalSelf",
  "CountryOfBirthInternationalMother",
  "CountryOfBirthInternationalFather",
  "AgeOfArrivalInCountryOfTest",
  "InternationalLanguageAtHome",
  "PossessionsDesk",
  "PossessionsOwnRoom",
  "PossessionsStudyPlace",
  "PossessionsComputer",
  "PossessionsSoftware",
  "PossessionsInternet",
  "PossessionsLiterature",
  "PossessionsPoetry",
  "PossessionsArt",
  "PossessionsTextbooks",
  "PossessionsTechnicalReferenceBooks",
  "PossessionsDictionary",
  "PossessionsDishwasher",
  "PossessionsDVD",
  "PossessionsSatelliteOrCableTVWithAtLeast30Channels",
  "PossessionsDigitalCamera",
  "PossessionsPlasmaOrLCDTv",
  "HowManyCellularPhones",
  "HowManyTelevisions",
  "HowManyComputers",
  "HowManyCars",
  "HowManyRoomsBathOrShower",
  "HowManyBooksAtHome",
  "MathsInterestEnjoyReading",
  "InstrumentalMotivationWorthwhileForWork",
  "MathsInterestLookForwardToLessons",
  "MathsInterestEnjoyMaths",
  "InstrumentalMotivationWorthwhileForCareerChances",
  "MathsInterestInterested",
  "InstrumentalMotivationImportantForFutureStudy",
  "InstrumentalMotivationHelpsToGetaJob",
  "SubjectiveNormsFriendsDoWellInMathematics",
  "SubjectiveNormsFriendsWorkHardOnMathematics",
  "SubjectiveNormsFriendsEnjoyMathematicsTests",
  "SubjectiveNormsParentsBelieveStudyingMathematicsIsImportant",
  "SubjectiveNormsParentsBelieveMathematicsIsImportantForCareer",
  "SubjectiveNormsParentsLikeMathematics",
  "MathsSelfEfficacyUsingATrainTimetable",
  "MathsSelfEfficacyCalculatingTVDiscount",
  "MathsSelfEfficacyCalculatingSquareMetresOfTiles",
  "MathsSelfEfficacyUnderstandingGraphsInNewspapers",
  "MathsSelfEfficacySolvingEquation1",
  "MathsSelfEfficacyDistanceToScale",
  "MathsSelfEfficacySolvingEquation2",
  "MathsSelfEfficacyCalculatePetrolConsumptionRate",
  "MathsAnxietyWorryThatItWillBeDifficult",
  "MathsSelfConceptNotGoodAtMaths",
  "MathsAnxietyGetVeryTense",
  "MathsSelfConceptGetGoodGrades",
  "MathsAnxietyGetVeryNervous",
  "MathsSelfConceptLearnQuickly",
  "MathsSelfConceptOneOfBestSubjects",
  "MathsAnxietyFeelHelpless",
  "MathsSelfConceptUnderstandDifficultWork",
  "MathsAnxietyWorryAboutGettingPoorGrades",
  "PerceivedControlCanSucceedWithEnoughEffort",
  "PerceivedControlDoingWellIsCompletelyUpToMe",
  "PerceivedControlFamilyDemandsAndProblems",
  "PerceivedControlDifferentTeachers",
  "PerceivedControlIfIWantedICouldPerformWell",
  "PerceivedControlPerformPoorlyRegardless",
  "AttributionsToFailureNotGoodAtMathsProblems",
  "AttributionsToFailureTeacherDidNotExplainWell",
  "AttributionsToFailureBadGuesses",
  "AttributionsToFailureMaterialTooHard",
  "AttributionsToFailureTeacherDidntGetStudentsInterested",
  "AttributionsToFailureUnlucky",
  "MathsWorkEthicHomeworkCompletedInTime",
  "MathsWorkEthicWorkHardOnHomework",
  "MathsWorkEthicPreparedForExams",
  "MathsWorkEthicStudyHardForQuizzes",
  "MathsWorkEthicStudyUntilIUnderstandEverything",
  "MathsWorkEthicPayAttentionInClasses",
  "MathsWorkEthicListenInClasses",
  "MathsWorkEthicAvoidDistractionsWhenStudying",
  "MathsWorkEthicKeepWorkOrganized",
  "MathsIntentionsMathematicsVsLanguageCoursesAfterSchool",
  "MathsIntentionsMathematicsVsScienceRelatedMajorinCollege",
  "MathsIntentionsStudyHarderInMathematicsVsLanguageClasses",
  "MathsIntentionsTakeMaximumNumberOfMathematicsVsScienceClasses",
  "MathsIntentionsPursuingACareerThatInvolvesMathematicsVsScience",
  "MathsBehaviourTalkAboutMathsWithFriends",
  "MathsBehaviourHelpFriendsWithMaths",
  "MathsBehaviourExtracurricularActivity",
  "MathsBehaviourParticipateInCompetitions",
  "MathsBehaviourStudyMoreThan2ExtraHoursADay",
  "MathsBehaviourPlayChess",
  "MathsBehaviourComputerProgramming",
  "MathsBehaviourParticipateInMathsClub",
  "LearningStrategiesImportantPartsVsExistingKnowledgeVsLearnByHeart",
  "LearningStrategiesImproveUnderstandingVsNewWaysVsMemory",
  "LearningStrategiesOtherSubjectsVsLearningGoalsvsRehearseProblems",
  "LearningStrategiesRepeatExamplesVsEverydayApplicationsVsMoreInformation",
  "OutOfSchoolLessonsTestLang",
  "OutOfSchoolLessonsMaths",
  "OutOfSchoolLessonsScience",
  "OutOfSchoolLessonsOther",
  "OutOfSchoolStudyTimeHomework",
  "OutOfSchoolStudyTimeGuidedHomework",
  "OutOfSchoolStudyTimePersonalTutor",
  "OutOfSchoolStudyTimeCommercialCompany",
  "OutOfSchoolStudyTimeWithParent",
  "OutOfSchoolStudyTimeComputer",
  "ExperienceWithAppliedMathsTasksUseTrainTimetable",
  "ExperienceWithAppliedMathsTasksCalculatePriceincludingTax",
  "ExperienceWithAppliedMathsTasksCalculateSquareMetres",
  "ExperienceWithAppliedMathsTasksUnderstandScientificTables",
  "ExperienceWithPureMathsTasksSolveEquation1",
  "ExperienceWithAppliedMathsTasksUseAMapToCalculateDistance",
  "ExperienceWithPureMathsTasksSolveEquation2",
  "ExperienceWithAppliedMathsTasksCalculatePowerConsumptionRate",
  "ExperienceWithAppliedMathsTasksSolveEquation3",
  "FamiliarityWithMathsConceptsExponentialFunction",
  "FamiliarityWithMathsConceptsDivisor",
  "FamiliarityWithMathsConceptsQuadraticFunction",
  "OverclaimingProperNumber",
  "FamiliarityWithMathsConceptsLinearEquation",
  "FamiliarityWithMathsConceptsVectors",
  "FamiliarityWithMathsConceptsComplexNumber",
  "FamiliarityWithMathsConceptsRationalNumber",
  "FamiliarityWithMathsConceptsRadicals",
  "OverclaimingSubjunctiveScaling",
  "FamiliarityWithMathsConceptsPolygon",
  "OverclaimingDeclarativeFraction",
  "FamiliarityWithMathsConceptsCongruentFigure",
  "FamiliarityWithMathsConceptsCosine",
  "FamiliarityWithMathsConceptsArithmeticMean",
  "FamiliarityWithMathsConceptsProbability",
  "MinInClassPeriodTestLang",
  "MinInClassPeriodMaths",
  "MinInClassPeriodScience",
  "NoOfClassPeriodP/wkTestLang",
  "NoOfClassPeriodP/wkMaths",
  "NoOfClassPeriodP/wkScience",
  "NoOfALLClassPeriodAWeek",
  "ClassSizeNoOfStudentsInTestLanguageClass",
  "OTLAlgebraicWordProblemInMathsLesson",
  "OTLAlgebraicWordProblemInTests",
  "OTLProceduralTaskInMathsLesson",
  "OTLProceduralTaskInTests",
  "OTLPureMathsReasoningInMathsLesson",
  "OTLPureMathsReasoningInTests",
  "OTLAppliedMathsReasoningInMathsLesson",
  "OTLAppliedMathsReasoningInTests",
  "MathsTeachingTeacherShowsInterest",
  "MathsTeachingExtraHelp",
  "MathsTeachingTeacherHelps",
  "MathsTeachingTeacherContinues",
  "MathsTeachingExpressOpinions",
  "TeacherDirectedInstructionSetsClearGoals",
  "TeacherDirectedInstructionEncouragesThinkingAndReasoning",
  "StudentOrientationDifferentiatesBetweenStudentsWhenGivingTasks",
  "StudentOrientationAssignsComplexProjects",
  "FormativeAssessmentGivesFeedback",
  "TeacherDirectedInstructionChecksUnderstanding",
  "StudentOrientationHasStudentsWorkInSmallGroups",
  "TeacherDirectedInstructionSummarizesPreviousLessons",
  "StudentOrientationPlansClassroomActivities",
  "FormativeAssessmentGivesFeedbackOnStrengthsAndWeaknesses",
  "FormativeAssessmentInformsAboutExpectations",
  "TeacherDirectedInstructionInformsAboutLearningGoals",
  "FormativeAssessmentTellsHowToGetBetter",
  "CognitiveActivationTeacherEncouragesToReflectProblems",
  "CognitiveActivationGivesProblemsThatRequireToThink",
  "CognitiveActivationAsksToUseOwnProcedures",
  "CognitiveActivationPresentsProblemsWithNoObviousSolutions",
  "CognitiveActivationPresentsProblemsInDifferentContexts",
  "CognitiveActivationHelpsLearnFromMistakes",
  "CognitiveActivationAsksForExplanations",
  "CognitiveActivationApplyWhatWeLearned",
  "CognitiveActivationProblemsWithMultipleSolutions",
  "DisciplinaryClimateStudentsDonëtListen",
  "DisciplinaryClimateNoiseAndDisorder",
  "DisciplinaryClimateTeacherHasToWaitUntilItsQuiet",
  "DisciplinaryClimateStudentsDoNotWorkWell",
  "DisciplinaryClimateStudentsStartWorkingLate",
  "VignetteTeacherSupportHomeworkEveryOtherDay/BackInTime",
  "VignetteTeacherSupportHomeworkOnceAWeek/BackInTime",
  "VignetteTeacherSupportHomeworkOnceAWeek/NotBackInTime",
  "TeacherSupportLetsUsKnowWeHaveToWorkHard",
  "TeacherSupportProvidesExtraHelpWhenNeeded",
  "TeacherSupportHelpsStudentsWithLearning",
  "TeacherSupportGivesOpportunityToExpressOpinions",
  "VignetteClassroomManagementStudentsFrequentlyInterrupt/TeacherArrivesEarly",
  "VignetteClassroomManagementStudentsAreCalm/TeacherArrivesOnTime",
  "VignetteClassroomManagementStudentsFrequentlyInterrupt/TeacherArrivesLate",
  "ClassroomManagementStudentsListen",
  "ClassroomManagementTeacherKeepsClassOrderly",
  "ClassroomManagementTeacherStartsOnTime",
  "ClassroomManagementWaitLongToQuietDown",
  "StudentTeacherRelationsGetAlongWithTeachers",
  "StudentTeacherRelationsTeachersAreInterested",
  "StudentTeacherRelationsTeachersListenToStudents",
  "StudentTeacherRelationsTeachersHelpStudents",
  "StudentTeacherRelationsTeachersTreatStudentsFair",
  "SenseOfBelongingFeelLikeOutsider",
  "SenseOfBelongingMakeFriendsEasily",
  "SenseOfBelongingBelongAtSchool",
  "SenseOfBelongingFeelAwkwardAtSchool",
  "SenseOfBelongingLikedByOtherStudents",
  "SenseOfBelongingFeelLonelyAtSchool",
  "SenseOfBelongingFeelHappyAtSchool",
  "SenseOfBelongingThingsAreIdealAtSchool",
  "SenseOfBelongingSatisfiedAtSchool",
  "AttitudeTowardsSchoolDoesLittleToPrepareMeForLife",
  "AttitudeTowardsSchoolWasteOfTime",
  "AttitudeTowardsSchoolGaveMeConfidence",
  "AttitudeTowardsSchoolUsefulForJob",
  "AttitudeTowardSchoolHelpsToGetAJob",
  "AttitudeTowardSchoolPrepareForCollege",
  "AttitudeTowardSchoolEnjoyGoodGrades",
  "AttitudeTowardSchoolTryingHardIsImportant",
  "PerceivedControlCanSucceedWithEnoughEffort",
  "PerceivedControlMyChoiceWhetherIWillBeGood",
  "PerceivedControlProblemsPreventFromPuttingEffortIntoSchoo",
  "PerceivedControlDifferentTeachersWouldMakeMeTryHarder",
  "PerceivedControlCouldPerformWellIfIWanted",
  "PerceivedControlPerformPoorRegardless",
  "PerseveranceGiveUpEasily"
  )
polska <- polska[,c(11:263)] 
fajne <- polska[,c(3,9,18,24,36,69,80,120,151,181,229,231,240,251)]
#Ponumerowane nazwy kolumn:
#1 Gender
#2 LateForSchool
#3 MotherHighestSchooling
#4 FatherHighestSchooling
#5 PossessionsOwnRoom
#6 SubjectiveNormsParentsBelieveStudyingMathematicsIsImportant
#7 MathsAnxietyWorryThatItWillBeDifficult
#8 MathsBehaviourStudyMoreThan2ExtraHoursADay
#9 FamiliarityWithMathsConceptsLinearEquation
#10 MathsTeachingTeacherHelps
#11 StudentTeacherRelationsTeachersTreatStudentsFair
#12 SenseOfBelongingMakeFriendsEasily
#13 AttitudeTowardsSchoolWasteOfTime
#14 PerceivedControlCouldPerformWellIfIWanted


#Na dobry poczatek:
barplot(table(fajne[ , 3]))
table(fajne[ , 14])

par(mfrow = c(1, 1))
barplot( table ( fajne[ , 14]),
         main = "Posiadanie wlasnego pokoju",
         col = "deeppink4"
)



######




