.class public Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "HideCategoryDlgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment$OnCategoryChanged;
    }
.end annotation


# instance fields
.field public adapter:Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

.field public btn_all:Landroid/widget/Button;

.field public btn_cancel:Landroid/widget/Button;

.field public btn_ok:Landroid/widget/Button;

.field public categoryModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public category_ids:[Ljava/lang/String;

.field public category_names:[Ljava/lang/String;

.field public category_start_pos:I

.field public checkedItems:[Z

.field public context:Landroid/content/Context;

.field public id:I

.field public listener:Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment$OnCategoryChanged;

.field public recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

.field public selectedIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public txt_header:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$SN6ARhS0iCSosFlkVbVKZXRiU_k(Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->lambda$onCreateView$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gIFyg91h15_OqDiXhN1yHGt7hEg(Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->lambda$onCreateView$0(Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_start_pos:I

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0b03d8

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->txt_header:Landroid/widget/TextView;

    const v0, 0x7f0b02e9

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0096

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->btn_ok:Landroid/widget/Button;

    const v0, 0x7f0b0089

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->btn_cancel:Landroid/widget/Button;

    const v0, 0x7f0b0086

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->btn_all:Landroid/widget/Button;

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->btn_ok:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->btn_all:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_24

    .line 2
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_ids:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_45

    .line 3
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_ids:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 4
    :cond_24
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_ids:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_ids:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_45
    :goto_45
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreateView$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2c

    const/16 p1, 0x15

    const/4 p3, 0x1

    if-eq p2, p1, :cond_1e

    const/16 p1, 0x16

    if-eq p2, p1, :cond_10

    goto :goto_2c

    .line 2
    :cond_10
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return p3

    .line 4
    :cond_1e
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->btn_ok:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return p3

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    return p1
.end method

.method public static newInstance(Landroid/content/Context;I)Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;
    .registers 3

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->context:Landroid/content/Context;

    .line 3
    iput p1, v0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->id:I

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0086

    const/4 v1, 0x1

    if-eq p1, v0, :cond_58

    const v0, 0x7f0b0089

    if-eq p1, v0, :cond_54

    const v0, 0x7f0b0096

    if-eq p1, v0, :cond_15

    goto :goto_81

    .line 2
    :cond_15
    iget p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->id:I

    if-eqz p1, :cond_3d

    if-eq p1, v1, :cond_2e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    goto :goto_4b

    .line 3
    :cond_1f
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/nettv/livestore/apps/Constants;->getSeriesGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceInvisibleSeriesCategories(Ljava/util/List;)V

    goto :goto_4b

    .line 5
    :cond_2e
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/nettv/livestore/apps/Constants;->getVodGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceInvisibleVodCategories(Ljava/util/List;)V

    goto :goto_4b

    .line 7
    :cond_3d
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/nettv/livestore/apps/Constants;->getLiveGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceInvisibleLiveCategories(Ljava/util/List;)V

    .line 9
    :goto_4b
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment$OnCategoryChanged;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment$OnCategoryChanged;->CategoryChanged()V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_81

    .line 11
    :cond_54
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_81

    .line 12
    :cond_58
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_ids:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_74

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->adapter:Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;->allChecked(Z)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_ids:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_81

    .line 15
    :cond_74
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->adapter:Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;->allChecked(Z)V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    :goto_81
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
    .registers 9

    const p3, 0x7f0e0060

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->initView(Landroid/view/View;)V

    .line 3
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 5
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->txt_header:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getSelect_categories_you_want_to_hide()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->btn_ok:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->btn_all:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getSelect_all()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->btn_cancel:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->id:I

    const/4 p3, 0x1

    if-eqz p2, :cond_c6

    const/4 v1, 0x3

    if-eq p2, p3, :cond_8d

    const/4 v2, 0x2

    if-eq p2, v2, :cond_53

    goto/16 :goto_10a

    .line 10
    :cond_53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->categoryModels:Ljava/util/ArrayList;

    .line 11
    iput v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_start_pos:I

    const/4 p2, 0x0

    .line 12
    :goto_5d
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSeriesCategoryModel()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_start_pos:I

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_83

    .line 13
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->categoryModels:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSeriesCategoryModel()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_start_pos:I

    add-int/2addr v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_5d

    .line 14
    :cond_83
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleSeriesCategories()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    goto/16 :goto_10a

    .line 15
    :cond_8d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->categoryModels:Ljava/util/ArrayList;

    .line 16
    iput v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_start_pos:I

    const/4 p2, 0x0

    .line 17
    :goto_97
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceVodCategory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_start_pos:I

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_bd

    .line 18
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->categoryModels:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceVodCategory()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_start_pos:I

    add-int/2addr v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_97

    .line 19
    :cond_bd
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleVodCategories()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    goto :goto_10a

    .line 20
    :cond_c6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->categoryModels:Ljava/util/ArrayList;

    .line 21
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, 0x5

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_start_pos:I

    const/4 p2, 0x0

    .line 22
    :goto_dc
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedLiveCategoryModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_start_pos:I

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_102

    .line 23
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->categoryModels:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedLiveCategoryModels()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_start_pos:I

    add-int/2addr v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_dc

    .line 24
    :cond_102
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleLiveCategories()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    .line 25
    :goto_10a
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->categoryModels:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_names:[Ljava/lang/String;

    .line 26
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->categoryModels:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_ids:[Ljava/lang/String;

    .line 27
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_names:[Ljava/lang/String;

    array-length p2, p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->checkedItems:[Z

    .line 28
    :goto_125
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->categoryModels:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_156

    .line 29
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->categoryModels:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/CategoryModel;

    .line 30
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_names:[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 31
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_ids:[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 32
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->checkedItems:[Z

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->selectedIds:Ljava/util/List;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    aput-boolean p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_125

    .line 33
    :cond_156
    new-instance p2, Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->category_names:[Ljava/lang/String;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->checkedItems:[Z

    new-instance v3, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda1;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[ZLkotlin/jvm/functions/Function2;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->adapter:Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

    .line 34
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 35
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 36
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->adapter:Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v4}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public setOnCategoryChangedListener(Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment$OnCategoryChanged;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment$OnCategoryChanged;

    return-void
.end method
