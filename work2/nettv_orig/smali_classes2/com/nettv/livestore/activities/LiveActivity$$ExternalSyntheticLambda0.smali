.class public final synthetic Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;
.implements Lcom/nettv/livestore/helper/RealmChangeItemListener;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/nettv/livestore/activities/LiveActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/LiveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/LiveActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->$r8$lambda$yrXcx1eV_v3GLWUQpPXeDYFJ6mA(Lcom/nettv/livestore/activities/LiveActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public final onItemChanged()V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/LiveActivity;->$r8$lambda$wvF08lgcv_9PGMpl9xkR-lYozvA(Lcom/nettv/livestore/activities/LiveActivity;)V

    return-void
.end method

.method public final onSelectCurrentChannel(Lcom/nettv/livestore/models/EPGChannel;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->$r8$lambda$D7-qx1XiK_vLmrpTfcKHoboULXY(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    return-void
.end method
