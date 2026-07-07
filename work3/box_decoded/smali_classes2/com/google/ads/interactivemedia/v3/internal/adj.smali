.class public final enum Lcom/google/ads/interactivemedia/v3/internal/adj;
.super Ljava/lang/Enum;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/adk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/internal/adj;",
        ">;",
        "Lcom/google/ads/interactivemedia/v3/internal/adk;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/internal/adj;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/internal/adj;

.field public static final enum c:Lcom/google/ads/interactivemedia/v3/internal/adj;

.field public static final enum d:Lcom/google/ads/interactivemedia/v3/internal/adj;

.field public static final enum e:Lcom/google/ads/interactivemedia/v3/internal/adj;

.field public static final enum f:Lcom/google/ads/interactivemedia/v3/internal/adj;

.field private static final synthetic g:[Lcom/google/ads/interactivemedia/v3/internal/adj;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/adj;

    const-string v1, "IDENTITY"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/adj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/adj;->a:Lcom/google/ads/interactivemedia/v3/internal/adj;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/adj;

    const-string v3, "UPPER_CAMEL_CASE"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/adj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/adj;->b:Lcom/google/ads/interactivemedia/v3/internal/adj;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/adj;

    const-string v5, "UPPER_CAMEL_CASE_WITH_SPACES"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/adj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/ads/interactivemedia/v3/internal/adj;->c:Lcom/google/ads/interactivemedia/v3/internal/adj;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/adj;

    const-string v7, "LOWER_CASE_WITH_UNDERSCORES"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/adj;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/ads/interactivemedia/v3/internal/adj;->d:Lcom/google/ads/interactivemedia/v3/internal/adj;

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/adj;

    const-string v9, "LOWER_CASE_WITH_DASHES"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/adj;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/ads/interactivemedia/v3/internal/adj;->e:Lcom/google/ads/interactivemedia/v3/internal/adj;

    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/adj;

    const-string v11, "LOWER_CASE_WITH_DOTS"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/adj;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/ads/interactivemedia/v3/internal/adj;->f:Lcom/google/ads/interactivemedia/v3/internal/adj;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/ads/interactivemedia/v3/internal/adj;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/ads/interactivemedia/v3/internal/adj;->g:[Lcom/google/ads/interactivemedia/v3/internal/adj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/adj;
    .locals 1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/adj;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/adj;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/internal/adj;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/adj;->g:[Lcom/google/ads/interactivemedia/v3/internal/adj;

    .line 9
    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/internal/adj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/adj;

    return-object v0
.end method
