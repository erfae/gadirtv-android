.class public final enum Landroidx/paging/LoadType;
.super Ljava/lang/Enum;
.source "LoadType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/paging/LoadType;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/paging/LoadType;",
        "",
        "(Ljava/lang/String;I)V",
        "REFRESH",
        "PREPEND",
        "APPEND",
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
.field private static final synthetic $VALUES:[Landroidx/paging/LoadType;

.field public static final enum APPEND:Landroidx/paging/LoadType;

.field public static final enum PREPEND:Landroidx/paging/LoadType;

.field public static final enum REFRESH:Landroidx/paging/LoadType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/paging/LoadType;

    new-instance v1, Landroidx/paging/LoadType;

    const-string v2, "REFRESH"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/paging/LoadType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    aput-object v1, v0, v3

    new-instance v1, Landroidx/paging/LoadType;

    const-string v2, "PREPEND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/paging/LoadType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    aput-object v1, v0, v3

    new-instance v1, Landroidx/paging/LoadType;

    const-string v2, "APPEND"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/paging/LoadType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    aput-object v1, v0, v3

    sput-object v0, Landroidx/paging/LoadType;->$VALUES:[Landroidx/paging/LoadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/paging/LoadType;
    .locals 1

    const-class v0, Landroidx/paging/LoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/paging/LoadType;

    return-object p0
.end method

.method public static values()[Landroidx/paging/LoadType;
    .locals 1

    sget-object v0, Landroidx/paging/LoadType;->$VALUES:[Landroidx/paging/LoadType;

    invoke-virtual {v0}, [Landroidx/paging/LoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/paging/LoadType;

    return-object v0
.end method
