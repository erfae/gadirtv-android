.class public final synthetic Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlg/SuccessDlg;

    iget-object v1, p0, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;

    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/dlg/SuccessDlg;->$r8$lambda$RgeGm_Y388bhZTTSiH9XDGW2gGc(Lcom/nettv/livestore/dlg/SuccessDlg;Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlg/SuccessDlg;

    iget-object v1, p0, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;

    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/dlg/SuccessDlg;->$r8$lambda$NATnKr0vgqU94vR9EXMK4wGliS4(Lcom/nettv/livestore/dlg/SuccessDlg;Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;Landroid/view/View;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    iget-object v1, p0, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p1}, Lcom/google/android/material/snackbar/Snackbar;->$r8$lambda$4rINiMZz55Dc47hSTCuz-ALWyEw(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
