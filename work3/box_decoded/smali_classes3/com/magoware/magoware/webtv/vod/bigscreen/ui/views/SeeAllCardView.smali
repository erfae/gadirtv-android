.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;
.super Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;
.source "SeeAllCardView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
        ">;"
    }
.end annotation


# instance fields
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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->isSeeMoreCard:Z

    .line 42
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->isSeasonCard:Z

    .line 46
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
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

    .line 103
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 105
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x19

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-ge v1, v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803cd

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->getContext()Landroid/content/Context;

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

    .line 113
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803cc

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0601ff

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 116
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->ratingLayout:Landroid/widget/LinearLayout;

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
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodCard"
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isSeeMoreItem()Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->isSeeMoreCard:Z

    .line 52
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isSeasonCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->isSeasonCard:Z

    .line 53
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->isSeeMoreCard:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    goto :goto_2

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mVoteAverageTV:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVoteAverage()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v3, "%.1f"

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 70
    invoke-static {v2}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheOf(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mPosterIV:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 73
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVoteAverage()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->populateRatingStars(F)V

    goto :goto_3

    .line 54
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mPosterIV:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->seeMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->isSeasonCard:Z

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->seeMoreTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 58
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->seeMoreTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getSeasonNumber()Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Season \n%d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
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

    .line 21
    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    return-void
.end method

.method public getCardType()I
    .locals 1

    .line 86
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

    .line 90
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mPosterIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method public refreshUi()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mPosterIV:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->isSeeMoreCard:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->isSeeMoreCard:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->ratingLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->isSeeMoreCard:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->seeMoreTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->isSeeMoreCard:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
