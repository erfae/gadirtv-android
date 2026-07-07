.class public abstract Lcom/google/ads/interactivemedia/v3/internal/tl;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aan;


# instance fields
.field public final c:J

.field public final d:Lcom/google/ads/interactivemedia/v3/internal/zs;

.field public final e:I

.field public final f:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field public final g:I

.field public final h:Ljava/lang/Object;

.field public final i:J

.field public final j:J

.field protected final k:Lcom/google/ads/interactivemedia/v3/internal/aax;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;ILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aax;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 2
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->g:I

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->h:Ljava/lang/Object;

    iput-wide p7, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    iput-wide p9, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/rg;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aax;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aax;->f()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tl;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aax;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
