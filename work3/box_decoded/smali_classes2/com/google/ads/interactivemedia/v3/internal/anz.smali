.class final Lcom/google/ads/interactivemedia/v3/internal/anz;
.super Lcom/google/ads/interactivemedia/v3/internal/aor;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/aor<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/ads/interactivemedia/v3/internal/anz;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/anz;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/anz;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/anz;->a:Lcom/google/ads/interactivemedia/v3/internal/anz;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/apj;->a:Lcom/google/ads/interactivemedia/v3/internal/aou;

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aor;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aou;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/anz;->a:Lcom/google/ads/interactivemedia/v3/internal/anz;

    return-object v0
.end method
