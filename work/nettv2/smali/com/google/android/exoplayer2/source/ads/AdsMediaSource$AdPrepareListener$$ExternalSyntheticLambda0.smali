.class public final synthetic Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->$r8$lambda$0n-PEDqeEt9IJPXJ3J126o4e0MQ(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->$r8$lambda$iaOFHOi1HiE_ynOUr4SbIaoC-Vc(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/ImmutableMap;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->$r8$lambda$_M-_hyjEORwjoOtigaHohPfWjK4(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;Lcom/google/common/collect/ImmutableMap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
