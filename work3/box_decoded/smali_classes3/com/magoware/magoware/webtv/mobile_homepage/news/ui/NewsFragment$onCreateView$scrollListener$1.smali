.class public final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$scrollListener$1;
.super Lcom/magoware/magoware/webtv/util/EndlessScrollListener;
.source "NewsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$scrollListener$1",
        "Lcom/magoware/magoware/webtv/util/EndlessScrollListener;",
        "onLoadMore",
        "",
        "page",
        "",
        "totalItemsCount",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;

.field final synthetic $binding:Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;

.field final synthetic $layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            ")V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$scrollListener$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$scrollListener$1;->$binding:Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$scrollListener$1;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$scrollListener$1;->$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, p5}, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public onLoadMore(IILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$scrollListener$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$scrollListener$1;->$binding:Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$scrollListener$1;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;

    invoke-static {p2, p1, p3, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->access$subscribeUi(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;ILcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;)V

    return-void
.end method
