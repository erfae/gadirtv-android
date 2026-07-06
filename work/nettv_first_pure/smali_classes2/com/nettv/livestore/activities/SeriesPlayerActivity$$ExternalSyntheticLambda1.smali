.class public final synthetic Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/SeriesPlayerActivity;I)V
    .locals 0

    iput p2, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->$r8$lambda$Xx59R4fyKMoLkrkpGA5YFECSp9k(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->$r8$lambda$yIbWiMfTAJF6IDzuDspKMCRS8Ns(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
