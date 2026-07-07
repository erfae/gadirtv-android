.class public interface abstract Lcom/verimatrix/vdc/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;,
        Lcom/verimatrix/vdc/Monitor$Severity;,
        Lcom/verimatrix/vdc/Monitor$StreamFunction;,
        Lcom/verimatrix/vdc/Monitor$MetadataType2;,
        Lcom/verimatrix/vdc/Monitor$MetadataType1;,
        Lcom/verimatrix/vdc/Monitor$LoadErrorType;,
        Lcom/verimatrix/vdc/Monitor$AppStatus;,
        Lcom/verimatrix/vdc/Monitor$LoginAttribute;,
        Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;,
        Lcom/verimatrix/vdc/Monitor$ProfileSetType;,
        Lcom/verimatrix/vdc/Monitor$ProfileDataType;,
        Lcom/verimatrix/vdc/Monitor$Status;,
        Lcom/verimatrix/vdc/Monitor$EndCause;,
        Lcom/verimatrix/vdc/Monitor$StartCause;,
        Lcom/verimatrix/vdc/Monitor$DeliveryType;,
        Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;,
        Lcom/verimatrix/vdc/Monitor$StreamType;,
        Lcom/verimatrix/vdc/Monitor$IdentifiedType;,
        Lcom/verimatrix/vdc/Monitor$AreaType;,
        Lcom/verimatrix/vdc/Monitor$MediaType;,
        Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;,
        Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;
    }
.end annotation


# virtual methods
.method public abstract applicationLogPoint(III)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract applicationStatus(Lcom/verimatrix/vdc/Monitor$AreaType;Lcom/verimatrix/vdc/Monitor$AppStatus;I)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract applicationStatus(Lcom/verimatrix/vdc/Monitor$AreaType;Lcom/verimatrix/vdc/Monitor$AppStatus;IJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract contentReadyToPlay(J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract contentReadyToPlay(JJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract contentReadyToPlayWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract contentReadyToPlayWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataComplete(Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract dataError(I)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract dataLoadComplete()Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadComplete(J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadCompleteWithStreamHandle(I)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadCompleteWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadErrorWithStreamHandle(ILcom/verimatrix/vdc/Monitor$LoadErrorType;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadErrorWithStreamHandle(ILcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadServer(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadServer(Ljava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadServerWithStreamHandle(ILjava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadServerWithStreamHandle(ILjava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataLoadStarting()Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract dataLoadStarting(J)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract dataLoadStartingWithStreamHandle(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;ILcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "I",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract dataLoadStartingWithStreamHandle(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;ILcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "I",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract dataOverrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataOverrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataStarting(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract dataUnderrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract dataUnderrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract directEvent(IJJJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract directEvent(IJJJJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract directEventWithStreamHandle(IIJJJJLcom/verimatrix/vdc/Monitor$Severity;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract directEventWithStreamHandle(IIJJJJLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract encode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract freeStreamHandle(I)V
.end method

.method public abstract genericAttributesChange(Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract genericAttributesChangeWithStreamHandle(ILjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract getGeneratedUid()Ljava/lang/String;
.end method

.method public abstract getStreamHandle(Lcom/verimatrix/vdc/Monitor$StreamFunction;)I
.end method

.method public abstract init(Landroid/app/Application;)V
.end method

.method public abstract login()Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract login(Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$LoginAttribute;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract logout()Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract metadataDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract metadataDimensions(II)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract metadataDuration(J)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract metadataIdentity(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;ZZ)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract metadataInitialise()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playbackAccelerated(JF)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackAccelerated(JFJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackAcceleratedWithStreamHandle(IJF)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackAcceleratedWithStreamHandle(IJFJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackConsumptionMethodChange(JLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackConsumptionMethodChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackConsumptionMethodChangeWithStreamHandle(IJLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackConsumptionMethodChangeWithStreamHandle(IJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackError(I)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;I)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackErrorReportWithStreamHandle(IILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;I)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackErrorReportWithStreamHandle(IILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackLanguageChange(JLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackLanguageChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackLanguageChangeWithStreamHandle(IJLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackLanguageChangeWithStreamHandle(IJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackMetadataChange(JLjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract playbackMetadataChangeWithStreamHandle(IJLjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract playbackPaused(J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackPaused(JJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackPausedWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackPausedWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackProgress(JJZ)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playbackProgress(JJZJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackProgress(JJZJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackProgressWithStreamHandle(IJJZJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackProgressWithStreamHandle(IJJZJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackRequest(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$DeliveryType;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Lcom/verimatrix/vdc/Monitor$StreamType;",
            "Lcom/verimatrix/vdc/Monitor$StartCause;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract playbackRequest(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$DeliveryType;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Lcom/verimatrix/vdc/Monitor$StreamType;",
            "Lcom/verimatrix/vdc/Monitor$StartCause;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract playbackRequest(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$DeliveryType;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Lcom/verimatrix/vdc/Monitor$StreamType;",
            "Lcom/verimatrix/vdc/Monitor$StartCause;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playbackRequest(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$DeliveryType;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Lcom/verimatrix/vdc/Monitor$StreamType;",
            "Lcom/verimatrix/vdc/Monitor$StartCause;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playbackRequestWithStreamHandle(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;ILcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "I",
            "Lcom/verimatrix/vdc/Monitor$DeliveryType;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Lcom/verimatrix/vdc/Monitor$StreamType;",
            "Lcom/verimatrix/vdc/Monitor$StartCause;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract playbackRequestWithStreamHandle(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;ILcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "I",
            "Lcom/verimatrix/vdc/Monitor$DeliveryType;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Lcom/verimatrix/vdc/Monitor$StreamType;",
            "Lcom/verimatrix/vdc/Monitor$StartCause;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation
.end method

.method public abstract playbackResolutionChange(JII)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResolutionChange(JIILjava/lang/Long;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResolutionChangeWithStreamHandle(IJII)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResolutionChangeWithStreamHandle(IJIILjava/lang/Long;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumed(J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumed(JJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumedAudio(J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumedAudio(JJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumedAudioWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumedAudioWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumedVideo(J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumedVideo(JJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumedVideoWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumedVideoWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumedWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackResumedWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackSeek(J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackSeek(JJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackSeekWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackSeekWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStartRequested()Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playbackStarted(JLcom/verimatrix/vdc/Monitor$StartCause;IILjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStartedAudio(JLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStartedAudio(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStartedAudioWithStreamHandle(IJLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStartedAudioWithStreamHandle(IJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStartedVideo(JII)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStartedVideo(JIIJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStartedVideoWithStreamHandle(IJII)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStartedVideoWithStreamHandle(IJIIJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStopRequested()Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStopRequested(J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStopRequestedWithStreamHandle(I)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStopRequestedWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStopped(JLcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStopped(JLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStoppedWithStreamHandle(IJLcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract playbackStoppedWithStreamHandle(IJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract profileGet(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract profileSet(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract profileSet(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;)Lcom/verimatrix/vdc/Monitor$Status;
.end method

.method public abstract statisticsBitrate(II)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract statisticsFrameErrors(I)Lcom/verimatrix/vdc/Monitor$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
