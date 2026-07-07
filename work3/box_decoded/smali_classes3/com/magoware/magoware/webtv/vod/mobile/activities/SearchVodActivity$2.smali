.class Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity$2;
.super Ljava/lang/Object;
.source "SearchVodActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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

    .line 114
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity$2;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 122
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity$2;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->finish()V

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
