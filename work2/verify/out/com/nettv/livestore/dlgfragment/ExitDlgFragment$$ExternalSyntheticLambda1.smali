.class public final synthetic Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->$r8$lambda$uecrIxHw7bIfsbzty8TQmDQjtA8(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;Landroid/view/View;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->$r8$lambda$lVqoPEukhF_gYv3xvbTOMUtj9VE(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
