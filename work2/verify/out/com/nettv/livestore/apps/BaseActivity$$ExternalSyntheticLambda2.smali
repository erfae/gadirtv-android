.class public final synthetic Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/net/NetworkTask$OnCompleteListener;
.implements Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;
.implements Lcom/nettv/livestore/net/NetworkTask$OnNetworkUnavailableListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/apps/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/apps/BaseActivity;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/apps/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/apps/BaseActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$Mn4lTuLcrYeoRs5BBtVXzb9e-J0(Lcom/nettv/livestore/apps/BaseActivity;Ljava/util/List;)V

    return-void
.end method

.method public final onException(Ljava/lang/Exception;)V
    .registers 3

    iget v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_1e

    :pswitch_5
    goto :goto_18

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/apps/BaseActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$4WBfPQ_bcDAIAB1niLXyEppI3wA(Lcom/nettv/livestore/apps/BaseActivity;Ljava/lang/Exception;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/apps/BaseActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$UtxSvAjQg3B17jVuks6xKXf_39U(Lcom/nettv/livestore/apps/BaseActivity;Ljava/lang/Exception;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/apps/BaseActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$17ZFpWHxiIfEEOT43T9IcGkOpmY(Lcom/nettv/livestore/apps/BaseActivity;Ljava/lang/Exception;)V

    return-void

    :goto_18
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/apps/BaseActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$PyFUgcv0Ty70zoThWRyI7TxVDEk(Lcom/nettv/livestore/apps/BaseActivity;Ljava/lang/Exception;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_5
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method public final onNetworkException(Landroid/accounts/NetworkErrorException;)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda2;->f$0:Lcom/nettv/livestore/apps/BaseActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->$r8$lambda$Lgfb4w_1AuFVsVM4x2YGc5UlT1c(Lcom/nettv/livestore/apps/BaseActivity;Landroid/accounts/NetworkErrorException;)V

    return-void
.end method
