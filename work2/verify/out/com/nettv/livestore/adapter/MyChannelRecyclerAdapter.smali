.class public Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MyChannelRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private channelNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clickListenerFunction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public is_parent:Z


# direct methods
.method public static synthetic $r8$lambda$a9UadJXM2Iuu9bjg1k36c-iNEpU(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;ILandroid/view/View;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;ILandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$iI8cv0ZmCQH7KnY4CEq99gi9laQ(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;Ljava/lang/String;ILandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->lambda$onBindViewHolder$1(Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLkotlin/jvm/functions/Function3;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->channelNames:Ljava/util/List;

    .line 4
    iput-boolean p3, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->is_parent:Z

    .line 5
    iput-object p4, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;ILandroid/view/View;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->setBackground(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Ljava/lang/String;ILandroid/view/View;)V
    .registers 5

    iget-object p3, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBackground(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;IZ)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->getItemCount()I

    move-result v0

    if-lt p2, v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->channelNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->txt_num:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, p1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->txt_num:Landroid/widget/TextView;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_45

    .line 5
    iget-object p3, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v0, p2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x7f080193

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    iget-object p2, p1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->txt_name:Landroid/widget/TextView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 8
    iget-boolean p2, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->is_parent:Z

    if-nez p2, :cond_59

    .line 9
    iget-object p1, p1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->image_delete:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_59

    .line 10
    :cond_45
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x7f060085

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    iget-object p2, p1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    iget-object p1, p1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->image_delete:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_59
    :goto_59
    return-void
.end method

.method private setChannels(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_d

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->channelNames:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_14

    .line 3
    :cond_d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->channelNames:Ljava/util/List;

    .line 4
    :goto_14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->channelNames:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;I)V
    .registers 10
    .param p1    # Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;
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
    iget-object v0, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->channelNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelByName(Ljava/lang/String;)Lcom/nettv/livestore/models/EPGChannel;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->image_channel:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_icon()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->image_logo:Landroid/widget/ImageView;

    const v6, 0x7f080148

    invoke-static {v2, v3, v4, v6, v5}, Lcom/nettv/livestore/utils/ImageLoaderJava;->imageLoadUrlWithVodHolder(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 5
    iget-object v2, p1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->setBackground(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;IZ)V

    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;

    const v0, 0x7f0e0070

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;-><init>(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setChannelData(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->setChannels(Ljava/util/List;Z)V

    return-void
.end method
