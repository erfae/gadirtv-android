.class public final synthetic Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->$r8$lambda$VH8vRSTYO69o4pUCxUdzDQ0ZEQ0(Lcom/google/android/exoplayer2/offline/DownloadManager;Landroid/os/Message;)Z

    move-result p1

    return p1

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->$r8$lambda$Db71ShN3QybOcTYlOayKmy_uYGE(Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;Landroid/os/Message;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
