.class public final Lcom/google/ads/interactivemedia/v3/internal/yo;
.super Lcom/google/ads/interactivemedia/v3/internal/yb;
.source "IMASDK"


# instance fields
.field private final d:I

.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/sz;IILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/yb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/sz;[I)V

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/yo;->d:I

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/yo;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(JJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ads/interactivemedia/v3/internal/tu;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yo;->d:I

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yo;->e:Ljava/lang/Object;

    return-object v0
.end method
