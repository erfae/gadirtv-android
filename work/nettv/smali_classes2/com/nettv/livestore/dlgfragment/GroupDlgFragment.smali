.class public Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "GroupDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$onSelectCategoryListener;
    }
.end annotation


# instance fields
.field public btn_back:Landroid/widget/ImageButton;

.field public categoryModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public category_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public category_pos:I

.field public listener:Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$onSelectCategoryListener;

.field public myGroupRecyclerAdapter:Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;

.field public txt_add:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$8W7wrTWLAVMBaMTdpHBro-V-rF4(Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lYmTBflL-DHECUbxuRrfu9RSQCk(Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->lambda$onCreateView$1(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->category_pos:I

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$onSelectCategoryListener;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$onSelectCategoryListener;->onSelectCategory(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static newInstance(Ljava/util/List;I)Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;I)",
            "Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->categoryModelList:Ljava/util/List;

    .line 3
    iput p1, v0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->category_pos:I

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
    .locals 3

    const p3, 0x7f0e005f

    .line 1
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const p2, 0x7f0b0088

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->btn_back:Landroid/widget/ImageButton;

    const p2, 0x7f0b03b7

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->txt_add:Landroid/widget/TextView;

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->btn_back:Landroid/widget/ImageButton;

    new-instance p3, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b00b1

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->category_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->txt_add:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getStr_my_group()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance p2, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->categoryModelList:Ljava/util/List;

    new-instance v1, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3, v0, v1}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->myGroupRecyclerAdapter:Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->category_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget p3, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->category_pos:I

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 11
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->category_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 12
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->category_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 13
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->category_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array p2, p3, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p3, p2, v0

    .line 14
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->category_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$1;

    invoke-direct {v0, p2}, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$1;-><init>([Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->category_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    :goto_0
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->category_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->myGroupRecyclerAdapter:Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public setOnSelectCategoryListener(Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$onSelectCategoryListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$onSelectCategoryListener;

    return-void
.end method
