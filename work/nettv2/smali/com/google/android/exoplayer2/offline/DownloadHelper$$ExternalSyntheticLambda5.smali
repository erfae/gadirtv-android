.class public final synthetic Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;
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

    iput p3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->$r8$lambda$qq9H8ivS_AHHJLwDXbhMquS4lDU(Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;Lcom/google/android/exoplayer2/offline/DownloadService;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->$r8$lambda$MY46M7IxuWh3va1M0Vu1EOnSN9I(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->$r8$lambda$n824A1oj6IOjH0FRR1dWusSkZrk(Lcom/google/android/exoplayer2/offline/DownloadHelper;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
