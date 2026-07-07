.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->updateBackground(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$1;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResourceReady$0$DetailFragment$1(Landroidx/palette/graphics/Palette;)V
    .locals 2

    .line 238
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getPaletteColors(Landroidx/palette/graphics/Palette;)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$1;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->access$100(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->getStatusBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setActionsBackgroundColor(I)V

    .line 240
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$1;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->access$100(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->getToolbarBackgroundColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setBackgroundColor(I)V

    .line 242
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$1;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->access$200(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resource",
            "transition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 236
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$1;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->access$000(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)Landroidx/leanback/app/BackgroundManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/leanback/app/BackgroundManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    invoke-static {p1}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$1$XFk6tCurzpmt1t5GUx1Mtktj1_s;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$1$XFk6tCurzpmt1t5GUx1Mtktj1_s;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$1;)V

    invoke-virtual {p1, p2}, Landroidx/palette/graphics/Palette$Builder;->generate(Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "resource",
            "transition"
        }
    .end annotation

    .line 233
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
