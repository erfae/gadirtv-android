.class public final Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;
.super Ljava/lang/Object;
.source "ImaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/ima/ImaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final adMediaMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final adPreloadTimeoutMs:J

.field public final adUiElements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation
.end field

.field public final applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

.field public final applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

.field public final applicationVideoAdPlayerCallback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

.field public final companionAdSlots:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;"
        }
    .end annotation
.end field

.field public final debugModeEnabled:Z

.field public final focusSkipButtonWhenAvailable:Z

.field public final imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field public final mediaBitrate:I

.field public final mediaLoadTimeoutMs:I

.field public final playAdBeforeStartPosition:Z

.field public final vastLoadTimeoutMs:I


# direct methods
.method public constructor <init>(JIIZZILjava/util/List;Ljava/util/Set;Ljava/util/Collection;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIZZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;",
            "Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;",
            "Z)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->adPreloadTimeoutMs:J

    .line 116
    iput p3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->vastLoadTimeoutMs:I

    .line 117
    iput p4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->mediaLoadTimeoutMs:I

    .line 118
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->focusSkipButtonWhenAvailable:Z

    .line 119
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->playAdBeforeStartPosition:Z

    .line 120
    iput p7, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->mediaBitrate:I

    .line 121
    iput-object p8, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->adMediaMimeTypes:Ljava/util/List;

    .line 122
    iput-object p9, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->adUiElements:Ljava/util/Set;

    .line 123
    iput-object p10, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->companionAdSlots:Ljava/util/Collection;

    .line 124
    iput-object p11, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    .line 125
    iput-object p12, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    .line 126
    iput-object p13, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationVideoAdPlayerCallback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 127
    iput-object p14, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 128
    iput-boolean p15, p0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    return-void
.end method
