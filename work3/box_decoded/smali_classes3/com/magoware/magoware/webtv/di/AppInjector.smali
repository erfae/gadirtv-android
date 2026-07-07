.class public final Lcom/magoware/magoware/webtv/di/AppInjector;
.super Ljava/lang/Object;
.source "AppInjector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/di/AppInjector$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/di/AppInjector;",
        "",
        "()V",
        "Factory",
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
.field public static final Factory:Lcom/magoware/magoware/webtv/di/AppInjector$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/magoware/magoware/webtv/di/AppInjector$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/di/AppInjector$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/magoware/magoware/webtv/di/AppInjector;->Factory:Lcom/magoware/magoware/webtv/di/AppInjector$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
