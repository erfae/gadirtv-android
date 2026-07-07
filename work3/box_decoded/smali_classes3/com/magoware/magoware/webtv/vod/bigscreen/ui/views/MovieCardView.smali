.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;
.super Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;
.source "MovieCardView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private isSeasonCard:Z

.field private isSeeMoreCard:Z

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

.field mVoteAverageTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b06eb
    .end annotation
.end field

.field movieInfoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0420
    .end annotation
.end field

.field ratingLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0528
    .end annotation
.end field

.field seeMoreTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0599
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeeMoreCard:Z

    .line 49
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeasonCard:Z

    .line 54
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->context:Landroid/content/Context;

    .line 55
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private customizeMTitle()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->getFontPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method private populateRatingStars(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rating"
        }
    .end annotation

    float-to-int v0, p1

    int-to-float v1, v0

    sub-float/2addr p1, v1

    .line 119
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 121
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x19

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-ge v1, v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803cd

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803cb

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    if-ne v1, v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803cc

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0601ff

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 132
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodCard"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isSeeMoreItem()Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeeMoreCard:Z

    .line 61
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isSeasonCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeasonCard:Z

    .line 62
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeeMoreCard:Z

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    goto :goto_2

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->customizeMTitle()V

    .line 81
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mVoteAverageTV:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVoteAverage()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "%.1f"

    invoke-static {v5, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 84
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 85
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mPosterIV:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_3

    .line 63
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mPosterIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->seeMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeasonCard:Z

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->seeMoreTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mPosterIV:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 70
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->context:Landroid/content/Context;

    const v7, 0x7f1403a3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " %d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getSeasonNumber()Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mTitle:Landroid/widget/TextView;

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x2

    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

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

    .line 28
    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    return-void
.end method

.method public getCardType()I
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;->getCardType()I

    move-result v0

    return v0
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0e005a

    return v0
.end method

.method public getPosterIV()Landroid/widget/ImageView;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mPosterIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method public refreshUi()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mPosterIV:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeeMoreCard:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->mTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeeMoreCard:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->ratingLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeeMoreCard:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeasonCard:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->seeMoreTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeeMoreCard:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->isSeasonCard:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v3, 0x8

    :cond_5
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
