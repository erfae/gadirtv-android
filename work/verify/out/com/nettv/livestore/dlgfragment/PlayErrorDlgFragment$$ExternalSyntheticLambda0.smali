.class public final synthetic Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->$r8$lambda$ABNSnnWgh1XVcbwyKhaVWUbvEq8(Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;Landroid/view/View;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->$r8$lambda$-b3ezED4-ck2E29OcKWmcnK0GRk(Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
