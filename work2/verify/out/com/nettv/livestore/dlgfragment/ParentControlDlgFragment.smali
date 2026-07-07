.class public Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ParentControlDlgFragment.java"

# interfaces
.implements Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;


# instance fields
.field public btn_cancel:Landroid/widget/Button;

.field public btn_ok:Landroid/widget/Button;

.field public et_confirm_password:Landroid/widget/EditText;

.field public et_new_password:Landroid/widget/EditText;

.field public et_password:Landroid/widget/EditText;

.field public pin_code:Ljava/lang/String;

.field public sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public str_confirm_password:Landroid/widget/TextView;

.field public str_new_password:Landroid/widget/TextView;

.field public str_password:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$TpqEktBMOprOYuXr5Ywz61kUxmo(Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->lambda$initView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5ZEqaNMIapheFEofxCpotk4EHE(Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->lambda$onCreateView$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k8rMNDsfh0dTszJmjSLccm7SpDM(Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->pin_code:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0b03e4

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b036d

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->str_password:Landroid/widget/TextView;

    const v0, 0x7f0b036c

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->str_new_password:Landroid/widget/TextView;

    const v0, 0x7f0b035c

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->str_confirm_password:Landroid/widget/TextView;

    const v0, 0x7f0b012c

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_password:Landroid/widget/EditText;

    const v0, 0x7f0b012a

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_new_password:Landroid/widget/EditText;

    const v0, 0x7f0b0127

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_confirm_password:Landroid/widget/EditText;

    const v0, 0x7f0b0096

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->btn_ok:Landroid/widget/Button;

    const v0, 0x7f0b0089

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->btn_cancel:Landroid/widget/Button;

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->btn_ok:Landroid/widget/Button;

    new-instance v0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->btn_cancel:Landroid/widget/Button;

    new-instance v0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_password:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getParent_pass_cant_empty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_1c
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_new_password:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNew_pass_cant_empty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_38
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_55

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_new_password:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNew_pass_length()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 7
    :cond_55
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_confirm_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_confirm_password:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getConfirm_pass_cant_empty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 9
    :cond_71
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->pin_code:Ljava/lang/String;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8f

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_password:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getPass_incorrect()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 11
    :cond_8f
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_confirm_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b5

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_confirm_password:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getConfirm_pass_not_matched()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 13
    :cond_b5
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->updatePinCode()V

    return-void
.end method

.method private synthetic lambda$initView$2(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_12

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_12

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private updatePinCode()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->pin_code:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMacAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->pin_code:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nettv/livestore/utils/Security;->getParentData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/nettv/livestore/remote/GetDataRequest;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xbb8

    invoke-direct {v1, v2, v3}, Lcom/nettv/livestore/remote/GetDataRequest;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-static {v0}, Lcom/nettv/livestore/utils/Security;->getJsonData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/nettv/livestore/apps/Constants;->second_update_control:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nettv/livestore/remote/GetDataRequest;->getResponse(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/nettv/livestore/remote/GetDataRequest;->setOnGetResponseListener(Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;)V

    return-void
.end method


# virtual methods
.method public OnGetResponseResult(Lorg/json/JSONObject;I)V
    .registers 5

    const-string p2, ""

    if-eqz p1, :cond_37

    :try_start_4
    const-string v0, "status"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->pin_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceParentPassword(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getParent_pass_changed()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_password:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_confirm_password:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_37

    :catch_37
    :cond_37
    return-void
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

    const p3, 0x7f0e0067

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->initView(Landroid/view/View;)V

    .line 3
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 4
    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceAppInfo()Lcom/nettv/livestore/models/AppInfoModel;

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->pin_code:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 7
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getParent_control()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->str_password:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getPassword()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->str_new_password:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getNet_pass()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->str_confirm_password:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getConfirm_password()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->btn_ok:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->btn_cancel:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_password:Landroid/widget/EditText;

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$1;

    invoke-direct {p3, p0}, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$1;-><init>(Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_confirm_password:Landroid/widget/EditText;

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$2;

    invoke-direct {p3, p0}, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$2;-><init>(Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
