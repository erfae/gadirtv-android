.class public abstract Lcom/google/ads/interactivemedia/v3/internal/any;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/internal/any;

.field private static final b:Lcom/google/ads/interactivemedia/v3/internal/any;

.field private static final c:Lcom/google/ads/interactivemedia/v3/internal/any;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/anw;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/anw;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/any;->a:Lcom/google/ads/interactivemedia/v3/internal/any;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/anx;

    const/4 v1, -0x1

    .line 1
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/anx;-><init>(I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/any;->b:Lcom/google/ads/interactivemedia/v3/internal/any;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/anx;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/anx;-><init>(I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/any;->c:Lcom/google/ads/interactivemedia/v3/internal/any;

    return-void
.end method

.method synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/ads/interactivemedia/v3/internal/any;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/any;->a:Lcom/google/ads/interactivemedia/v3/internal/any;

    return-object v0
.end method

.method static synthetic c()Lcom/google/ads/interactivemedia/v3/internal/any;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/any;->b:Lcom/google/ads/interactivemedia/v3/internal/any;

    return-object v0
.end method

.method static synthetic d()Lcom/google/ads/interactivemedia/v3/internal/any;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/any;->c:Lcom/google/ads/interactivemedia/v3/internal/any;

    return-object v0
.end method

.method static synthetic e()Lcom/google/ads/interactivemedia/v3/internal/any;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/any;->a:Lcom/google/ads/interactivemedia/v3/internal/any;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(II)Lcom/google/ads/interactivemedia/v3/internal/any;
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/any;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/any;"
        }
    .end annotation
.end method

.method public abstract a(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;
.end method

.method public abstract b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;
.end method
