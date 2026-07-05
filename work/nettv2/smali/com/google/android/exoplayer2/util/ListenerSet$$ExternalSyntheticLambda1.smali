.class public final synthetic Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/util/ListenerSet$Event;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->$r8$lambda$NbKDn9xtItiyMgYZmjIx_Sv1FFQ(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    iget v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->$r8$lambda$xLBvWT_5jMYrnZeEFJL0zYPleFg(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
