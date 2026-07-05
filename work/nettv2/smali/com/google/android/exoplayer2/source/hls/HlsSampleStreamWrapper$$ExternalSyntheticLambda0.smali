.class public final synthetic Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->$r8$lambda$6vTR3mtGTvT72nPYfSpGJ3S1EYI(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->$r8$lambda$FTpP0pC43I2Fmbrry86yPSv4RFI(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
