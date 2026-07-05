.class public final Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/Ac4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final bitstreamVersion:I

.field public final channelCount:I

.field public final frameSize:I

.field public final sampleCount:I

.field public final sampleRate:I


# direct methods
.method public synthetic constructor <init>(IIII)V
    .locals 6

    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;-><init>(IIIII)V

    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->bitstreamVersion:I

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 5
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 6
    iput p4, p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->frameSize:I

    .line 7
    iput p5, p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    return-void
.end method
