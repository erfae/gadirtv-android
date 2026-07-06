.class public final synthetic Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;
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

    iput p3, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->$r8$lambda$Vn8jFPITYTK2gV4GrUT_kfq12Mw(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->$r8$lambda$rqyTSlYT3rRwS_rvp-1F3CN49xI(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Lcom/google/android/exoplayer2/Format;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
