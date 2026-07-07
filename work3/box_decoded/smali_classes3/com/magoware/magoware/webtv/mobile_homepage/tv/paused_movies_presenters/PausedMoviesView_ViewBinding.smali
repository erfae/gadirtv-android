.class public Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView_ViewBinding;
.super Ljava/lang/Object;
.source "PausedMoviesView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;)V
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
    invoke-direct {p0, p1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;

    .line 28
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0b04e9

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;->progressBar:Landroid/widget/ProgressBar;

    .line 29
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b04e8

    const-string v2, "field \'imageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;->imageView:Landroid/widget/ImageView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b04ea

    const-string v2, "field \'title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;->title:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b04e7

    const-string v2, "field \'pausedImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;->pausedImage:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;

    .line 41
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;->progressBar:Landroid/widget/ProgressBar;

    .line 42
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;->imageView:Landroid/widget/ImageView;

    .line 43
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;->title:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesView;->pausedImage:Landroid/widget/ImageView;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
