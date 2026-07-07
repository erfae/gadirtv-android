.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/AssetsCardView;
.super Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;
.source "AssetsCardView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
        ">;"
    }
.end annotation


# instance fields
.field asset_price:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b00ce
    .end annotation
.end field

.field mPosterIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b050b
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0665
    .end annotation
.end field

.field movieInfoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0420
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

    .line 37
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method protected bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodCard"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/AssetsCardView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/AssetsCardView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getIcon()Ljava/lang/String;

    move-result-object p1

    .line 51
    :goto_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/AssetsCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 53
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/AssetsCardView;->mPosterIV:Landroid/widget/ImageView;

    .line 54
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
            "vodCard"
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/AssetsCardView;->bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    return-void
.end method

.method public getCardType()I
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;->getCardType()I

    move-result v0

    return v0
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0e004e

    return v0
.end method

.method public getPosterIV()Landroid/widget/ImageView;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/AssetsCardView;->mPosterIV:Landroid/widget/ImageView;

    return-object v0
.end method
