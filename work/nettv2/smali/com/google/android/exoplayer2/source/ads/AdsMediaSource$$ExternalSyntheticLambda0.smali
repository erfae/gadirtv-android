.class public final synthetic Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->$r8$lambda$AgVPpigbCJhxxQjVVqQPnZy0Xkc(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->$r8$lambda$1-m7XF1umsWz9SdpDX3nvldjhmE(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
