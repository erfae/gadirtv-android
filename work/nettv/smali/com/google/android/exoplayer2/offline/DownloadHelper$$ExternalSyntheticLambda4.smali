.class public final synthetic Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda4;
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

    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->$r8$lambda$KeStGaF2-KHebvcVcqEmpDq4A5Q(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->$r8$lambda$pYuZL1QRc5pDjZBDyUT_MTJZ65U(Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
