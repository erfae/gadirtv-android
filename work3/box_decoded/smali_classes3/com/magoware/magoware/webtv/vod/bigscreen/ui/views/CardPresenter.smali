.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "CardPresenter.java"


# instance fields
.field private mDefaultBackgroundColor:I

.field private mDefaultCardImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;->mDefaultBackgroundColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;Landroidx/leanback/widget/ImageCardView;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;->updateCardBackgroundColor(Landroidx/leanback/widget/ImageCardView;Z)V

    return-void
.end method

.method private updateCardBackgroundColor(Landroidx/leanback/widget/ImageCardView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "selected"
        }
    .end annotation

    .line 47
    iget p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;->mDefaultBackgroundColor:I

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ImageCardView;->setBackgroundColor(I)V

    const p2, 0x7f0b0356

    .line 48
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;->mDefaultBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "item"
        }
    .end annotation

    .line 53
    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 55
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroidx/leanback/widget/ImageCardView;

    .line 56
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getOverview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setContentText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v0}, Landroidx/leanback/widget/ImageCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702c4

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0702c3

    .line 62
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 63
    invoke-virtual {v0, v2, v1}, Landroidx/leanback/widget/ImageCardView;->setMainImageDimensions(II)V

    .line 65
    invoke-virtual {v0}, Landroidx/leanback/widget/ImageCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 66
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-static {v2}, Lcom/bumptech/glide/request/RequestOptions;->errorOf(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {v0}, Landroidx/leanback/widget/ImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object p2

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->FILM:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {p2, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 72
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080088

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080089

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0x7d

    const/4 v1, 0x0

    const/16 v2, 0xaa

    const/16 v3, 0x32

    .line 73
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    invoke-virtual {v0}, Landroidx/leanback/widget/ImageCardView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroupOverlay;->clear()V

    .line 75
    invoke-virtual {v0}, Landroidx/leanback/widget/ImageCardView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600ac

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;->mDefaultBackgroundColor:I

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 32
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter$1;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ImageCardView;->setFocusable(Z)V

    .line 41
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ImageCardView;->setFocusableInTouchMode(Z)V

    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;->updateCardBackgroundColor(Landroidx/leanback/widget/ImageCardView;Z)V

    .line 43
    new-instance p1, Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-direct {p1, v0}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewHolder"
        }
    .end annotation

    .line 80
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast p1, Landroidx/leanback/widget/ImageCardView;

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ImageCardView;->setBadgeImage(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ImageCardView;->setMainImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
