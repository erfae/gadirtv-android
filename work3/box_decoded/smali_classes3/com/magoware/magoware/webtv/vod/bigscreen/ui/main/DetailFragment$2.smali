.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$2;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setupDetailsOverviewRow()V
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

    .line 321
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$2;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
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

    .line 326
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$2;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->access$300(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)Landroidx/leanback/widget/DetailsOverviewRow;

    move-result-object p2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$2;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroidx/leanback/widget/DetailsOverviewRow;->setImageBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 327
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$2;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->startEntranceTransition()V

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

    .line 321
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
