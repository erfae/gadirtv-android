.class public final synthetic Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/activities/LiveChannelActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/LiveChannelActivity;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->$r8$lambda$MKLVrmGyAEONEq-8E37x-HbK2oE(Lcom/nettv/livestore/activities/LiveChannelActivity;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->$r8$lambda$2MwChnZIN81ZWJF1BS9Sio_O4ic(Lcom/nettv/livestore/activities/LiveChannelActivity;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
