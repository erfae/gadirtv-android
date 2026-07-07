.class public Lcom/magoware/magoware/webtv/account/mobile/UserFragment;
.super Landroidx/fragment/app/Fragment;
.source "UserFragment.java"


# static fields
.field private static final KEY_CONTENT:Ljava/lang/String; = "UserFragment:Content"


# instance fields
.field private adMobUtil:Lcom/magoware/magoware/webtv/util/AdMobUtil;

.field private address:Landroid/widget/EditText;

.field private btnSubmit:Landroid/widget/Button;

.field private city:Landroid/widget/EditText;

.field private country:Landroid/widget/EditText;

.field private email:Landroid/widget/EditText;

.field private firstname:Landroid/widget/EditText;

.field private lastname:Landroid/widget/EditText;

.field mCurrentPosition:I

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field progressDialog:Landroid/app/ProgressDialog;

.field private telephone:Landroid/widget/EditText;

.field private thisActivity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->mCurrentPosition:I

    return-void
.end method

.method private getUserData()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 108
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 109
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 111
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getAccountUserDataObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$UserFragment$FqKWmNAoJaGo1TTu6D9LmBZdy7I;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$UserFragment$FqKWmNAoJaGo1TTu6D9LmBZdy7I;-><init>(Lcom/magoware/magoware/webtv/account/mobile/UserFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initalizeInputControls(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0b0043

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->firstname:Landroid/widget/EditText;

    const v0, 0x7f0b004a

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->lastname:Landroid/widget/EditText;

    const v0, 0x7f0b0042

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->email:Landroid/widget/EditText;

    const v0, 0x7f0b003b

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->address:Landroid/widget/EditText;

    const v0, 0x7f0b003e

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->city:Landroid/widget/EditText;

    const v0, 0x7f0b0040

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->country:Landroid/widget/EditText;

    const v0, 0x7f0b006e

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->telephone:Landroid/widget/EditText;

    .line 76
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    const v0, 0x7f0b005f

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->btnSubmit:Landroid/widget/Button;

    .line 79
    new-instance v0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$UserFragment$pqbifDGdJO_HEmW_iUbQZDQ6iQ0;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$UserFragment$pqbifDGdJO_HEmW_iUbQZDQ6iQ0;-><init>(Lcom/magoware/magoware/webtv/account/mobile/UserFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private populateForm(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;

    .line 96
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->firstname:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->firstname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->lastname:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->lastname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->email:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->address:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->city:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->country:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->telephone:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->telephone:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setUserData(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 128
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 129
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 131
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setAccountUserDataObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$UserFragment$U-g8m7m2soE4TzFj-YMKn1ZhWlM;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$UserFragment$U-g8m7m2soE4TzFj-YMKn1ZhWlM;-><init>(Lcom/magoware/magoware/webtv/account/mobile/UserFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getUserData$1$UserFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 114
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->populateForm(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 119
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$initalizeInputControls$0$UserFragment(Landroid/view/View;)V
    .locals 2

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 82
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->firstname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "firstname"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->lastname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lastname"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->address:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->city:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "city"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->country:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "country"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->telephone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "telephone"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->setUserData(Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic lambda$setUserData$2$UserFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const p1, 0x7f1400c0

    .line 134
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->adMobUtil:Lcom/magoware/magoware/webtv/util/AdMobUtil;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/util/AdMobUtil;->showAd()V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 140
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    .line 50
    new-instance p1, Lcom/magoware/magoware/webtv/util/AdMobUtil;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/magoware/magoware/webtv/util/AdMobUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->adMobUtil:Lcom/magoware/magoware/webtv/util/AdMobUtil;

    .line 51
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 52
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e00ce

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->initalizeInputControls(Landroid/view/View;)V

    .line 59
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->getUserData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method
