.class public Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerLiveCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public categoryModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public clickFunctionListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public epgChannels:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation
.end field

.field public is_first:Z

.field public is_grid:Z

.field public is_m3u:Z

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public selected_position:I


# direct methods
.method public static synthetic $r8$lambda$u8PcPq-546Bz-Rtl_Jh5Yuwlw3Q(Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;ILcom/nettv/livestore/models/CategoryModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->lambda$onBindViewHolder$1(ILcom/nettv/livestore/models/CategoryModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xkU02pAH-1OpaSqeaxatSPhf_Ts(Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;Lcom/nettv/livestore/models/CategoryModel;ILandroid/view/View;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;Lcom/nettv/livestore/models/CategoryModel;ILandroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZZILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;ZZI",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->is_first:Z

    .line 3
    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->categoryModels:Ljava/util/List;

    .line 5
    iput-object p6, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    .line 6
    iput-boolean p3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->is_m3u:Z

    .line 7
    iput p5, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->selected_position:I

    .line 8
    iput-boolean p4, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->is_grid:Z

    .line 9
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p2, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;Lcom/nettv/livestore/models/CategoryModel;ILandroid/view/View;Z)V
    .locals 1

    const/4 p4, 0x0

    if-eqz p5, :cond_2

    .line 1
    iget-boolean p5, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->is_grid:Z

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    .line 2
    iget-object p4, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object p4, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p2, p3, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f080157

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean p5, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->is_first:Z

    if-eqz p5, :cond_1

    .line 6
    iput-boolean p4, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->is_first:Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object p4, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 8
    iget-object p4, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p2, p3, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f080193

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-boolean p2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->is_grid:Z

    if-eqz p2, :cond_3

    .line 11
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x7f080156

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x7f060085

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 13
    :goto_0
    iget-object p1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILcom/nettv/livestore/models/CategoryModel;Landroid/view/View;)V
    .locals 1

    .line 1
    iget p3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->selected_position:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->selected_position:I

    .line 3
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget p3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->selected_position:I

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->categoryModels:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;I)V
    .locals 9
    .param p1    # Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->categoryModels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x4

    if-le p2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    if-ge p2, v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4, v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object v2

    iput-object v2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->epgChannels:Lio/realm/RealmResults;

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v3

    iget-boolean v4, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->is_m3u:Z

    invoke-virtual {v3, v0, v2, v4, v1}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v2

    iput-object v2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->epgChannels:Lio/realm/RealmResults;

    .line 10
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->is_grid:Z

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v4}, Lio/realm/RealmResults;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " channels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v2, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v3}, Lio/realm/RealmResults;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-nez p2, :cond_3

    .line 13
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object v2, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :goto_2
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v6, 0x5

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 16
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/16 v3, 0xb

    invoke-direct {v2, p0, p2, v0, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;ILjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->selected_position:I

    if-ne v0, p2, :cond_4

    if-eqz p2, :cond_4

    .line 18
    iget-object p2, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0602f8

    .line 19
    invoke-static {v0, v1, p2}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 20
    iget-object p1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->context:Landroid/content/Context;

    .line 21
    invoke-static {p2, v1, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    goto :goto_3

    .line 22
    :cond_4
    iget-object p2, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0602f7

    .line 23
    invoke-static {v0, v1, p2}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 24
    iget-object p1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->context:Landroid/content/Context;

    .line 25
    invoke-static {p2, v1, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-boolean p2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->is_grid:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;

    const v1, 0x7f0e007b

    .line 4
    invoke-static {p1, v1, p1, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;-><init>(Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;Landroid/view/View;)V

    return-object p2

    .line 6
    :cond_0
    new-instance p2, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;

    const v1, 0x7f0e007a

    .line 7
    invoke-static {p1, v1, p1, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;-><init>(Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setCategoryModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->categoryModels:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCategoryPosition(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->selected_position:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->selected_position:I

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget p1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->selected_position:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
