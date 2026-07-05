.class Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegLibrary$1;
.super Lcom/google/android/exoplayer2/util/LibraryLoader;
.source "FfmpegLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/LibraryLoader;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final loadLibrary(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
