.class public final enum Lcom/google/ads/interactivemedia/v3/internal/ajn;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/internal/ajn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/interactivemedia/v3/internal/ajn;

.field public static final enum OFF:Lcom/google/ads/interactivemedia/v3/internal/ajn;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/aej;
        a = "1"
    .end annotation
.end field

.field public static final enum ON:Lcom/google/ads/interactivemedia/v3/internal/ajn;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/aej;
        a = "2"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/ajn;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/aej;
        a = "0"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/google/ads/interactivemedia/v3/internal/ajn;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/ajn;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ajn;->OFF:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ajn;->ON:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ajn;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ajn;

    const-string v1, "OFF"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ajn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajn;->OFF:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ajn;

    const-string v1, "ON"

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ajn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajn;->ON:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ajn;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ajn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajn;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    .line 4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ajn;->$values()[Lcom/google/ads/interactivemedia/v3/internal/ajn;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajn;->$VALUES:[Lcom/google/ads/interactivemedia/v3/internal/ajn;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ajn;
    .locals 1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/ajn;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/ajn;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/internal/ajn;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajn;->$VALUES:[Lcom/google/ads/interactivemedia/v3/internal/ajn;

    .line 7
    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/internal/ajn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/ajn;

    return-object v0
.end method
