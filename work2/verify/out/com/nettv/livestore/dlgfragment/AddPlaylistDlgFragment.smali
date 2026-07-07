.class public Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AddPlaylistDlgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;
    }
.end annotation


# instance fields
.field public appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

.field public btn_add:Landroid/widget/Button;

.field public btn_add_m3u:Landroid/widget/Button;

.field public btn_add_xc:Landroid/widget/Button;

.field public btn_back:Landroid/widget/ImageButton;

.field public context:Landroid/content/Context;

.field public dlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

.field public et_name:Landroid/widget/EditText;

.field public et_password:Landroid/widget/EditText;

.field public et_url:Landroid/widget/EditText;

.field public et_username:Landroid/widget/EditText;

.field public is_xc:Z

.field public listener:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;

.field public playlistID:Ljava/lang/String;

.field public playlistName:Ljava/lang/String;

.field public playlistType:Ljava/lang/String;

.field public playlistUrl:Ljava/lang/String;

.field public playlist_position:I

.field public sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public str_list_name:Landroid/widget/TextView;

.field public str_mac_address:Landroid/widget/TextView;

.field public str_password:Landroid/widget/TextView;

.field public str_url:Landroid/widget/TextView;

.field public str_username:Landroid/widget/TextView;

.field public txt_mac_address:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public urlModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/AppInfoModel$UrlModel;",
            ">;"
        }
    .end annotation
.end field

