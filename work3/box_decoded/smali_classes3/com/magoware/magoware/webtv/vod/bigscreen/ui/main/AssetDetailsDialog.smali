.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "AssetDetailsDialog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static ASSET_CARD:Ljava/lang/String; = "asset_card"


# instance fields
.field asset_action_back:Landroid/widget/Button;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$AssetDetailsDialog(Landroid/view/View;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$AssetDetailsDialog(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V
    .locals 2

    if-eqz p3, :cond_2

    .line 64
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 67
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getLong_description()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getLong_description()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getAssetDetailsType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;

    .line 76
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "back"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 77
    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->asset_action_back:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->asset_action_back:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->asset_action_back:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->requestFocus()Z

    .line 80
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->asset_action_back:Landroid/widget/Button;

    new-instance p3, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$AssetDetailsDialog$uu2-hAvHycs9oAtyCVI1AvB1BpM;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$AssetDetailsDialog$uu2-hAvHycs9oAtyCVI1AvB1BpM;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 41
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f15000f

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 43
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0090

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00cd

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b00d0

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b00cf

    .line 47
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b00d1

    .line 48
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b00ce

    .line 49
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b00cc

    .line 50
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0b00ca

    .line 51
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->asset_action_back:Landroid/widget/Button;

    .line 54
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    sget-object v8, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->ASSET_CARD:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    if-eqz v7, :cond_0

    .line 56
    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getShort_description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 60
    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 63
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getAssetsDetailsObservable(I)Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$AssetDetailsDialog$eqlZh4G8M_IwN_lxCefKDYMUp2A;

    invoke-direct {v2, p0, v6, v4}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$AssetDetailsDialog$eqlZh4G8M_IwN_lxCefKDYMUp2A;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 87
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 5

    .line 93
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 97
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 99
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x11

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method
