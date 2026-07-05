.class public Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RenameGroupDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment$SelectList;
    }
.end annotation


# instance fields
.field public btn_back:Landroid/widget/ImageButton;

.field public recycler_rename:Landroidx/recyclerview/widget/RecyclerView;

.field public renameLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/apps/SideMenu;",
            ">;"
        }
    .end annotation
.end field

.field public selectListener:Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment$SelectList;

.field public txt_name:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$DmVhabdxh90MK4fmO4HeIbY2JKI(Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->lambda$onCreateView$0(Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S9RUkQNj5BThFmj-G79MwKMHiDY(Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->selectListener:Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment$SelectList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment$SelectList;->onSelect(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
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
    .registers 7

    const p3, 0x7f0e0069

    .line 1
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b02f4

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->recycler_rename:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b01c5

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->btn_back:Landroid/widget/ImageButton;

    const p2, 0x7f0b03e4

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->txt_name:Landroid/widget/TextView;

    .line 5
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 7
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getChange_my_group()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->renameLists:Ljava/util/ArrayList;

    .line 9
    new-instance p3, Lcom/nettv/livestore/apps/SideMenu;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getRename()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, v1}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->renameLists:Ljava/util/ArrayList;

    new-instance p3, Lcom/nettv/livestore/apps/SideMenu;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getStr_delete()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1, v1}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p2, Lcom/nettv/livestore/adapter/ConnectPlaylistAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->renameLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3, v0, v1}, Lcom/nettv/livestore/adapter/ConnectPlaylistAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    .line 12
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->recycler_rename:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->recycler_rename:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 14
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->btn_back:Landroid/widget/ImageButton;

    new-instance p3, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setSelectListener(Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment$SelectList;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->selectListener:Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment$SelectList;

    return-void
.end method
