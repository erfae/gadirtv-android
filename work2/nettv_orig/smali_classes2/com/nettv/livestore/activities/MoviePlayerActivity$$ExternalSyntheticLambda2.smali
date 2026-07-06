.class public final synthetic Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/helper/RealmChangeItemListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;I)V
    .locals 0

    iput p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemChanged()V
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->$r8$lambda$UwqpGFabZ_gzBLu78BAkrHY8rkg(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->$r8$lambda$wJj6prjv1EM29b1J2As0C5V4FBs(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
