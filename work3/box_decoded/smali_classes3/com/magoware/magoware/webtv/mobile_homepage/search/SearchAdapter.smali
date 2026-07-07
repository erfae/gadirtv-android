.class public Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchAdapter.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;,
        Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;,
        Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;"
    }
.end annotation


# static fields
.field public static VIEW_TYPE_PROGRAM:I = 0x0

.field public static VIEW_TYPE_TV_SHOW:I = 0x2

.field public static VIEW_TYPE_VOD:I = 0x1


# instance fields
.field private card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field private context:Landroid/content/Context;

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

.field private viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "arrayList",
            "viewType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->items:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 46
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->items:Ljava/util/ArrayList;

    .line 48
    iput p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->viewType:I

    return-void
.end method

.method private parseEpgEventsTime()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 53
    instance-of v2, v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    if-eqz v2, :cond_0

    .line 54
    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->parseTimeToDate(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->items:Ljava/util/ArrayList;

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

    .line 160
    iget p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->viewType:I

    return p1
.end method

.method public goLive(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgEvent"
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannelNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannelTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 179
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    const-class v1, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 182
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public intentVodDetail(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 195
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->viewType:I

    sget v2, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->VIEW_TYPE_VOD:I

    if-ne v1, v2, :cond_0

    const-string v1, "vod_id"

    .line 197
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "tv_show_id"

    .line 199
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 200
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$0$SearchAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->seeMovie(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$SearchAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->seeMovie(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$SearchAdapter(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Landroid/view/View;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->goLive(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$3$SearchAdapter(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;Landroid/view/View;)V
    .locals 2

    .line 136
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    const v1, 0x7f140396

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 137
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    const v0, 0x7f14045e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 77
    instance-of v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;

    const v1, 0x7f14047e

    const v2, 0x7f14027f

    const/16 v3, 0xc

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;

    .line 79
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 80
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->access$000(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v8, 0x7f14027b

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 81
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->access$000(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 82
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->access$000(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const-string v6, "#68D2F2"

    .line 83
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 84
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->access$100(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->access$200(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->access$300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 88
    new-instance v2, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v5, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v6, v5, v4

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v4, v3}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    aput-object v4, v5, v7

    invoke-direct {v2, v5}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 90
    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 91
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 93
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->access$400(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 94
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->access$500(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->access$500(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$yUHxzcieBhML5x61xPBNWIwKvL0;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$yUHxzcieBhML5x61xPBNWIwKvL0;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 96
    :cond_0
    instance-of v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;

    if-eqz v0, :cond_1

    .line 97
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;

    .line 98
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 99
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->access$600(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v8, 0x7f14027e

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 100
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->access$600(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 101
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->access$600(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const-string v6, "#F76565"

    .line 102
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 103
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->access$700(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->access$800(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 105
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->access$900(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 107
    new-instance v2, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v5, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v6, v5, v4

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v4, v3}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    aput-object v4, v5, v7

    invoke-direct {v2, v5}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 109
    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 110
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 112
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->access$1000(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 114
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->access$1100(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->access$1100(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$Otopqx91oa_iSeZzaICUM02dV8w;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$Otopqx91oa_iSeZzaICUM02dV8w;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 117
    :cond_1
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;

    .line 118
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v8

    cmp-long v2, v0, v8

    if-ltz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v8

    cmp-long v2, v0, v8

    if-gtz v2, :cond_2

    .line 121
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1200(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f14027a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1200(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 123
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1200(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#41EB95"

    .line 124
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 125
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    const v2, 0x7f1401d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$Wd6NH4qY45UHQzg1k1K-HSP8SPc;

    invoke-direct {v1, p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$Wd6NH4qY45UHQzg1k1K-HSP8SPc;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v8

    cmp-long v2, v0, v8

    if-gez v2, :cond_3

    .line 130
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1200(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1400e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1200(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 132
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1200(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#E5B54B"

    .line 133
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 134
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    const v2, 0x7f140396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$S17T6bBX3w5sjDuaIeGnQNp3glM;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$S17T6bBX3w5sjDuaIeGnQNp3glM;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 141
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v8

    cmp-long v2, v0, v8

    if-gez v2, :cond_4

    .line 142
    iget-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->itemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1400(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1500(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getFormatDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1600(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannelTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 148
    new-instance v1, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v2, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v5, v2, v4

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v4, v3}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    aput-object v4, v2, v7

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 150
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 151
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    const v1, 0x7f0803e8

    .line 152
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 153
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 154
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->access$1700(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
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

    .line 62
    sget v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->VIEW_TYPE_PROGRAM:I

    const/4 v1, 0x0

    const v2, 0x7f0e00d4

    if-ne p2, v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->parseEpgEventsTime()V

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    new-instance p2, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;Landroid/view/View;)V

    return-object p2

    .line 66
    :cond_0
    sget v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->VIEW_TYPE_VOD:I

    if-ne p2, v0, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;Landroid/view/View;)V

    return-object p2

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    return-void
.end method

.method public seeMovie(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isAdult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->intentVodDetail(Ljava/lang/Integer;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;->OnVodItemAdultListener()V

    :goto_0
    return-void
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

    .line 164
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

    return-void
.end method
