.class public final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "NewsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR!\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "repository",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;)V",
        "id",
        "",
        "getId",
        "()J",
        "setId",
        "(J)V",
        "news",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
        "getNews",
        "()Landroidx/lifecycle/LiveData;",
        "news$delegate",
        "Lkotlin/Lazy;",
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
.field private id:J

.field private final news$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 10
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel$news$2;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel$news$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;->news$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;->id:J

    return-wide v0
.end method

.method public final getNews()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;->news$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setId(J)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;->id:J

    return-void
.end method
