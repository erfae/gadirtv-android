.class public Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerLiveChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public clickFunctionListener:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public epgChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation
.end field

.field public selected_pos:I


# direct methods
.method public static synthetic $r8$lambda$iG_D0HyJMRLO3L7OdrEDOyPlUVY(Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;Lcom/nettv/livestore/models/EPGChannel;ILandroid/view/View;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;Lcom/nettv/livestore/models/EPGChannel;ILandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jQyQaswVEtbQnBWegif7Luevs8w(Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;Lcom/nettv/livestore/models/EPGChannel;ILandroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->lambda$onBindViewHolder$2(Lcom/nettv/livestore/models/EPGChannel;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kYUiUv2rXH0z4_0bXu_O0y11Ntw(Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;ILcom/nettv/livestore/models/EPGChannel;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->lambda$onBindViewHolder$0(ILcom/nettv/livestore/models/EPGChannel;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function4;)V
    .registers 5
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;I",
            "Lkotlin/jvm/functions/Function4<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->epgChannels:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->selected_pos:I

    .line 5
    iput-object p4, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/nettv/livestore/models/EPGChannel;Landroid/view/View;)V
    .registers 6

    .line 1
    iget p3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->selected_pos:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->selected_pos:I

    .line 3
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget p3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->selected_pos:I

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function4;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, p1, v0, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;Lcom/nettv/livestore/models/EPGChannel;ILandroid/view/View;Z)V
    .registers 6

    if-eqz p5, :cond_16

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p4, 0x7f080193

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function4;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p3, p4, p4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 3
    :cond_16
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f060085

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1e
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/nettv/livestore/models/EPGChannel;ILandroid/view/View;)Z
    .registers 6

    iget-object p3, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function4;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->epgChannels:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
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
    check-cast p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;I)V
    .registers 12
    .param p1    # Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;
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
    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->epgChannels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getNum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2d

    .line 6
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_fav:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_32

    .line 7
    :cond_2d
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_fav:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :goto_32
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 9
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_lock:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_43

    .line 10
    :cond_3e
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_lock:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :goto_43
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getTv_archive()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 12
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_catch:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5a

    .line 13
    :cond_55
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_catch:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :goto_5a
    iget-object v1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_channel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getStream_icon()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801f8

    iget-object v5, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_logo:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/nettv/livestore/utils/ImageLoaderJava;->imageLoadUrlWithVodHolder(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 15
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/16 v3, 0xc

    invoke-direct {v2, p0, p2, v0, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;ILjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v6, 0x6

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 17
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, p2, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 18
    iget v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->selected_pos:I

    if-ne v0, p2, :cond_a0

    .line 19
    iget-object p1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0602f8

    .line 20
    invoke-static {p2, v0, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    goto :goto_aa

    .line 21
    :cond_a0
    iget-object p1, p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0602f7

    .line 22
    invoke-static {p2, v0, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    :goto_aa
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;

    const v0, 0x7f0e007c

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setSelectedPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->selected_pos:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateData(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->epgChannels:Ljava/util/List;

    .line 2
    iput p2, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->selected_pos:I

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
