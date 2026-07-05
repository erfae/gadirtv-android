.class public final synthetic Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->$r8$lambda$ZfnFpleg-wixrRMpxSt_dFcCTgo(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaLoadData;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->$r8$lambda$ksQLx11TblSbVRe1SW5K2we0-i4(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->$r8$lambda$eIlxixoq5EOGzuz7iie-NWOglWE(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;Ljava/lang/Exception;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->$r8$lambda$enhPTF1JVF9YZZj3tQrmMkRorOk(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/util/concurrent/AsyncFunction;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->$r8$lambda$DSdcFhMZFeNvai4CKemAhlKDeCY(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$lRgnwRtINjNzTNR52Sx12shHxOA(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
