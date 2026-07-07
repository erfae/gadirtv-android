.class public final synthetic Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->$r8$lambda$ztzUfKzxk4Yp8d65J5oEi0y9AIA(Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;Landroid/view/View;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->$r8$lambda$CsTmsohb8nBlm-cxsfVNLmcpC6o(Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