.field public username:Ljava/lang/String;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$FcDPIXfU4euIRkbsYooXur08nno(Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->lambda$onCreateView$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w_QqIxtGRDsqCM7MJZToVP3UGG8(Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->lambda$showNoConnectionDlgFragment$1()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlist_position:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistName:Ljava/lang/String;

    const-string v1, "general"

    iput-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistType:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistID:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->is_xc:Z

    return-void
.end method

.method private addPlaylist(Ljava/lang/String;)V
    .registers 6

    const-string v0, "general"

    .line 1
    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistType:Ljava/lang/String;

    const-string v1, ""

    .line 2
    iput-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->username:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "Playlist"

    .line 4
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistName:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_name:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_34
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistName:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_url:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_61

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getPut_m3u_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 10
    :cond_61
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_url:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistUrl:Ljava/lang/String;

    .line 11
    iget-boolean v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->is_xc:Z

    if-eqz v1, :cond_e3

    .line 12
    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistType:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getPut_username()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 15
    :cond_97
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getPut_password()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 17
    :cond_b7
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->username:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->username:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getPlaylistUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistUrl:Ljava/lang/String;

    .line 20
    :cond_e3
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistName:Ljava/lang/String;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistType:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/nettv/livestore/utils/Security;->getAddData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v0, Lcom/nettv/livestore/remote/GetDataRequest;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/nettv/livestore/remote/GetDataRequest;-><init>(Landroid/content/Context;I)V

    .line 22
    invoke-static {p1}, Lcom/nettv/livestore/utils/Security;->getJsonData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v1, Lcom/nettv/livestore/apps/Constants;->second_create_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/remote/GetDataRequest;->getResponse(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p0}, Lcom/nettv/livestore/remote/GetDataRequest;->setOnGetResponseListener(Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;)V

    return-void
.end method

.method private changeXCFormat()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->is_xc:Z

    if-eqz v0, :cond_55

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_url:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_username:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_password:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_username:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_password:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_username:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_password:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_name:Landroid/widget/EditText;

    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_url:Landroid/widget/EditText;

    const v2, 0x7f0b012c

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_xc:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_90

    .line 13
    :cond_55
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_url:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getEnter_m3u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_username:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_password:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_username:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_password:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_name:Landroid/widget/EditText;

    const v1, 0x7f0b0084

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_url:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add:Landroid/widget/Button;

    const v1, 0x7f0b0129

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_m3u:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_90
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0b0088

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b03e4

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b03b9

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_xc:Landroid/widget/Button;

    const v0, 0x7f0b03b8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_m3u:Landroid/widget/Button;

    const v0, 0x7f0b03df

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->txt_mac_address:Landroid/widget/TextView;

    const v0, 0x7f0b0368

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_mac_address:Landroid/widget/TextView;

    const v0, 0x7f0b0365

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_list_name:Landroid/widget/TextView;

    const v0, 0x7f0b0377

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_url:Landroid/widget/TextView;

    const v0, 0x7f0b0378

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_username:Landroid/widget/TextView;

    const v0, 0x7f0b036d

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_password:Landroid/widget/TextView;

    const v0, 0x7f0b0129

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_name:Landroid/widget/EditText;

    const v0, 0x7f0b012e

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_url:Landroid/widget/EditText;

    const v0, 0x7f0b012f

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_username:Landroid/widget/EditText;

    const v0, 0x7f0b012c

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_password:Landroid/widget/EditText;

    const v0, 0x7f0b0084

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add:Landroid/widget/Button;

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_xc:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_m3u:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getAdd_playlist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_xc:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getXtreme_codes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_m3u:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getAdd_m3u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getAdd_playlist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->txt_mac_address:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_mac_address:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getMac_address()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->str_list_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getPlaylist_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_8b

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_8c

    goto/16 :goto_8b

    .line 3
    :pswitch_11
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_url:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_xc:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_8b

    :cond_31
    return p3

    .line 4
    :pswitch_32
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_52

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_username:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_52

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_52

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_m3u:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_8b

    :cond_52
    return p3

    .line 5
    :pswitch_53
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    iget-boolean p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->is_xc:Z

    if-eqz p1, :cond_6a

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_xc:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_6f

    .line 9
    :cond_6a
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_m3u:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_6f
    return p3

    .line 10
    :pswitch_70
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_m3u:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_80

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add_xc:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 11
    :cond_80
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return p3

    :cond_8b
    :goto_8b
    return p2

    :pswitch_data_8c
    .packed-switch 0x13
        :pswitch_70
        :pswitch_53
        :pswitch_32
        :pswitch_11
    .end packed-switch
.end method

.method private synthetic lambda$showNoConnectionDlgFragment$1()V
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->addPlaylist(Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;ILcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;)Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;
    .registers 4

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->context:Landroid/content/Context;

    .line 3
    iput-object p2, v0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;

    .line 4
    iput p1, v0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlist_position:I

    return-object v0
.end method

.method private showNoConnectionDlgFragment()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "no_connection"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getCheck_internet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->dlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;

    const/16 v4, 0xa

    invoke-direct {v3, p0, v4}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->setOnRetryClickListener(Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->dlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSuccessDlg()V
    .registers 8

    .line 1
    new-instance v6, Lcom/nettv/livestore/dlg/SuccessDlg;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getStr_playlist_uploaded_successfully()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$1;

    invoke-direct {v5, p0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$1;-><init>(Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/nettv/livestore/dlg/SuccessDlg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;)V

    .line 2
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public OnGetResponseResult(Lorg/json/JSONObject;I)V
    .registers 4

    if-eqz p1, :cond_51

    .line 1
    :try_start_2
    new-instance p2, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-direct {p2}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;-><init>()V

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->setId(Ljava/lang/String;)V

    const-string v0, "name"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->setName(Ljava/lang/String;)V

    const-string v0, "url"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->setUrl(Ljava/lang/String;)V

    .line 5
    iget p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlist_position:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_35

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 7
    :cond_35
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :goto_3a
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/models/AppInfoModel;->setResult(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceAppInfo(Lcom/nettv/livestore/models/AppInfoModel;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-static {p1}, Lcom/nettv/livestore/utils/Utils;->saveToFile(Lcom/nettv/livestore/models/AppInfoModel;)V

    .line 11
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->showSuccessDlg()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_50} :catch_54

    goto :goto_54

    .line 12
    :cond_51
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->showNoConnectionDlgFragment()V

    :catch_54
    :goto_54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    :sswitch_8
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->is_xc:Z

    .line 3
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->changeXCFormat()V

    goto :goto_1f

    :sswitch_f
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->is_xc:Z

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->changeXCFormat()V

    goto :goto_1f

    .line 6
    :sswitch_16
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_1f

    .line 7
    :sswitch_1a
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistID:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->addPlaylist(Ljava/lang/String;)V

    :goto_1f
    return-void

    :sswitch_data_20
    .sparse-switch
        0x7f0b0084 -> :sswitch_1a
        0x7f0b0088 -> :sswitch_16
        0x7f0b03b8 -> :sswitch_f
        0x7f0b03b9 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f14013e

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0e0058

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceAppInfo()Lcom/nettv/livestore/models/AppInfoModel;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    if-eqz p2, :cond_2d

    .line 5
    invoke-virtual {p2}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    .line 6
    :cond_2d
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->initView(Landroid/view/View;)V

    .line 7
    iget p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlist_position:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_f6

    .line 8
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object p2

    const-string p3, "username"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a8

    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    iget p3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlist_position:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object p2

    const-string p3, "password"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a8

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->is_xc:Z

    .line 10
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_url:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlist_position:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/nettv/livestore/helper/GetSharedInfo;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_username:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlist_position:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/nettv/livestore/helper/GetSharedInfo;->getUsernameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_password:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlist_position:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/nettv/livestore/helper/GetSharedInfo;->getPasswordFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bd

    .line 13
    :cond_a8
    iput-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->is_xc:Z

    .line 14
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_url:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlist_position:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_bd
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->et_name:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlist_position:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->urlModelList:Ljava/util/List;

    iget p3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlist_position:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->playlistID:Ljava/lang/String;

    .line 17
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->btn_add:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getStr_update_playlist()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->txt_name:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getStr_edit_playlist()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_f6
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->changeXCFormat()V

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
