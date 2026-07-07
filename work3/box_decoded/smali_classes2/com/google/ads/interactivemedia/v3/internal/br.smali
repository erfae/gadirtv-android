.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/bh;


# static fields
.field static final a:Lcom/google/ads/interactivemedia/v3/internal/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/br;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/br;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/br;->a:Lcom/google/ads/interactivemedia/v3/internal/bh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/dw;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Player release timed out."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/bo;->a(Ljava/util/concurrent/TimeoutException;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dw;->a(Lcom/google/ads/interactivemedia/v3/internal/bo;)V

    return-void
.end method
