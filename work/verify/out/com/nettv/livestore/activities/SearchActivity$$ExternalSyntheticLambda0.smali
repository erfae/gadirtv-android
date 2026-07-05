.class public final synthetic Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_76

    goto :goto_6e

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->$r8$lambda$obToUZaFqoVd39zAX1KvTr-7UJ0(Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;Landroid/view/View;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->$r8$lambda$mQHny_Tr6tmTZMrDz_pmRpBrggw(Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;Landroid/view/View;)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->$r8$lambda$VIZ2IjPfmqWus74h9fYrJUKjfe8(Lcom/nettv/livestore/dlgfragment/LockDlgFragment;Landroid/view/View;)V

    return-void

    :pswitch_1e
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->$r8$lambda$8W7wrTWLAVMBaMTdpHBro-V-rF4(Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;Landroid/view/View;)V

    return-void

    :pswitch_26
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->$r8$lambda$dp7o8u5vAND1kNG8PiIUXeG9p4w(Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;Landroid/view/View;)V

    return-void

    :pswitch_2e
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->$r8$lambda$j1-jbYj1r2p9nebuGiD9Z9QGKRI(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;Landroid/view/View;)V

    return-void

    :pswitch_36
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->$r8$lambda$XPNKEoKknNp4QCfOx9O03hfkDT8(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Landroid/view/View;)V

    return-void

    :pswitch_3e
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->$r8$lambda$iQM59_ZTMiO0PiFURF6_g8QjPjY(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Landroid/view/View;)V

    return-void

    :pswitch_46
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/SeasonActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/SeasonActivity;->$r8$lambda$jMGh7RTm-T7eTg5S5QEi34OvYW0(Lcom/nettv/livestore/activities/SeasonActivity;Landroid/view/View;)V

    return-void

    :pswitch_4e
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->$r8$lambda$6OGnUsSYqtLsSMoirrqD3GCLXNE(Lcom/nettv/livestore/activities/ChangePlaylistActivity;Landroid/view/View;)V

    return-void

    :pswitch_56
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->$r8$lambda$IUItZ8v77vhyNN1yZSDX6BCYNIA(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;Landroid/view/View;)V

    return-void

    :pswitch_5e
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/CatchUpActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/CatchUpActivity;->$r8$lambda$_7yd2hphTj6Wp35t1VdJO_FPJ_I(Lcom/nettv/livestore/activities/CatchUpActivity;Landroid/view/View;)V

    return-void

    :pswitch_66
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/SearchActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/SearchActivity;->$r8$lambda$WCTfw3DP2FE2mdlhCDdZUOViyjc(Lcom/nettv/livestore/activities/SearchActivity;Landroid/view/View;)V

    return-void

    :goto_6e
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->$r8$lambda$S9RUkQNj5BThFmj-G79MwKMHiDY(Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;Landroid/view/View;)V

    return-void

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_46
        :pswitch_3e
        :pswitch_36
        :pswitch_2e
        :pswitch_26
        :pswitch_1e
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
