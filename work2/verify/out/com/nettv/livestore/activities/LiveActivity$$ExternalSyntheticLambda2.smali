.class public final synthetic Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/activities/LiveActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/LiveActivity;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/LiveActivity;->$r8$lambda$Kf2qvBL70WQ8rBPdAZWch86JZqw(Lcom/nettv/livestore/activities/LiveActivity;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/LiveActivity;->$r8$lambda$4stkZUPn1-0s5oL9p5mYESLKqKE(Lcom/nettv/livestore/activities/LiveActivity;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
