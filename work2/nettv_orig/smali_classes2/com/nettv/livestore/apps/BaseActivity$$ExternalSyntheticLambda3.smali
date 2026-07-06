.class public final synthetic Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/models/ResumeModel;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/models/ResumeModel;I)V
    .locals 0

    iput p2, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda3;->f$0:Lcom/nettv/livestore/models/ResumeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda3;->f$0:Lcom/nettv/livestore/models/ResumeModel;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity$7;->$r8$lambda$R2nBym0-nyCRmHj3LWOeFpPV7qY(Lcom/nettv/livestore/models/ResumeModel;Lio/realm/Realm;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda3;->f$0:Lcom/nettv/livestore/models/ResumeModel;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$95JoTgUeVnzoiKbshY5J81QCd8k(Lcom/nettv/livestore/models/ResumeModel;Lio/realm/Realm;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda3;->f$0:Lcom/nettv/livestore/models/ResumeModel;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity$8;->$r8$lambda$6ZPoHPm3vBzpIQD-DoB4CGurnq0(Lcom/nettv/livestore/models/ResumeModel;Lio/realm/Realm;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
