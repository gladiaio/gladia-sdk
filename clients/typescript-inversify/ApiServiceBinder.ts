import {interfaces} from "inversify";

import { ImageImageBackgroundRemovalService } from './api/imageImageBackgroundRemoval.service';
import { ImageImageColorizationService } from './api/imageImageColorization.service';
import { ImageImageFaceBluringService } from './api/imageImageFaceBluring.service';
import { ImageImageSuperResolutionService } from './api/imageImageSuperResolution.service';
import { ImageImageUncolorizationService } from './api/imageImageUncolorization.service';
import { ImageTextAsciifyService } from './api/imageTextAsciify.service';
import { ImageTextOcrService } from './api/imageTextOcr.service';
import { TextTextAutocorrectService } from './api/textTextAutocorrect.service';
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
import { TextTextQuestionAnsweringService } from './api/textTextQuestionAnswering.service';
import { TextTextSentenceParaphraserService } from './api/textTextSentenceParaphraser.service';
import { TextTextSentimentAnalysisService } from './api/textTextSentimentAnalysis.service';
import { TextTextSimilarityService } from './api/textTextSimilarity.service';
import { TextTextWordAlignmentService } from './api/textTextWordAlignment.service';

export class ApiServiceBinder {
    public static with(container: interfaces.Container) {
        container.bind<ImageImageBackgroundRemovalService>("ImageImageBackgroundRemovalService").to(ImageImageBackgroundRemovalService).inSingletonScope();
        container.bind<ImageImageColorizationService>("ImageImageColorizationService").to(ImageImageColorizationService).inSingletonScope();
        container.bind<ImageImageFaceBluringService>("ImageImageFaceBluringService").to(ImageImageFaceBluringService).inSingletonScope();
        container.bind<ImageImageSuperResolutionService>("ImageImageSuperResolutionService").to(ImageImageSuperResolutionService).inSingletonScope();
        container.bind<ImageImageUncolorizationService>("ImageImageUncolorizationService").to(ImageImageUncolorizationService).inSingletonScope();
        container.bind<ImageTextAsciifyService>("ImageTextAsciifyService").to(ImageTextAsciifyService).inSingletonScope();
        container.bind<ImageTextOcrService>("ImageTextOcrService").to(ImageTextOcrService).inSingletonScope();
        container.bind<TextTextAutocorrectService>("TextTextAutocorrectService").to(TextTextAutocorrectService).inSingletonScope();
        container.bind<TextTextEmotionRecognitionService>("TextTextEmotionRecognitionService").to(TextTextEmotionRecognitionService).inSingletonScope();
        container.bind<TextTextEntityExtractionService>("TextTextEntityExtractionService").to(TextTextEntityExtractionService).inSingletonScope();
        container.bind<TextTextHateSpeechDetectionService>("TextTextHateSpeechDetectionService").to(TextTextHateSpeechDetectionService).inSingletonScope();
        container.bind<TextTextKeywordExtractionService>("TextTextKeywordExtractionService").to(TextTextKeywordExtractionService).inSingletonScope();
        container.bind<TextTextLanguageDetectionService>("TextTextLanguageDetectionService").to(TextTextLanguageDetectionService).inSingletonScope();
        container.bind<TextTextLanguageGenerationService>("TextTextLanguageGenerationService").to(TextTextLanguageGenerationService).inSingletonScope();
        container.bind<TextTextLemmatizationService>("TextTextLemmatizationService").to(TextTextLemmatizationService).inSingletonScope();
        container.bind<TextTextNamedEntityRecognitionService>("TextTextNamedEntityRecognitionService").to(TextTextNamedEntityRecognitionService).inSingletonScope();
        container.bind<TextTextNextSentencePredictionService>("TextTextNextSentencePredictionService").to(TextTextNextSentencePredictionService).inSingletonScope();
        container.bind<TextTextNextWordPredictionService>("TextTextNextWordPredictionService").to(TextTextNextWordPredictionService).inSingletonScope();
        container.bind<TextTextPluralService>("TextTextPluralService").to(TextTextPluralService).inSingletonScope();
        container.bind<TextTextProgrammingLanguageGenerationService>("TextTextProgrammingLanguageGenerationService").to(TextTextProgrammingLanguageGenerationService).inSingletonScope();
        container.bind<TextTextQuestionAnsweringService>("TextTextQuestionAnsweringService").to(TextTextQuestionAnsweringService).inSingletonScope();
        container.bind<TextTextSentenceParaphraserService>("TextTextSentenceParaphraserService").to(TextTextSentenceParaphraserService).inSingletonScope();
        container.bind<TextTextSentimentAnalysisService>("TextTextSentimentAnalysisService").to(TextTextSentimentAnalysisService).inSingletonScope();
        container.bind<TextTextSimilarityService>("TextTextSimilarityService").to(TextTextSimilarityService).inSingletonScope();
        container.bind<TextTextWordAlignmentService>("TextTextWordAlignmentService").to(TextTextWordAlignmentService).inSingletonScope();
    }
}
