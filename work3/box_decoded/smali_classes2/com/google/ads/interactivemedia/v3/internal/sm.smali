.class public final Lcom/google/ads/interactivemedia/v3/internal/sm;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/sa;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/zn;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/ij;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/hq;

.field private d:I

.field private e:Lcom/google/ads/interactivemedia/v3/internal/aaa;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zn;Lcom/google/ads/interactivemedia/v3/internal/ij;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sm;->a:Lcom/google/ads/interactivemedia/v3/internal/zn;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/sm;->b:Lcom/google/ads/interactivemedia/v3/internal/ij;

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/hq;->a:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sm;->c:Lcom/google/ads/interactivemedia/v3/internal/hq;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aaa;

    .line 2
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/aaa;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sm;->e:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    const/high16 p1, 0x100000

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sm;->d:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/google/ads/interactivemedia/v3/internal/sn;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dc;

    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/dc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a()Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-result-object v2

    iget-object p1, v2, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v2, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 5
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/df;->h:Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/df;->e:Ljava/lang/String;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/sn;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/sm;->a:Lcom/google/ads/interactivemedia/v3/internal/zn;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/sm;->b:Lcom/google/ads/interactivemedia/v3/internal/ij;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/sm;->c:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/sm;->e:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/sm;->d:I

    move-object v1, p1

    .line 7
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/sn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dg;Lcom/google/ads/interactivemedia/v3/internal/zn;Lcom/google/ads/interactivemedia/v3/internal/ij;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/aaa;I)V

    return-object p1
.end method
