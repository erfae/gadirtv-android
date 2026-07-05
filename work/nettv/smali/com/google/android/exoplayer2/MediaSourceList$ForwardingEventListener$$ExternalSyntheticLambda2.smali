.class public final synthetic Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->$r8$lambda$1F0h0us8Zh9Z8E8qZ5sAsC3YrPY(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->$r8$lambda$jur7tk7vKzzjIjjCVHXdRaxRZlI(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
