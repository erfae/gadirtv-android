.class public final enum Lcom/google/ads/interactivemedia/v3/internal/ajm;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/internal/ajm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/interactivemedia/v3/internal/ajm;

.field public static final enum AUTO:Lcom/google/ads/interactivemedia/v3/internal/ajm;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/aej;
        a = "auto"
    .end annotation
.end field

.field public static final enum CLICK:Lcom/google/ads/interactivemedia/v3/internal/ajm;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/aej;
        a = "click"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/ajm;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/aej;
        a = "unknown"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/google/ads/interactivemedia/v3/internal/ajm;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/ajm;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ajm;->AUTO:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ajm;->CLICK:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ajm;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ajm;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ajm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajm;->AUTO:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ajm;

    const-string v1, "CLICK"

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ajm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajm;->CLICK:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ajm;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ajm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajm;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    .line 4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ajm;->$values()[Lcom/google/ads/interactivemedia/v3/internal/ajm;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajm;->$VALUES:[Lcom/google/ads/interactivemedia/v3/internal/ajm;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ajm;
    .locals 1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/ajm;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/ajm;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/internal/ajm;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajm;->$VALUES:[Lcom/google/ads/interactivemedia/v3/internal/ajm;

    .line 7
    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/internal/ajm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/ajm;

    return-object v0
.end method
