.class public final synthetic Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->$r8$lambda$zYW0OV-Fynku26QldoAc-IygyX0(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->$r8$lambda$CjLGsvCDk7eH0JF3BpHsaJTFROE(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->$r8$lambda$DoTcjDDrboxsJ7o5SQLDx6KLo0g(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
