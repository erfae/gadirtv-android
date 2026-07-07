.class public Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView_ViewBinding;
.super Ljava/lang/Object;
.source "MovieDynamicView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView;Landroid/view/View;)V
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView;

    .line 26
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b050b

    const-string v2, "field \'poster\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView;->poster:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView;

    .line 36
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MovieDynamicView;->poster:Landroid/widget/ImageView;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
