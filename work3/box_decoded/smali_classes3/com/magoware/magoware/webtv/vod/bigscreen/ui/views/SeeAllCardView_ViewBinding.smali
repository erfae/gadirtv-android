.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView_ViewBinding;
.super Ljava/lang/Object;
.source "SeeAllCardView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;

    .line 29
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b050b

    const-string v2, "field \'mPosterIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mPosterIV:Landroid/widget/ImageView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b06eb

    const-string v2, "field \'mVoteAverageTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mVoteAverageTV:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0665

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mTitle:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0b0420

    const-string v2, "field \'movieInfoLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->movieInfoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0599

    const-string v2, "field \'seeMoreTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->seeMoreTextView:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b0528

    const-string v2, "field \'ratingLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->ratingLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;

    .line 44
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mPosterIV:Landroid/widget/ImageView;

    .line 45
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mVoteAverageTV:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->mTitle:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->movieInfoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->seeMoreTextView:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/SeeAllCardView;->ratingLayout:Landroid/widget/LinearLayout;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
