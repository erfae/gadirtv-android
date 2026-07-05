.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->$r8$lambda$oo3zkIBuSRHGKH5Wllevbv6E0zQ(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v0

    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->$r8$lambda$vV2ws6spu9HrllkAonla3cX5pAE(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
