.class public Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EpisodeHorizontalRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public clickFunctionListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;"
        }
    .end annotation
.end field

.field public season_pos:I

.field public selected_pos:I


# direct methods
.method public static synthetic $r8$lambda$5SmOeYMWHH0JnpAnGs90bZijYJ0(Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;Lcom/nettv/livestore/models/EpisodeModel;ILcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;Landroid/view/View;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->lambda$onBindViewHolder$1(Lcom/nettv/livestore/models/EpisodeModel;ILcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZBlwiOeQ51uGOzRPCiKie9sK7Y(Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;Lcom/nettv/livestore/models/EpisodeModel;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/EpisodeModel;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;I",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->models:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->selected_pos:I

    .line 5
    iput-object p4, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/EpisodeModel;ILandroid/view/View;)V
    .locals 1

    iget-object p3, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/nettv/livestore/models/EpisodeModel;ILcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;Landroid/view/View;Z)V
    .locals 0

    if-eqz p5, :cond_0

    .line 1
    iget-object p4, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1, p2, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f08015a

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f080159

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->models:Ljava/util/List;

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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;I)V
    .locals 9
    .param p1    # Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->models:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/nettv/livestore/models/EpisodeModel;

    .line 3
    iget-object v0, p1, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;->txt_name:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->season_pos:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v1, v7

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "S%d .E%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/nettv/livestore/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v3}, Lcom/nettv/livestore/models/EpisodeModel;->getInfo()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v3}, Lcom/nettv/livestore/models/EpisodeModel;->getInfo()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->getMovie_image()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v3}, Lcom/nettv/livestore/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;->image_episode:Lcom/makeramen/roundedimageview/RoundedImageView;

    const v4, 0x7f0800b3

    iget-object v5, p1, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;->image_logo:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v1, v2, v0, v4, v5}, Lcom/nettv/livestore/utils/ImageLoaderJava;->imageLoadUrlWithVodHolder(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v3, p2, v2}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    move-object v1, v8

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 13
    iget v0, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->selected_pos:I

    if-ne v0, p2, :cond_2

    .line 14
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 15
    iget-object p1, p1, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;->image_play:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p1, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;->image_play:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;

    const v0, 0x7f0e0076

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;-><init>(Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setEpisodes(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->models:Ljava/util/List;

    .line 2
    iput p2, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->season_pos:I

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->selected_pos:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->selected_pos:I

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget p1, p0, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->selected_pos:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
