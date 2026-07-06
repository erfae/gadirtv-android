.class public final synthetic Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/drm/DrmSession;

.field public final synthetic f$2:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$2:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/drm/DrmSession;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$2:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$2:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->$r8$lambda$o7YaSaM7X-2dWltFphZGw8NzvZ8(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$2:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->$r8$lambda$_hPRVFtGW9A7R527QGC5QQRIxEU(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$2:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->$r8$lambda$ZnFp2cUGcwBwPVBI2TnIm24hHz0(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
