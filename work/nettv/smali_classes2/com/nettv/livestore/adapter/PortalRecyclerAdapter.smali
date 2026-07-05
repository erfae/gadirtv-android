.class public Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PortalRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$AddViewHolder;,
        Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/AppInfoModel$UrlModel;",
            ">;"
        }
    .end annotation
.end field

.field public clickeListenerFunction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/AppInfoModel$UrlModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public playlist_position:I

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$-bB2LM11-bz4KeNidzRT4EAd95Y(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->lambda$onBindViewHolder$3(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7TWHPtz6gXbaGbhRtgF8pz-x-Oo(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ROdGcrKyJY78_M_biKHRhv40pm0(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->lambda$onBindViewHolder$1(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$b3K1kfomyAYnq-utYxAeG1rRjT4(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->lambda$onBindViewHolder$2(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;ILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/AppInfoModel$UrlModel;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/AppInfoModel$UrlModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->playlist_position:I

    .line 3
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->channels:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->clickeListenerFunction:Lkotlin/jvm/functions/Function3;

    .line 6
    iput p3, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->playlist_position:I

    .line 7
    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->clickeListenerFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p2, v1, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Z)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    iget-object p3, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->clickeListenerFunction:Lkotlin/jvm/functions/Function3;

    const/4 p4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p4, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 3
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x3f666666    # 0.9f

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 5
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(ILandroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->clickeListenerFunction:Lkotlin/jvm/functions/Function3;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0, p1, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Z)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    iget-object p3, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->clickeListenerFunction:Lkotlin/jvm/functions/Function3;

    const/4 p4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p4, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 3
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x3f666666    # 0.9f

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 5
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->channels:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;

    .line 3
    iget-object v3, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->channels:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getIs_protected()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, v0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;->txt_url:Landroid/widget/TextView;

    const-string v4, "Protected"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;->txt_url:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->channels:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v4, "https://*****.***"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object v3, v0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;->txt_name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->channels:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget v3, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->playlist_position:I

    if-ne v3, p2, :cond_2

    .line 8
    iget-object v3, v0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;->txt_connected:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, v0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;->txt_connected:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v2}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_2

    .line 12
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$AddViewHolder;

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$AddViewHolder;

    const v1, 0x7f0e0104

    .line 2
    invoke-static {p1, v1, p1, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$AddViewHolder;-><init>(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;Landroid/view/View;)V

    return-object p2

    .line 4
    :cond_0
    new-instance p2, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;

    const v1, 0x7f0e0103

    .line 5
    invoke-static {p1, v1, p1, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;-><init>(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/AppInfoModel$UrlModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->channels:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
