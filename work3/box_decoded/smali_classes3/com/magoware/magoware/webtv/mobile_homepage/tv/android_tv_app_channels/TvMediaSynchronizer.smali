.class public final Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;
.super Landroidx/work/Worker;
.source "TvMediaSynchronizer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$FeedParseResult;,
        Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \t2\u00020\u0001:\u0002\t\nB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;",
        "Landroidx/work/Worker;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "Companion",
        "FeedParseResult",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion;

    .line 62
    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 2

    .line 55
    :try_start_0
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion;->synchronize(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string v1, "Result.success()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string v1, "Result.failure()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
