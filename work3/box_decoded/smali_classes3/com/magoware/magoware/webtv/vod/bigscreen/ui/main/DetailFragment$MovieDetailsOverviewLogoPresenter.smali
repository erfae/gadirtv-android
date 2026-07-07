.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter;
.super Landroidx/leanback/widget/DetailsOverviewLogoPresenter;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MovieDetailsOverviewLogoPresenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter$ViewHolder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 705
    invoke-direct {p0}, Landroidx/leanback/widget/DetailsOverviewLogoPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2
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

    .line 723
    check-cast p2, Landroidx/leanback/widget/DetailsOverviewRow;

    .line 724
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 725
    invoke-virtual {p2}, Landroidx/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 726
    check-cast p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter;->isBoundToImage(Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroidx/leanback/widget/DetailsOverviewRow;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 728
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter$ViewHolder;->getParentPresenter()Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter$ViewHolder;->getParentViewHolder()Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->notifyOnBindLogo(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    :cond_0
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

    .line 709
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00f1

    const/4 v2, 0x0

    .line 710
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 712
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070414

    .line 713
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070413

    .line 714
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 715
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    new-instance p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter$ViewHolder;

    invoke-direct {p1, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
