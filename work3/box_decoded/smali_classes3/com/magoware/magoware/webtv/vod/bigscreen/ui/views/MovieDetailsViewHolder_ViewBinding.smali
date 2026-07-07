.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "MovieDetailsViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;Landroid/view/View;)V
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0423

    const-string v2, "field \'movieTitleTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->movieTitleTV:Landroid/widget/TextView;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0424

    const-string v2, "field \'movieYearTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->movieYearTV:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b04cf

    const-string v2, "field \'movieOverview\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->movieOverview:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0556

    const-string v2, "field \'mRuntimeTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mRuntimeTV:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0557

    const-string v2, "field \'mRuntimeLabel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mRuntimeLabel:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b061c

    const-string v2, "field \'mTaglineTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mTaglineTV:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0209

    const-string v2, "field \'mDirectorTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mDirectorTv:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0141

    const-string v2, "field \'mCastTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mCastTv:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b04d0

    const-string v2, "field \'mOverviewLabelTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mOverviewLabelTV:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e1

    const-string v2, "field \'mGenresLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mGenresLayout:Landroid/widget/LinearLayout;

    .line 32
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b0528

    const-string v2, "field \'ratingLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->ratingLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;

    .line 42
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->movieTitleTV:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->movieYearTV:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->movieOverview:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mRuntimeTV:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mRuntimeLabel:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mTaglineTV:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mDirectorTv:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mCastTv:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mOverviewLabelTV:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->mGenresLayout:Landroid/widget/LinearLayout;

    .line 52
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->ratingLayout:Landroid/widget/LinearLayout;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
