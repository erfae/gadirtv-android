.class public Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;
.super Landroidx/fragment/app/Fragment;
.source "VodFragment.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private VodCategories:Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

.field private allMovies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;",
            ">;"
        }
    .end annotation
.end field

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b06e4
    .end annotation
.end field

.field private vodCategoriesAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getCategories()V
    .locals 6

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 87
    :goto_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->VodCategories:Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getCarouselList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->VodCategories:Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getCarouselList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->isAvailable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->VodCategories:Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getCarouselList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    .line 95
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodCategoriesObservable(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$VodFragment$D-K8EwAd-ljXrBMm43E78bSD9Lo;

    invoke-direct {v4, p0, v2, v0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$VodFragment$D-K8EwAd-ljXrBMm43E78bSD9Lo;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;Ljava/util/List;)V

    invoke-virtual {v3, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$showVodCategories$1(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;)I
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getCarousel()Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->getOrder()I

    move-result p0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getCarousel()Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->getOrder()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private showVodCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carouselList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->allMovies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->allMovies:Ljava/util/ArrayList;

    sget-object v0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$VodFragment$uq5Y2Oe6EXunVuVrQ2kSJH2Cc9w;->INSTANCE:Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$VodFragment$uq5Y2Oe6EXunVuVrQ2kSJH2Cc9w;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->vodCategoriesAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public OnVodItemAdultListener()V
    .locals 3

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$getCategories$0$VodFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;Ljava/util/List;Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 96
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->getResponse_object()Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object p3, p3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    .line 98
    invoke-virtual {p3, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->setCategory(Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;)V

    .line 99
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->allMovies:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    :goto_0
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->showVodCategories(Ljava/util/List;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->vodCategoriesAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->intentVodDetail()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e0200

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 51
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p2

    const-class p3, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 54
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "vodItemList"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->VodCategories:Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->allMovies:Ljava/util/ArrayList;

    .line 57
    new-instance p3, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->VodCategories:Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p3, p2, v1, v2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;-><init>(Ljava/util/ArrayList;ILandroid/content/Context;)V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->vodCategoriesAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;

    .line 58
    invoke-virtual {p3, p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->setOnItemClickListener(Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;)V

    .line 59
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->vodCategoriesAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const/4 v1, 0x1

    invoke-direct {p2, p3, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 62
    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->getCategories()V

    return-object p1
.end method
