.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter$1;
.super Landroidx/leanback/widget/ImageCardView;
.source "CardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter$1;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;

    invoke-direct {p0, p2}, Landroidx/leanback/widget/ImageCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter$1;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;

    invoke-static {v0, p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;->access$000(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;Landroidx/leanback/widget/ImageCardView;Z)V

    .line 36
    invoke-super {p0, p1}, Landroidx/leanback/widget/ImageCardView;->setSelected(Z)V

    return-void
.end method
