.class public final synthetic Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_ca

    goto/16 :goto_bb

    :pswitch_7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;

    check-cast p1, Lcom/nettv/livestore/apps/SideMenu;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->$r8$lambda$DmVhabdxh90MK4fmO4HeIbY2JKI(Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_16
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->$r8$lambda$lYmTBflL-DHECUbxuRrfu9RSQCk(Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_25
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;

    check-cast p1, Lcom/nettv/livestore/apps/SideMenu;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->$r8$lambda$eja3P-mcN0lVE-SzGCCdzvab7YE(Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_34
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->$r8$lambda$TYUl6SDk8Cb4Q_RdK3SPxo39BjI(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_43
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/SettingActivity;

    check-cast p1, Lcom/nettv/livestore/apps/SideMenu;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/SettingActivity;->$r8$lambda$nnzlDy-gRaLbP9dWCzEb7YWtLOQ(Lcom/nettv/livestore/activities/SettingActivity;Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_52
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    check-cast p1, Lcom/nettv/livestore/models/EpisodeModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->$r8$lambda$5G1ChvoNVuZVGzN-SpqEl6jW-Xw(Lcom/nettv/livestore/activities/SeriesPlayerActivity;Lcom/nettv/livestore/models/EpisodeModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_61
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/SeriesActivity;

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/SeriesActivity;->$r8$lambda$nA-ggdGGJMBcGHjEdAhQV1IOePo(Lcom/nettv/livestore/activities/SeriesActivity;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_70
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/MovieInfoActivity;

    check-cast p1, Lcom/nettv/livestore/models/CastModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/MovieInfoActivity;->$r8$lambda$5m9SiBTS8yBQVijko9nPW8yOyOc(Lcom/nettv/livestore/activities/MovieInfoActivity;Lcom/nettv/livestore/models/CastModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_7f
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/MovieActivity;

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/MovieActivity;->$r8$lambda$4tdl_nac7kplscf7ABrkLWpl-14(Lcom/nettv/livestore/activities/MovieActivity;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_8e
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    check-cast p1, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->$r8$lambda$UcEd45ZHmjPWb5m9nJZxKOCW6JU(Lcom/nettv/livestore/activities/ChangePlaylistActivity;Lcom/nettv/livestore/models/AppInfoModel$UrlModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_9d
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/AddGroupActivity;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/AddGroupActivity;->$r8$lambda$t3q_koXg7AkuSxfl9Sc_00ssHG4(Lcom/nettv/livestore/activities/AddGroupActivity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_ac
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/LiveActivity;

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/LiveActivity;->$r8$lambda$cZX8bBC0gTyF2iv3D-YNnoHwFWo(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :goto_bb
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->$r8$lambda$fR1PqB6CQmuQ0d0VtDCnb08aqFs(Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_9d
        :pswitch_8e
        :pswitch_7f
        :pswitch_70
        :pswitch_61
        :pswitch_52
        :pswitch_43
        :pswitch_34
        :pswitch_25
        :pswitch_16
        :pswitch_7
    .end packed-switch
.end method
