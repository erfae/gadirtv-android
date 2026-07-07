.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView_ViewBinding;
.super Ljava/lang/Object;
.source "TvShowEpisodeCardView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;Landroid/view/View;)V
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;

    .line 28
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b0249

    const-string v2, "field \'episodeImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;->episodeImage:Landroid/widget/ImageView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b024c

    const-string v2, "field \'episodeTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;->episodeTitle:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b024a

    const-string v2, "field \'episodeOverview\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;->episodeOverview:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0b024b

    const-string v2, "field \'episodeProgress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;->episodeProgress:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;

    .line 41
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;->episodeImage:Landroid/widget/ImageView;

    .line 42
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;->episodeTitle:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;->episodeOverview:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodeCardView;->episodeProgress:Landroid/widget/ProgressBar;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
