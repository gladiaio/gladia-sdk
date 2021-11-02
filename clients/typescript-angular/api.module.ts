import { NgModule, ModuleWithProviders, SkipSelf, Optional } from '@angular/core';
import { Configuration } from './configuration';
import { HttpClient } from '@angular/common/http';


import { ImageImageBackgroundRemovalService } from './api/imageImageBackgroundRemoval.service';
import { ImageImageColorizationService } from './api/imageImageColorization.service';
import { ImageImageFaceBluringService } from './api/imageImageFaceBluring.service';
import { ImageImageRestorationService } from './api/imageImageRestoration.service';
import { ImageImageSuperResolutionService } from './api/imageImageSuperResolution.service';
import { ImageImageUncolorizationService } from './api/imageImageUncolorization.service';
import { ImageTextAsciifyService } from './api/imageTextAsciify.service';
import { ImageTextOcrService } from './api/imageTextOcr.service';
import { TextTextAutocorrectService } from './api/textTextAutocorrect.service';
import { TextTextBooleanQuestionGenerationService } from './api/textTextBooleanQuestionGeneration.service';
import { TextTextDependencyTrackingService } from './api/textTextDependencyTracking.service';
import { TextTextEmotionRecognitionService } from './api/textTextEmotionRecognition.service';
import { TextTextEntityExtractionService } from './api/textTextEntityExtraction.service';
import { TextTextHateSpeechDetectionService } from './api/textTextHateSpeechDetection.service';
import { TextTextKeywordExtractionService } from './api/textTextKeywordExtraction.service';
import { TextTextLanguageDetectionService } from './api/textTextLanguageDetection.service';
import { TextTextLanguageGenerationService } from './api/textTextLanguageGeneration.service';
import { TextTextLemmatizationService } from './api/textTextLemmatization.service';
import { TextTextNamedEntityRecognitionService } from './api/textTextNamedEntityRecognition.service';
import { TextTextNextSentencePredictionService } from './api/textTextNextSentencePrediction.service';
import { TextTextNextWordPredictionService } from './api/textTextNextWordPrediction.service';
import { TextTextPluralService } from './api/textTextPlural.service';
import { TextTextProgrammingLanguageGenerationService } from './api/textTextProgrammingLanguageGeneration.service';
import { TextTextProgrammingLanguageIdentificationService } from './api/textTextProgrammingLanguageIdentification.service';
import { TextTextQuestionAnsweringService } from './api/textTextQuestionAnswering.service';
import { TextTextSentencePairModelingService } from './api/textTextSentencePairModeling.service';
import { TextTextSentenceParaphraserService } from './api/textTextSentenceParaphraser.service';
import { TextTextSentimentAnalysisService } from './api/textTextSentimentAnalysis.service';
import { TextTextSimilarityService } from './api/textTextSimilarity.service';
import { TextTextSummarizationService } from './api/textTextSummarization.service';
import { TextTextTranslationService } from './api/textTextTranslation.service';
import { TextTextTransliterationService } from './api/textTextTransliteration.service';
import { TextTextWordAlignmentService } from './api/textTextWordAlignment.service';
import { VideoVideoFrameInterpolationService } from './api/videoVideoFrameInterpolation.service';

@NgModule({
  imports:      [],
  declarations: [],
  exports:      [],
  providers: [
    ImageImageBackgroundRemovalService,
    ImageImageColorizationService,
    ImageImageFaceBluringService,
    ImageImageRestorationService,
    ImageImageSuperResolutionService,
    ImageImageUncolorizationService,
    ImageTextAsciifyService,
    ImageTextOcrService,
    TextTextAutocorrectService,
    TextTextBooleanQuestionGenerationService,
    TextTextDependencyTrackingService,
    TextTextEmotionRecognitionService,
    TextTextEntityExtractionService,
    TextTextHateSpeechDetectionService,
    TextTextKeywordExtractionService,
    TextTextLanguageDetectionService,
    TextTextLanguageGenerationService,
    TextTextLemmatizationService,
    TextTextNamedEntityRecognitionService,
    TextTextNextSentencePredictionService,
    TextTextNextWordPredictionService,
    TextTextPluralService,
    TextTextProgrammingLanguageGenerationService,
    TextTextProgrammingLanguageIdentificationService,
    TextTextQuestionAnsweringService,
    TextTextSentencePairModelingService,
    TextTextSentenceParaphraserService,
    TextTextSentimentAnalysisService,
    TextTextSimilarityService,
    TextTextSummarizationService,
    TextTextTranslationService,
    TextTextTransliterationService,
    TextTextWordAlignmentService,
    VideoVideoFrameInterpolationService ]
})
export class ApiModule {
    public static forRoot(configurationFactory: () => Configuration): ModuleWithProviders {
        return {
            ngModule: ApiModule,
            providers: [ { provide: Configuration, useFactory: configurationFactory } ]
        };
    }

    constructor( @Optional() @SkipSelf() parentModule: ApiModule,
                 @Optional() http: HttpClient) {
        if (parentModule) {
            throw new Error('ApiModule is already loaded. Import in your base AppModule only.');
        }
        if (!http) {
            throw new Error('You need to import the HttpClientModule in your AppModule! \n' +
            'See also https://github.com/angular/angular/issues/20575');
        }
    }
}
