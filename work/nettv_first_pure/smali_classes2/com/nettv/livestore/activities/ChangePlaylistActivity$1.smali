.class Lcom/nettv/livestore/activities/ChangePlaylistActivity$1;
.super Ljava/lang/Object;
.source "ChangePlaylistActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/ChangePlaylistActivity;->deletePlaylist(Lcom/nettv/livestore/models/AppInfoModel$UrlModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/ChangePlaylistActivity;

.field public final synthetic val$dlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

.field public final synthetic val$selectedModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/ChangePlaylistActivity;Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;Lcom/nettv/livestore/models/AppInfoModel$UrlModel;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$1;->this$0:Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    iput-object p2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$1;->val$dlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    iput-object p3, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$1;->val$selectedModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    return-void
.end method

.method public onOkClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$1;->val$dlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$1;->this$0:Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$1;->val$selectedModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nettv/livestore/utils/Security;->getDeleteData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/nettv/livestore/remote/GetDataRequest;

    iget-object v2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$1;->this$0:Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    const/16 v3, 0x7d0

    invoke-direct {v1, v2, v3}, Lcom/nettv/livestore/remote/GetDataRequest;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-static {v0}, Lcom/nettv/livestore/utils/Security;->getJsonData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/nettv/livestore/apps/Constants;->second_delete_url:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nettv/livestore/remote/GetDataRequest;->getResponse(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$1;->this$0:Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/remote/GetDataRequest;->setOnGetResponseListener(Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;)V

    return-void
.end method
