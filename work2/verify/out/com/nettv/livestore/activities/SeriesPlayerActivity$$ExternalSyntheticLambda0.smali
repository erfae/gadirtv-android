.class public final synthetic Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/SubtitleTrackDlgFragment$ItemPositionListener;
.implements Lcom/nettv/livestore/dlgfragment/AudioTrackDlgFragment$ItemPositionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/SeriesPlayerActivity;Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V
    .registers 6

    iput p5, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iput-object p2, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput p4, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemPosition(I)V
    .registers 6

    iget v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v3, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->$r8$lambda$njT-T_DPNXtlbeh1FWFGuSjkV_M(Lcom/nettv/livestore/activities/SeriesPlayerActivity;Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v3, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->$r8$lambda$kOMi0QCCYcsmuxBl2PluhsWpaMc(Lcom/nettv/livestore/activities/SeriesPlayerActivity;Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
