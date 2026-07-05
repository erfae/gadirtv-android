.class public final synthetic Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/fragment/app/DialogFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/DialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->$r8$lambda$cMV4AJwbd6Fkcg9TfVGZW0k_2mU(Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->$r8$lambda$Z5ZEqaNMIapheFEofxCpotk4EHE(Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->$r8$lambda$4g7uTPy0Vka94EbLkJi46VyJPh4(Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_3
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->$r8$lambda$ffNZaSrPm0i8dsOSHGN89NFxxHg(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_4
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->$r8$lambda$et_pxFeTexGW3k0SYVaczlIoavo(Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_5
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->$r8$lambda$SN6ARhS0iCSosFlkVbVKZXRiU_k(Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->$r8$lambda$eJGtsOsI6I6aUM7QQmiqSJdKUoQ(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_7
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->$r8$lambda$FcDPIXfU4euIRkbsYooXur08nno(Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_8
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->$r8$lambda$RUjvBU9Fq3tkmYHodO4KcAzgsR4(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_9
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->$r8$lambda$q2cMs__56GVUeOzqB9685oJ0Rk0(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->$r8$lambda$wPmw53y3EvMORqfXTLalru89X6E(Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
