.class public final Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils;
.super Ljava/lang/Object;
.source "TvLauncherUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils;",
        "",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils$Companion;

    .line 42
    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method
