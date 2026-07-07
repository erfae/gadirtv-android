.class public Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SearchVodActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;

    .line 29
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0b06e8

    const-string v2, "field \'vod_search_toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->vod_search_toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 30
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0b0512

    const-string v2, "field \'progress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->progress:Landroid/widget/ProgressBar;

    .line 31
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0b057f

    const-string v2, "field \'searchResults\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    const-class v0, Lcom/magoware/magoware/webtv/custom_views/MagoTextView;

    const v1, 0x7f0b04b8

    const-string v2, "field \'noResultsTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/custom_views/MagoTextView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->noResultsTextView:Lcom/magoware/magoware/webtv/custom_views/MagoTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;

    .line 42
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->vod_search_toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 43
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->progress:Landroid/widget/ProgressBar;

    .line 44
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->noResultsTextView:Lcom/magoware/magoware/webtv/custom_views/MagoTextView;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
