.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/exoplayer2/MediaItem;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;II)V
    .locals 0

    iput p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/exoplayer2/MediaItem;

    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/exoplayer2/MediaItem;

    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->$r8$lambda$kGyD8wJ-zq1Xdi0qkdvChl0sF3I(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/exoplayer2/MediaItem;

    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->$r8$lambda$UNjZbEvw-KNsQScgj0daOVnYVAc(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
