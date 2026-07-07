.class final Lcom/google/ads/interactivemedia/v3/internal/mf;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final d:[B


# instance fields
.field public a:I

.field public b:I

.field public c:[B

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/mf;->d:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->c:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->e:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->a:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->b:I

    return-void
.end method

.method public final a([BII)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->c:[B

    .line 1
    array-length v1, v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->a:I

    add-int/2addr v2, p3

    if-ge v1, v2, :cond_1

    add-int/2addr v2, v2

    .line 2
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->c:[B

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->c:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->a:I

    .line 3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->a:I

    return-void
.end method

.method public final a(II)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->e:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->a:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->a:I

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->b:I

    if-nez p2, :cond_0

    const/16 p2, 0xb5

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->b:I

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->e:Z

    return v1

    :cond_1
    const/16 p2, 0xb3

    if-ne p1, p2, :cond_2

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mf;->e:Z

    .line 0
    :cond_2
    :goto_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/mf;->d:[B

    array-length p2, p1

    .line 4
    invoke-virtual {p0, p1, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/mf;->a([BII)V

    return v2
.end method
