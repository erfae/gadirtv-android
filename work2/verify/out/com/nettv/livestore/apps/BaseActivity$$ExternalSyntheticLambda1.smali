.class public final synthetic Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/net/NetworkTask$OnCompleteListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/apps/BaseActivity;

.field public final synthetic f$1:Lio/realm/RealmResults;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/apps/BaseActivity;Lio/realm/RealmResults;Ljava/util/List;Ljava/util/List;I)V
    .registers 6

    iput p5, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/apps/BaseActivity;

    iput-object p2, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$1:Lio/realm/RealmResults;

    iput-object p3, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .registers 6

    iget v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object v1, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$1:Lio/realm/RealmResults;

    iget-object v2, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$W1FK1mYgPPqvO_nCw4XMo8mN6ws(Lcom/nettv/livestore/apps/BaseActivity;Lio/realm/RealmResults;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    :goto_14
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object v1, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$1:Lio/realm/RealmResults;

    iget-object v2, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$96bQCkC_ri8IUmQFK_uucKF8Zls(Lcom/nettv/livestore/apps/BaseActivity;Lio/realm/RealmResults;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
