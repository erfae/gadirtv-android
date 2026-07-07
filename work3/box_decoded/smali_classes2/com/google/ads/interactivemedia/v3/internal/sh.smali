.class final Lcom/google/ads/interactivemedia/v3/internal/sh;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/st;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/sk;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/sk;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sh;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/sh;->b:I

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/sh;)I
    .locals 0

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/sh;->b:I

    return p0
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sh;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sh;->b:I

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/sk;->a(IJ)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sh;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sh;->b:I

    .line 3
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/sk;->a(ILcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sh;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sh;->b:I

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/sk;->a(I)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sh;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sh;->b:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/sk;->b(I)V

    return-void
.end method
