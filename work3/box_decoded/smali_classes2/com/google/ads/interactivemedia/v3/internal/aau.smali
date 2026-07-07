.class public final Lcom/google/ads/interactivemedia/v3/internal/aau;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aan;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/internal/aan;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/ads/interactivemedia/v3/internal/zs;

.field public final c:I

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/aax;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/aat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aat<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Landroid/net/Uri;ILcom/google/ads/interactivemedia/v3/internal/aat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/zo;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/ads/interactivemedia/v3/internal/aat<",
            "+TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zr;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zr;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zr;->a(Landroid/net/Uri;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zr;->a(I)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zr;->a()Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aax;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->e:Lcom/google/ads/interactivemedia/v3/internal/aat;

    .line 4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/rg;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aax;->d()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zq;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    .line 7
    :try_start_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zq;->a()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 8
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aax;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->e:Lcom/google/ads/interactivemedia/v3/internal/aat;

    .line 9
    invoke-interface {v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aat;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/io/Closeable;)V

    .line 11
    throw v1
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aax;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

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

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aau;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aax;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
