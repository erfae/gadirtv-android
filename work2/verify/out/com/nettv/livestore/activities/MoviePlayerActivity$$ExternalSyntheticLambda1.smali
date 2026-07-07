.class public final synthetic Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/SubtitleTrackDlgFragment$ItemPositionListener;
.implements Lcom/nettv/livestore/dlgfragment/AudioTrackDlgFragment$ItemPositionListener;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/Bundleable;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$3:I

    iput-object p3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/exoplayer2/Bundleable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V
    .registers 6

    .line 1
    iput p5, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/exoplayer2/Bundleable;

    iput p4, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$3:I

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/Player$PositionInfo;

    iget-object v3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/exoplayer2/Bundleable;

    check-cast v3, Lcom/google/android/exoplayer2/Player$PositionInfo;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$ZK4_AmILgQTSxRW19Njh1Wnnet0(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public final onItemPosition(I)V
    .registers 6

    iget v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_18

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/exoplayer2/Bundleable;

    check-cast v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->$r8$lambda$TZ-vSR2S71ASlDdLHXZzzvPs1xQ(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V

    return-void

    :goto_18
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/exoplayer2/Bundleable;

    check-cast v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->$r8$lambda$t3Ks-dZ85eDWhesGZ0cH4ZK1gWQ(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
