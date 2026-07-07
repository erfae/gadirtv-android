.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "MovieDetailsViewHolder.java"


# instance fields
.field private itemView:Landroid/view/View;

.field mCastTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0141
    .end annotation
.end field

.field mDirectorTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0209
    .end annotation
.end field

.field mGenresLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b02e1
    .end annotation
.end field

.field mOverviewLabelTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b04d0
    .end annotation
.end field

.field mRuntimeLabel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0557
    .end annotation
.end field

.field mRuntimeTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0556
    .end annotation
.end field

.field mTaglineTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b061c
    .end annotation
.end field

.field movieOverview:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b04cf
    .end annotation
.end field

.field movieTitleTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0423
    .end annotation
.end field

.field movieYearTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0424
    .end annotation
.end field

.field ratingLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0528
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 61
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->itemView:Landroid/view/View;

    return-void
.end method

.method private populateRatingStars(F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rating"
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    .line 96
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 98
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x19

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-ge v2, v1, :cond_0

    const v4, 0x7f0803cd

    .line 101
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    const v4, 0x7f0803cb

    .line 103
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    if-ne v2, v1, :cond_1

    const v4, 0x7f0803cc

    .line 106
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v4, 0x7f0601ff

    .line 108
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 109
    iget-object v4, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movie"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mRuntimeTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getRunTimeOfMovie()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->movieTitleTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->movieYearTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->movieOverview:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getOverview()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getDirector()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mDirectorTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getDirector()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getCast()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mCastTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getCast()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_2
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mRuntimeTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mRuntimeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVoteAverage()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->populateRatingStars(F)V

    :cond_4
    return-void
.end method
