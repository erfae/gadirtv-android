.class public Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AddChannelRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public checks:[Z

.field private clickListenerFunction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            "Ljava/lang/Integer;",
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


# direct methods
.method public static synthetic $r8$lambda$3SXFZlUJW_e41coZqH9gfYb4pwQ(Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;ILcom/nettv/livestore/models/EPGChannel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->lambda$onBindViewHolder$1(ILcom/nettv/livestore/models/EPGChannel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$94vkamJMJcfzaP75Ziwbyh17dYs(Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;ILandroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;ILandroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;[ZLkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;[Z",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->epgChannels:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function3;

    .line 5
    iput-object p3, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->checks:[Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;ILandroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->setBackground(Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILcom/nettv/livestore/models/EPGChannel;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->toggleChecked(I)V

    .line 2
    iget-object p3, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->checks:[Z

    aget-boolean p1, v1, p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p2, v0, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBackground(Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->getItemCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x7f080193

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    iget-object p1, p1, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;->txt_name:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x7f060085

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    iget-object p1, p1, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;->txt_name:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->epgChannels:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;I)V
    .locals 6
    .param p1    # Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;
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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->epgChannels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;->image_round:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->checks:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p1, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;->image_check:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;->image_check:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;->image_channel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getStream_icon()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080148

    iget-object v5, p1, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;->image_logo:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/nettv/livestore/utils/ImageLoaderJava;->imageLoadUrlWithVodHolder(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 8
    iget-object v1, p1, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 10
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->setBackground(Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;IZ)V

    .line 11
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;ILjava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;

    const v0, 0x7f0e0070

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;-><init>(Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setChannelData(Ljava/util/List;[Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;[Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->epgChannels:Ljava/util/List;

    .line 2
    iput-object p2, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->checks:[Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFocusDisable(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public toggleChecked(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->checks:[Z

    aget-boolean v1, v0, p1

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, v0, p1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
