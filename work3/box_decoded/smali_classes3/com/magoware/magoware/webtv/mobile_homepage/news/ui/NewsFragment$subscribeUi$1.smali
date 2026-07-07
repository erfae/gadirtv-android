.class final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$subscribeUi$1;
.super Ljava/lang/Object;
.source "NewsFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->subscribeUi(ILcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;)V
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
        "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
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
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
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
.field final synthetic $adapter:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;

.field final synthetic $binding:Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$subscribeUi$1;->$binding:Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$subscribeUi$1;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/magoware/magoware/webtv/data/ErrorHandling;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "+",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
            ">;>;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getStatus()Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "binding.newsProgressBar"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$subscribeUi$1;->$binding:Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;->newsProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/ViewExtensionKt;->hide(Landroid/widget/ProgressBar;)V

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$subscribeUi$1;->$binding:Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 65
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$subscribeUi$1;->$binding:Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;->newsProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/ViewExtensionKt;->hide(Landroid/widget/ProgressBar;)V

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$subscribeUi$1;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;->submitList(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/magoware/magoware/webtv/data/ErrorHandling;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$subscribeUi$1;->onChanged(Lcom/magoware/magoware/webtv/data/ErrorHandling;)V

    return-void
.end method
