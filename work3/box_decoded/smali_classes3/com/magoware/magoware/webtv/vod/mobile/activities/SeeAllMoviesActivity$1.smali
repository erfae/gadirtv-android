.class Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity$1;
.super Lcom/magoware/magoware/webtv/util/EndlessScrollListener;
.source "SeeAllMoviesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "layoutManager"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity$1;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;

    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;-><init>(Landroidx/recyclerview/widget/GridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public onLoadMore(IILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "page",
            "totalItemsCount",
            "view"
        }
    .end annotation

    .line 87
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity$1;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;

    invoke-static {p2, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->access$000(Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;I)V

    return-void
.end method
