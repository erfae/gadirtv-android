.class public Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field allHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private channelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;"
        }
    .end annotation
.end field

.field private endlessScroll:Z

.field private mContext:Landroid/content/Context;

.field private selected_position:I

.field private temporary_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "channelList",
            "endlessScroll",
            "temporary_id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;ZI)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->selected_position:I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->endlessScroll:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->allHolders:Ljava/util/ArrayList;

    .line 41
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->channelList:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-boolean p3, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->endlessScroll:Z

    .line 44
    iput p4, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->temporary_id:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->endlessScroll:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->channelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->selected_position:I

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$ChannelAdapter(ILandroid/view/View;)V
    .locals 2

    .line 76
    iput p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->selected_position:I

    .line 77
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p2

    new-instance v0, Lcom/magoware/magoware/webtv/players/exoplayer/ChannelClickEvent;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->temporary_id:I

    invoke-direct {v0, p1, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ChannelClickEvent;-><init>(II)V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->endlessScroll:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->channelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->channelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 62
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 63
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    const v2, 0x7f080347

    .line 64
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 66
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 69
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->access$000(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 71
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->access$100(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->access$202(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->allHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->access$300(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/-$$Lambda$ChannelAdapter$zybM6CPSWCU0VfaVgQRqcRZi7B0;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/-$$Lambda$ChannelAdapter$zybM6CPSWCU0VfaVgQRqcRZi7B0;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;I)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;
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

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0068

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    new-instance p2, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setFocusOnPosition(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->allHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;

    .line 96
    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->access$200(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;)Ljava/lang/String;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 97
    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->access$400(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 91
    iput p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->selected_position:I

    return-void
.end method
