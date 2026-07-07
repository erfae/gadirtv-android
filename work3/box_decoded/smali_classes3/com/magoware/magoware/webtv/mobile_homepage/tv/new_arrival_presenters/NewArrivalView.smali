.class public Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;
.super Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;
.source "NewArrivalView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field imageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b046e
    .end annotation
.end field

.field listText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b046f
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0470
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->context:Landroid/content/Context;

    .line 32
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private getTitle(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->title:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->getTitle(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isWatched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->listText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->listText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    :goto_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07015b

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 47
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 48
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 49
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->imageView:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method protected bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .line 17
    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    return-void
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0e0053

    return v0
.end method
