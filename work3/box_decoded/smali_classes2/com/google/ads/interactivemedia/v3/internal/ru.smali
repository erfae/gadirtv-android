.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/ru;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/rz;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/rg;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/rl;

.field private final e:Ljava/io/IOException;

.field private final f:Z


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/rz;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->a:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->c:Lcom/google/ads/interactivemedia/v3/internal/rg;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->d:Lcom/google/ads/interactivemedia/v3/internal/rl;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->e:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->a:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->c:Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->d:Lcom/google/ads/interactivemedia/v3/internal/rl;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->e:Ljava/io/IOException;

    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/internal/ru;->f:Z

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ry;->a:I

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ry;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/rz;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;Ljava/io/IOException;Z)V

    return-void
.end method
