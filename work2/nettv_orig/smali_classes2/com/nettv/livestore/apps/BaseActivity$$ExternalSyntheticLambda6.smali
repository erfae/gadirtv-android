.class public final synthetic Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$U0e2xO0Psru4ZBiuM1lsMXzdiIM(Ljava/util/List;Lio/realm/Realm;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$vyOKfuQmbkmph3FZiV1-G_cHsac(Ljava/util/List;Lio/realm/Realm;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$RByuQ-OvWk7fspIHE0EF8_uBS60(Ljava/util/List;Lio/realm/Realm;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$RpHnzwyu9KVkNFEpWI6fNyWtIhg(Ljava/util/List;Lio/realm/Realm;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
