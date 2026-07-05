.class public Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ConnectDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment$SelectList;
    }
.end annotation


# instance fields
.field public blur_view:Leightbitlab/com/blurview/BlurView;

.field public context:Landroid/content/Context;

.field public image_back:Landroid/widget/ImageButton;

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/apps/SideMenu;",
            ">;"
        }
    .end annotation
.end field

.field public portal_name:Ljava/lang/String;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public selectListener:Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment$SelectList;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$dp7o8u5vAND1kNG8PiIUXeG9p4w(Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eja3P-mcN0lVE-SzGCCdzvab7YE(Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->lambda$onCreateView$0(Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->selectListener:Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment$SelectList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment$SelectList;->onSelect(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;
    .registers 3

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->context:Landroid/content/Context;

    .line 3
    iput-object p1, v0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->portal_name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
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
    .registers 8

    const p3, 0x7f0e005a

    .line 1
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->list:Ljava/util/ArrayList;

    .line 4
    new-instance p3, Lcom/nettv/livestore/apps/SideMenu;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getConnect()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, v1}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->list:Ljava/util/ArrayList;

    new-instance p3, Lcom/nettv/livestore/apps/SideMenu;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getEdit()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p3, v0, v2, v1}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->list:Ljava/util/ArrayList;

    new-instance p3, Lcom/nettv/livestore/apps/SideMenu;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getDelete()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {p3, v0, v3, v1}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p2, 0x7f0b03ec

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 8
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->portal_name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0b02f4

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b01c5

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->image_back:Landroid/widget/ImageButton;

    const p2, 0x7f0b0072

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Leightbitlab/com/blurview/BlurView;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->blur_view:Leightbitlab/com/blurview/BlurView;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const p3, 0x1020002

    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->blur_view:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p3}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p3

    .line 16
    invoke-interface {p3, p2}, Leightbitlab/com/blurview/BlurViewFacade;->setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p2

    new-instance p3, Leightbitlab/com/blurview/RenderScriptBlur;

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, p3}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurAlgorithm(Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p2

    const/high16 p3, 0x41a00000    # 20.0f

    .line 18
    invoke-interface {p2, p3}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p2

    .line 19
    invoke-interface {p2, v2}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p2

    .line 20
    invoke-interface {p2, v2}, Leightbitlab/com/blurview/BlurViewFacade;->setHasFixedTransformationMatrix(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 21
    new-instance p2, Lcom/nettv/livestore/adapter/ConnectPlaylistAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->list:Ljava/util/ArrayList;

    new-instance v1, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3, v0, v1}, Lcom/nettv/livestore/adapter/ConnectPlaylistAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    .line 22
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 24
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->image_back:Landroid/widget/ImageButton;

    new-instance p3, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setSelectListener(Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment$SelectList;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->selectListener:Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment$SelectList;

    return-void
.end method
