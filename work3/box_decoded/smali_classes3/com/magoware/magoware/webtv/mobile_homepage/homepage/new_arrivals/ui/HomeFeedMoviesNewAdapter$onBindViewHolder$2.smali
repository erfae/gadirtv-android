.class final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$onBindViewHolder$2;
.super Ljava/lang/Object;
.source "HomeFeedMoviesNewAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $holder:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$ViewHolder;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;ILcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$onBindViewHolder$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;

    iput p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$onBindViewHolder$2;->$position:I

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$onBindViewHolder$2;->$holder:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 34
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$onBindViewHolder$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;->getListener()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;->showLoginDialog()V

    goto :goto_1

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$onBindViewHolder$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$onBindViewHolder$2;->$position:I

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;->access$getItem(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;I)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;->getWatched()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;->setWatched(I)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;->setWatched(I)V

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$onBindViewHolder$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;->getViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;->getWatched()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;->setVodFavorite(IILcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;)V

    .line 42
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$onBindViewHolder$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$onBindViewHolder$2;->$holder:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "channel"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;->access$updateFavoriteList(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;Landroid/view/View;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;)V

    :goto_1
    return-void
.end method
