.class public Lcom/nettv/livestore/activities/AddGroupActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AddGroupActivity.java"


# instance fields
.field public addChannelDlgFragment:Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;

.field public addGroupDlgFragment:Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;

.field public btn_add_channel:Landroid/widget/Button;

.field public btn_back:Landroid/widget/ImageButton;

.field public categoryRecyclerAdapter:Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;

.field public category_pos:I

.field public channelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

.field public channel_pos:I

.field public image_add:Landroid/widget/ImageView;

.field public key:Ljava/lang/String;

.field public liveCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public myCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public renameGroupDlgFragment:Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;

.field public str_add:Landroid/widget/TextView;

.field public str_groups:Landroid/widget/TextView;

.field public txt_edit:Landroid/widget/TextView;

.field public txt_group_name:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$1xRDYSPrsIDkIWTrwj8fAaUYhxM(Lcom/nettv/livestore/activities/AddGroupActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/AddGroupActivity;->lambda$initView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3t1a1GvH_J4gXPaIUH1_6iEGaxo()V
    .locals 0

    invoke-static {}, Lcom/nettv/livestore/activities/AddGroupActivity;->lambda$showAddChannelDlgFragment$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$7D1eM7LPFo_LoGRm1XmANSVkH9E(Lcom/nettv/livestore/activities/AddGroupActivity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/activities/AddGroupActivity;->lambda$onCreate$0(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7Z5tO8x559c1iB4FkMnkj4v4Z1I(Lcom/nettv/livestore/activities/AddGroupActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/AddGroupActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JlefLhQCR_s-Syii6wH-3YDL6eU()V
    .locals 0

    invoke-static {}, Lcom/nettv/livestore/activities/AddGroupActivity;->lambda$showAddChannelDlgFragment$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$LVPDX0rlWT5DuAQ32DgssK2pXHQ(Lcom/nettv/livestore/activities/AddGroupActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/AddGroupActivity;->lambda$showAddChannelDlgFragment$7(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U0afUa2jDxmJw2sODLC6sI24PDM(Lcom/nettv/livestore/activities/AddGroupActivity;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/AddGroupActivity;->lambda$showAddGroupDlgFragment$4(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t3q_koXg7AkuSxfl9Sc_00ssHG4(Lcom/nettv/livestore/activities/AddGroupActivity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/AddGroupActivity;->lambda$onCreate$1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$weusruGoWY5ZyJGKmYCbtS1Q1VY(Lcom/nettv/livestore/activities/AddGroupActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/AddGroupActivity;->lambda$showRenameDlgFragment$3(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->channel_pos:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->key:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->liveCategories:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method private changeCategoryModel()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedLiveCategoryModels()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4
    iget-object v4, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget v5, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 9
    iget-object v5, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget v6, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 11
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceMyGroupCategory(Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveCategory(Ljava/util/List;)V

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "changeModelSize"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "myModelSize"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleLiveCategories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nettv/livestore/apps/Constants;->getLiveGroupModels(Ljava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method private changeRenameCategoryModel(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1, p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceMyGroupChannels(Ljava/lang/String;Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->removeKeys(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedLiveCategoryModels()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget v5, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    mul-int/lit16 v0, v0, 0x3e8

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-direct {v3, v0, p1}, Lcom/nettv/livestore/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveCategory(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->categoryRecyclerAdapter:Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->setData(Ljava/util/List;I)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    const/4 v0, 0x2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceMyGroupCategory(Ljava/util/List;)V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0b0088

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b0363

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->str_groups:Landroid/widget/TextView;

    const v0, 0x7f0b03d7

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->txt_group_name:Landroid/widget/TextView;

    const v0, 0x7f0b0355

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->str_add:Landroid/widget/TextView;

    const v0, 0x7f0b03ce

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->txt_edit:Landroid/widget/TextView;

    const v0, 0x7f0b02ea

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b02eb

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b0085

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    const v0, 0x7f0b01c2

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->image_add:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->str_groups:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getStr_my_group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getStr_add_channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->str_add:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getStr_group_string()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->txt_edit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getEdit_group_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_back:Landroid/widget/ImageButton;

    new-instance v1, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/AddGroupActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initView$8(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "is_changed"

    const-string v1, "add_group"

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    .line 4
    iget-object p3, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    .line 6
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/nettv/livestore/activities/AddGroupActivity;->showMyChannels(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 9
    invoke-direct {p0, p4, p1}, Lcom/nettv/livestore/activities/AddGroupActivity;->showAddGroupDlgFragment(ZLjava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    .line 11
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x1

    if-le p3, p4, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/nettv/livestore/activities/AddGroupActivity;->showRenameDlgFragment()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/AddGroupActivity;->showMyChannels(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreate$1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->channel_pos:I

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/AddGroupActivity;->showAddChannelDlgFragment()V

    return-void
.end method

.method private static synthetic lambda$showAddChannelDlgFragment$5()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showAddChannelDlgFragment$6()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showAddChannelDlgFragment$7(Ljava/util/List;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getFavChannelNames()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v4

    sget-object v5, Lio/realm/Realm$$ExternalSyntheticLambda0;->INSTANCE$15:Lio/realm/Realm$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v3, v2, v5}, Lcom/nettv/livestore/helper/RealmController;->addToFavChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveFavChannels(Ljava/util/List;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v4

    sget-object v5, Lio/realm/Realm$$ExternalSyntheticLambda0;->INSTANCE$16:Lio/realm/Realm$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v3, v1, v5}, Lcom/nettv/livestore/helper/RealmController;->addToFavChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceMyGroupChannels(Ljava/lang/String;Ljava/util/List;)V

    .line 9
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->image_add:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->str_add:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->image_add:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->str_add:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->channelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    invoke-virtual {v0, p1, v2}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->setChannelData(Ljava/util/List;Z)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$showAddGroupDlgFragment$4(ZLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->addGroupDlgFragment:Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/AddGroupActivity;->changeRenameCategoryModel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedLiveCategoryModels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->liveCategories:Ljava/util/List;

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit16 p1, p1, 0x1388

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->liveCategories:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    new-instance v2, Lcom/nettv/livestore/models/CategoryModel;

    invoke-direct {v2, p1, p2}, Lcom/nettv/livestore/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->liveCategories:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveCategory(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getAdd_group()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getFavorite()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->categoryRecyclerAdapter:Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;

    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, p2, v2}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->setData(Ljava/util/List;I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 13
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->channelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->setChannelData(Ljava/util/List;Z)V

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$showRenameDlgFragment$3(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/AddGroupActivity;->showAddGroupDlgFragment(ZLjava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/AddGroupActivity;->changeCategoryModel()V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->removeKeys(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->categoryRecyclerAdapter:Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->setData(Ljava/util/List;I)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->channelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->setChannelData(Ljava/util/List;Z)V

    :goto_0
    return-void
.end method

.method private showAddChannelDlgFragment()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_add_channel"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->key:Ljava/lang/String;

    iget v3, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    invoke-static {v1, v3}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->newInstance(Ljava/lang/String;I)Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->addChannelDlgFragment:Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;

    .line 7
    new-instance v3, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda2;-><init>(Lcom/nettv/livestore/activities/AddGroupActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->setOnSendMyGroupNamesListener(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$onSendMyGroupNamesListener;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->addChannelDlgFragment:Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showAddGroupDlgFragment(ZLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_add_group"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    return-void

    .line 6
    :cond_0
    invoke-static {p1, p2}, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->newInstance(ZLjava/lang/String;)Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->addGroupDlgFragment:Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;

    .line 7
    new-instance v1, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p2, v1}, Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;->setOnAddedGroupListener(Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment$OnAddedGroupListener;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->addGroupDlgFragment:Lcom/nettv/livestore/dlgfragment/AddGroupDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showMyChannels(Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->txt_group_name:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->image_add:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->str_add:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 6
    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->key:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->txt_group_name:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->txt_group_name:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveFavChannels()Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->image_add:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->str_add:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->image_add:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->str_add:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->channelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    invoke-virtual {p2, p1, v1}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->setChannelData(Ljava/util/List;Z)V

    goto :goto_0

    .line 19
    :cond_2
    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->key:Ljava/lang/String;

    .line 20
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->txt_group_name:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->txt_group_name:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_3

    .line 25
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->image_add:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->str_add:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 28
    :cond_3
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->image_add:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->str_add:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p2, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->channelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    invoke-virtual {p2, p1, v1}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->setChannelData(Ljava/util/List;Z)V

    :goto_0
    return-void
.end method

.method private showRenameDlgFragment()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_rename"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;

    invoke-direct {v1}, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;-><init>()V

    iput-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->renameGroupDlgFragment:Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;

    .line 7
    new-instance v3, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda2;-><init>(Lcom/nettv/livestore/activities/AddGroupActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;->setSelectListener(Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment$SelectList;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->renameGroupDlgFragment:Lcom/nettv/livestore/dlgfragment/RenameGroupDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return v1

    .line 7
    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    .line 10
    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return v1

    .line 14
    :pswitch_3
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->channel_pos:I

    if-nez v0, :cond_1

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->category_pos:I

    if-nez v0, :cond_3

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    .line 21
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_changed"

    const-string v2, "add_group"

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e001c

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/AddGroupActivity;->initView()V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedLiveCategoryModels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->liveCategories:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getAdd_group()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getFavorite()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    new-instance p1, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->myCategories:Ljava/util/List;

    new-instance v3, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v2}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p0, v0, v2, v3}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZLkotlin/jvm/functions/Function4;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->categoryRecyclerAdapter:Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array p1, v2, [Landroid/view/View;

    aput-object v0, p1, v1

    .line 16
    iget-object v3, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v4, Lcom/nettv/livestore/activities/AddGroupActivity$1;

    invoke-direct {v4, p1}, Lcom/nettv/livestore/activities/AddGroupActivity$1;-><init>([Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    :goto_0
    new-instance p1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v2}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p0, v3, v2, v4}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZLkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->channelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    .line 19
    iget-object v3, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array p1, v2, [Landroid/view/View;

    aput-object v0, p1, v1

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v3, Lcom/nettv/livestore/activities/AddGroupActivity$2;

    invoke-direct {v3, p1}, Lcom/nettv/livestore/activities/AddGroupActivity$2;-><init>([Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_1

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    :goto_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 28
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/nettv/livestore/activities/AddGroupActivity;->btn_add_channel:Landroid/widget/Button;

    new-instance v0, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/nettv/livestore/activities/AddGroupActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/AddGroupActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
