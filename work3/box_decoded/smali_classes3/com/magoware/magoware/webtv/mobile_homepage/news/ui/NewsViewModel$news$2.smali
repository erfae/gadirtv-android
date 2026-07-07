.class final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel$news$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NewsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/LiveData<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $repository:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel$news$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel$news$2;->$repository:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel$news$2;->$repository:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel$news$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;->getNews(J)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel$news$2;->invoke()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
