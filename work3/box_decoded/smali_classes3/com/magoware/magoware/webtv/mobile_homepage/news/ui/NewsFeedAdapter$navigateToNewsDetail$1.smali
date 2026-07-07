.class final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$navigateToNewsDetail$1;
.super Ljava/lang/Object;
.source "NewsFeedAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;->navigateToNewsDetail(J)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $id:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$navigateToNewsDetail$1;->$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 36
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$Companion;

    iget-wide v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$navigateToNewsDetail$1;->$id:J

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$Companion;->actionNavNewsToNewsDetailFragment(J)Landroidx/navigation/NavDirections;

    move-result-object v0

    const-string v1, "it"

    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/navigation/ViewKt;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method
