.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomListRowPresenter;
.super Landroidx/leanback/widget/ListRowPresenter;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomListRowPresenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 769
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomListRowPresenter;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    .line 770
    invoke-direct {p0}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    .line 771
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomRowHeaderPresenter;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomRowHeaderPresenter;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomListRowPresenter;->setHeaderPresenter(Landroidx/leanback/widget/RowHeaderPresenter;)V

    return-void
.end method
