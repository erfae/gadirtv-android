.class public final Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
.super Lcom/google/android/exoplayer2/decoder/DecoderException;
.source "FfmpegDecoderException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/decoder/DecoderException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Unexpected decode error"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/decoder/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
