.class public final synthetic Lcom/google/android/exoplayer2/audio/AudioSink$-CC;
.super Ljava/lang/Object;
.source "AudioSink.java"


# direct methods
.method public static $default$setOutputStreamOffsetUs(Lcom/google/android/exoplayer2/audio/AudioSink;J)V
    .locals 0

    return-void
.end method

.method public static $default$setPlayerId(Lcom/google/android/exoplayer2/audio/AudioSink;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/analytics/PlayerId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public static $default$setPreferredDevice(Lcom/google/android/exoplayer2/audio/AudioSink;Landroid/media/AudioDeviceInfo;)V
    .locals 0
    .param p1    # Landroid/media/AudioDeviceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    return-void
.end method
