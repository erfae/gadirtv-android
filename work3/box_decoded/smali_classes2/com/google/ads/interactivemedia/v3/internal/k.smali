.class public final enum Lcom/google/ads/interactivemedia/v3/internal/k;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/internal/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/internal/k;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/internal/k;

.field public static final enum c:Lcom/google/ads/interactivemedia/v3/internal/k;

.field public static final enum d:Lcom/google/ads/interactivemedia/v3/internal/k;

.field private static final synthetic e:[Lcom/google/ads/interactivemedia/v3/internal/k;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/k;

    const-string v1, "VIDEO_CONTROLS"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/k;->a:Lcom/google/ads/interactivemedia/v3/internal/k;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/k;

    const-string v3, "CLOSE_AD"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/k;->b:Lcom/google/ads/interactivemedia/v3/internal/k;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/k;

    const-string v5, "NOT_VISIBLE"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/ads/interactivemedia/v3/internal/k;->c:Lcom/google/ads/interactivemedia/v3/internal/k;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/k;

    const-string v7, "OTHER"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/k;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/ads/interactivemedia/v3/internal/k;->d:Lcom/google/ads/interactivemedia/v3/internal/k;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/ads/interactivemedia/v3/internal/k;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/ads/interactivemedia/v3/internal/k;->e:[Lcom/google/ads/interactivemedia/v3/internal/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/k;
    .locals 1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/k;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/k;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/internal/k;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/k;->e:[Lcom/google/ads/interactivemedia/v3/internal/k;

    .line 7
    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/internal/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/k;

    return-object v0
.end method
