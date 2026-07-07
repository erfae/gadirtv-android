.class public final enum Landroidx/paging/RemoteMediator$InitializeAction;
.super Ljava/lang/Enum;
.source "RemoteMediator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/RemoteMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitializeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/paging/RemoteMediator$InitializeAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/paging/RemoteMediator$InitializeAction;",
        "",
        "(Ljava/lang/String;I)V",
        "LAUNCH_INITIAL_REFRESH",
        "SKIP_INITIAL_REFRESH",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/paging/RemoteMediator$InitializeAction;

.field public static final enum LAUNCH_INITIAL_REFRESH:Landroidx/paging/RemoteMediator$InitializeAction;

.field public static final enum SKIP_INITIAL_REFRESH:Landroidx/paging/RemoteMediator$InitializeAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/paging/RemoteMediator$InitializeAction;

    new-instance v1, Landroidx/paging/RemoteMediator$InitializeAction;

    const-string v2, "LAUNCH_INITIAL_REFRESH"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/paging/RemoteMediator$InitializeAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/paging/RemoteMediator$InitializeAction;->LAUNCH_INITIAL_REFRESH:Landroidx/paging/RemoteMediator$InitializeAction;

    aput-object v1, v0, v3

    new-instance v1, Landroidx/paging/RemoteMediator$InitializeAction;

    const-string v2, "SKIP_INITIAL_REFRESH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/paging/RemoteMediator$InitializeAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/paging/RemoteMediator$InitializeAction;->SKIP_INITIAL_REFRESH:Landroidx/paging/RemoteMediator$InitializeAction;

    aput-object v1, v0, v3

    sput-object v0, Landroidx/paging/RemoteMediator$InitializeAction;->$VALUES:[Landroidx/paging/RemoteMediator$InitializeAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/paging/RemoteMediator$InitializeAction;
    .locals 1

    const-class v0, Landroidx/paging/RemoteMediator$InitializeAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/paging/RemoteMediator$InitializeAction;

    return-object p0
.end method

.method public static values()[Landroidx/paging/RemoteMediator$InitializeAction;
    .locals 1

    sget-object v0, Landroidx/paging/RemoteMediator$InitializeAction;->$VALUES:[Landroidx/paging/RemoteMediator$InitializeAction;

    invoke-virtual {v0}, [Landroidx/paging/RemoteMediator$InitializeAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/paging/RemoteMediator$InitializeAction;

    return-object v0
.end method
