.class public final synthetic Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/models/ResumeSeriesModel;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/models/ResumeSeriesModel;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda4;->f$0:Lcom/nettv/livestore/models/ResumeSeriesModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .registers 3

    iget v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda4;->f$0:Lcom/nettv/livestore/models/ResumeSeriesModel;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity$10;->$r8$lambda$uYXgVTmo9SIJBIrSlF9LBwaSqe8(Lcom/nettv/livestore/models/ResumeSeriesModel;Lio/realm/Realm;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda4;->f$0:Lcom/nettv/livestore/models/ResumeSeriesModel;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$JH9rer0k47lxkQG5vThXFKgGVrI(Lcom/nettv/livestore/models/ResumeSeriesModel;Lio/realm/Realm;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda4;->f$0:Lcom/nettv/livestore/models/ResumeSeriesModel;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity$9;->$r8$lambda$QEdahA-Td62GjHanScm7ERbbaAs(Lcom/nettv/livestore/models/ResumeSeriesModel;Lio/realm/Realm;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
