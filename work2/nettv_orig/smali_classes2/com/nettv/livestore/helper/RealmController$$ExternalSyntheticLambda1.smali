.class public final synthetic Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    iput p3, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 2

    iget v0, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/helper/RealmController;->$r8$lambda$3wDOM2Bqh8DU2Z70R-oVREg3Bd8(Ljava/lang/String;ZLio/realm/Realm;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/helper/RealmController;->$r8$lambda$Q0FOqhvgOi4yXGPouwbh3hNOkHA(Ljava/lang/String;ZLio/realm/Realm;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/helper/RealmController;->$r8$lambda$oLX_sGZFOzksLpS_cmk2f7cxIxI(Ljava/lang/String;ZLio/realm/Realm;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/helper/RealmController;->$r8$lambda$Wob_QkswlA5WYN7EkuE6QaDuvdo(Ljava/lang/String;ZLio/realm/Realm;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/helper/RealmController;->$r8$lambda$pyw_5cWYmsOBbHrGJ-A1NYOuJaU(Ljava/lang/String;ZLio/realm/Realm;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
