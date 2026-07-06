.class public final synthetic Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment$SelectList;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput p3, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/ChangePlaylistActivity;ILcom/nettv/livestore/models/AppInfoModel$UrlModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem;

    iget v2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$LG1mCVjkadAdSIiIWraD2wI1Hxw(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public final onSelect(I)V
    .locals 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    iget v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->$r8$lambda$4ZEof_bjPPoffykl5l5zklL6qms(Lcom/nettv/livestore/activities/ChangePlaylistActivity;ILcom/nettv/livestore/models/AppInfoModel$UrlModel;I)V

    return-void
.end method
