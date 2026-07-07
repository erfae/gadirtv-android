.class final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$2;
.super Ljava/lang/Object;
.source "HomeFeedFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->initTvShowsAdapter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/magoware/magoware/webtv/data/Resource<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShows;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004 \u0006*\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/magoware/magoware/webtv/data/Resource;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShows;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsAdapter;

.field final synthetic $carouselLinear:Landroid/view/View;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$2;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsAdapter;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$2;->$carouselLinear:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "+",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShows;",
            ">;>;)V"
        }
    .end annotation

    .line 397
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;->$EnumSwitchMapping$8:[I

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->access$getBinding$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 400
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$2;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsAdapter;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsAdapter;->submitList(Ljava/util/List;)V

    .line 402
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$2;->$carouselLinear:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Lcom/magoware/magoware/webtv/data/Resource;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$2;->onChanged(Lcom/magoware/magoware/webtv/data/Resource;)V

    return-void
.end method
