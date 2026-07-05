.class public Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LiveSearchDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;
    }
.end annotation


# instance fields
.field public categoryModel:Lcom/nettv/livestore/models/CategoryModel;

.field public category_pos:I

.field public context:Landroid/content/Context;

.field public et_search:Landroid/widget/EditText;

.field public focus_channel_pos:I

.field public is_m3u:Z

.field public listener:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;

.field public lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public recycler_channels:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public searchChannels:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation
.end field

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$C4ws7twm2-vXC23wFfyjAfSsZys(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->lambda$searchLiveChannels$1(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ffNZaSrPm0i8dsOSHGN89NFxxHg(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->lambda$onCreateView$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->category_pos:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->focus_channel_pos:I

    .line 3
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->searchLiveChannels(Ljava/lang/String;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0b012d

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->et_search:Landroid/widget/EditText;

    const v0, 0x7f0b02ec

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->recycler_channels:Lcom/nettv/livestore/view/LiveVerticalGridView;

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->recycler_channels:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->recycler_channels:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->recycler_channels:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array p1, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->recycler_channels:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v1, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$3;

    invoke-direct {v1, p1}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$3;-><init>([Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_4d

    .line 8
    :cond_3f
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->recycler_channels:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_4d
    return-void
.end method

.method private isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p1, "adult"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "xxx"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "porn"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    return p1

    .line 3
    :cond_25
    sget-object p2, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_3f

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x13

    const/4 v0, 0x1

    if-eq p1, p3, :cond_28

    const/16 p3, 0x14

    if-eq p1, p3, :cond_15

    goto :goto_3f

    .line 3
    :cond_15
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->recycler_channels:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v0

    .line 6
    :cond_28
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->recycler_channels:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_3f

    iget p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->focus_channel_pos:I

    if-nez p1, :cond_3f

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v0

    :cond_3f
    :goto_3f
    return p2
.end method

.method private synthetic lambda$searchLiveChannels$1(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->focus_channel_pos:I

    .line 2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 3
    iget p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->category_pos:I

    const/4 p3, 0x4

    if-eq p2, p3, :cond_17

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p2

    if-nez p2, :cond_2a

    :cond_17
    iget p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->category_pos:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2e

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 4
    :cond_2a
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->showLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;)V

    goto :goto_36

    .line 5
    :cond_2e
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;

    invoke-interface {p2, p1}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;->onSelectCurrentChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_36
    :goto_36
    const/4 p1, 0x0

    return-object p1
.end method

.method public static newInstance(Landroid/content/Context;Lcom/nettv/livestore/models/CategoryModel;IZ)Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;
    .registers 5

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->context:Landroid/content/Context;

    .line 3
    iput-object p1, v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->categoryModel:Lcom/nettv/livestore/models/CategoryModel;

    .line 4
    iput-boolean p3, v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->is_m3u:Z

    .line 5
    iput p2, v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->category_pos:I

    return-object v0
.end method

.method private searchLiveChannels(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->category_pos:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-le v0, v2, :cond_3f

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_3f

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4e

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->category_pos:I

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->searchChannels:Lio/realm/RealmResults;

    goto :goto_4e

    .line 6
    :cond_3f
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->categoryModel:Lcom/nettv/livestore/models/CategoryModel;

    iget-boolean v3, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->is_m3u:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->searchChannels:Lio/realm/RealmResults;

    .line 7
    :cond_4e
    :goto_4e
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->searchChannels:Lio/realm/RealmResults;

    const/4 v3, -0x1

    new-instance v4, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v1}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0, v2, v3, v4}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function4;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->recycler_channels:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private showLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_channel_lock"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$2;

    invoke-direct {v3, p0, p1}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$2;-><init>(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;Lcom/nettv/livestore/models/EPGChannel;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

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
    .registers 5

    const p3, 0x7f0e006a

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 3
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 4
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->initView(Landroid/view/View;)V

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->et_search:Landroid/widget/EditText;

    new-instance p3, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$1;

    invoke-direct {p3, p0}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$1;-><init>(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string p2, ""

    .line 6
    invoke-direct {p0, p2}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->searchLiveChannels(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 8
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->et_search:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 9
    :cond_38
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->recycler_channels:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public setSelectCurrentChannelListener(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;

    return-void
.end method
