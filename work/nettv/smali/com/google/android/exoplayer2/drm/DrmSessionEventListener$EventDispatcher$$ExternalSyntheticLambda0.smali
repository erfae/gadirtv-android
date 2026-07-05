.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->$r8$lambda$VS4q-9oF8IRPGvxstW7pqSGMYR4(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->$r8$lambda$VPDG80VEycbvsI4byl49iBfpehI(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->$r8$lambda$Go5N0OXEIhSEKTymQYW4yGQpa2E(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->$r8$lambda$c4cPBl_Z-DrC5MJRv-wOn14Vn00(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
