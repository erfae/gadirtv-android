.class final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter$createOnClickListener$1;
.super Ljava/lang/Object;
.source "HomeFeedMoviesPausedAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;->createOnClickListener(II)Landroid/view/View$OnClickListener;
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
.field final synthetic $id:I

.field final synthetic $movie_position:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;II)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter$createOnClickListener$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;

    iput p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter$createOnClickListener$1;->$id:I

    iput p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter$createOnClickListener$1;->$movie_position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter$createOnClickListener$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;->getMovieListener()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/MoviePausedListener;

    move-result-object p1

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter$createOnClickListener$1;->$id:I

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter$createOnClickListener$1;->$movie_position:I

    invoke-interface {p1, v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/MoviePausedListener;->moviePaused(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter$createOnClickListener$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;->getListener()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;->showLoginDialog()V

    :goto_0
    return-void
.end method
