.class public Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AddGroupDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$OnAddedGroupListener;
    }
.end annotation


# instance fields
.field public btn_back:Landroid/widget/ImageButton;

.field public btn_ok:Landroid/widget/Button;

.field public is_rename:Z

.field public listener:Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$OnAddedGroupListener;

.field public myGroupNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public originalName:Ljava/lang/String;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public txt_add:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/EditText;

.field public txt_pick_name:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$2kbk23nIoE444svm9b_jOI4WGMg(Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbjVTTMN58fyafx7erOOVmB31U0(Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->myGroupNames:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->is_rename:Z

    return-void
.end method

.method private addGroupToModel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->txt_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->txt_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->myGroupNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getStr_contain_this_name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->myGroupNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->myGroupNames:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceMyGroupCategory(Ljava/util/List;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$OnAddedGroupListener;

    invoke-interface {v1, v0}, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$OnAddedGroupListener;->onAddedGroup(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b0088

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b03b7

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->txt_add:Landroid/widget/TextView;

    const v0, 0x7f0b03e9

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->txt_pick_name:Landroid/widget/TextView;

    const v0, 0x7f0b03e4

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->txt_name:Landroid/widget/EditText;

    const v0, 0x7f0b0096

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->btn_ok:Landroid/widget/Button;

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->txt_add:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getStr_my_group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->txt_pick_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getStr_group_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->btn_ok:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->addGroupToModel()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static newInstance(ZLjava/lang/String;)Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;-><init>()V

    .line 2
    iput-boolean p0, v0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->is_rename:Z

    .line 3
    iput-object p1, v0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->originalName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
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
    .locals 1

    const p3, 0x7f0e0057

    .line 1
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 4
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->initView(Landroid/view/View;)V

    .line 5
    iget-boolean p2, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->is_rename:Z

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->txt_name:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->originalName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->myGroupNames:Ljava/util/List;

    .line 8
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->btn_ok:Landroid/widget/Button;

    new-instance p3, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->btn_back:Landroid/widget/ImageButton;

    new-instance p3, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->txt_name:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    return-object p1
.end method

.method public setOnAddedGroupListener(Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$OnAddedGroupListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$OnAddedGroupListener;

    return-void
.end method
