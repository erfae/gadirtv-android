.class public final synthetic Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$OnAddedGroupListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    iput p3, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$5Jody8QeE0s3fpPThADOHwfcUeA(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$IcDUEWV9HLvvqlI2fuIn4qTK4uA(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$ETVz_1ZtrlztJ3Z4boca9NuursA(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$s5kMgo3Ssey1sFKs6us9XFB_k_Y(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAddedGroup(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/AddGroupActivity;

    iget-boolean v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/activities/AddGroupActivity;->$r8$lambda$U0afUa2jDxmJw2sODLC6sI24PDM(Lcom/nettv/livestore/activities/AddGroupActivity;ZLjava/lang/String;)V

    return-void
.end method
