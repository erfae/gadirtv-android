.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter$ViewHolder;
.super Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


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

    .line 734
    invoke-direct {p0, p1}, Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getParentPresenter()Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter$ViewHolder;->mParentPresenter:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    return-object v0
.end method

.method public getParentViewHolder()Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter$ViewHolder;->mParentViewHolder:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    return-object v0
.end method
