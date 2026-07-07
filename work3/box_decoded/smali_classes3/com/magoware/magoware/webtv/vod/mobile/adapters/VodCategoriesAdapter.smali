.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VodCategoriesAdapter.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;",
        ">;",
        "Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemClickListener;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

.field private mMainCategoryId:I

.field private moviesCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;",
            ">;"
        }
    .end annotation
.end field

.field private vodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;

.field private vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;ILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vodListObjects",
            "mainCategoryId",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->moviesCategories:Ljava/util/ArrayList;

    .line 37
    iput p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->mMainCategoryId:I

    .line 38
    iput-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public OnVodItemClickListener(IILcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "verticalPosition",
            "horizontalPosition",
            "card"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->moviesCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 81
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isAdult()Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->intentVodDetail()V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;->OnVodItemAdultListener()V

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->moviesCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 75
    rem-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public intentVodDetail()V
    .locals 4

    .line 89
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 91
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    const-string v3, "vod_card"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$0$VodCategoriesAdapter(ILandroid/view/View;)V
    .locals 2

    .line 53
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->context:Landroid/content/Context;

    const-class v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->moviesCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getCarousel()Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    move-result-object p1

    const-string v0, "carousel"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    iget p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->mMainCategoryId:I

    const-string v0, "mainCategoryId"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 50
    iget-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;->movieType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->moviesCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getCarousel()Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;->seeAlltextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->context:Landroid/content/Context;

    const v2, 0x7f1403a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;->seeAlltextView:Landroid/widget/TextView;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$VodCategoriesAdapter$RHNh-X5JoI2DxMTJLcgrjUmXmLI;

    invoke-direct {v1, p0, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$VodCategoriesAdapter$RHNh-X5JoI2DxMTJLcgrjUmXmLI;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->moviesCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->vodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;

    .line 60
    iget-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;->horizontalRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->vodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->vodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;

    invoke-virtual {v0, p0, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->setOnItemClickListener(Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemClickListener;I)V

    .line 63
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 64
    iget-object p1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;->horizontalRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e01ff

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodItemAdultListener"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

    return-void
.end method
