.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CAST_ID:Ljava/lang/String; = "castId"

.field public static final CAST_TITLE:Ljava/lang/String; = "castTitle"


# instance fields
.field private final casts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private movieTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->casts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->casts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$CastAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;Landroid/view/View;)V
    .locals 3

    .line 64
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;->getId()I

    move-result p1

    const-string v1, "castId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->movieTitle:Ljava/lang/String;

    const-string v1, "castTitle"

    .line 66
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 64
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    .line 27
    check-cast p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;I)V
    .locals 3
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

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->casts:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;

    .line 51
    iget-object v1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;->castName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->casts:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 54
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    const v1, 0x7f080355

    .line 55
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    .line 56
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    .line 58
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 59
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 60
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 63
    iget-object p1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance p2, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$CastAdapter$OgIuiZ6XTFLlJx_bK6Nt5cuoRY4;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$CastAdapter$OgIuiZ6XTFLlJx_bK6Nt5cuoRY4;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;)V

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
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

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;
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

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e005f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;

    invoke-direct {p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setMovieTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->movieTitle:Ljava/lang/String;

    return-void
.end method
