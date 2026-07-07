.class Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SearchVodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity$1;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 90
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 91
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity$1;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->access$000(Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    return-void
.end method
