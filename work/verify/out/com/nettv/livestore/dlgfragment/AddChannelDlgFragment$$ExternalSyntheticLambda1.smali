.class public final synthetic Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->$r8$lambda$X5OMXw4ugxH-Dkma2T0O7YB9OTk(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :goto_13
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->$r8$lambda$n5EKlLjG_1zn1_hHHSGAEUSysks(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
