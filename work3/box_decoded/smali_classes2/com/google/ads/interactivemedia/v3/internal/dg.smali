.class public final Lcom/google/ads/interactivemedia/v3/internal/dg;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/ads/interactivemedia/v3/internal/df;

.field public final c:Lcom/google/ads/interactivemedia/v3/internal/dh;

.field public final d:Lcom/google/ads/interactivemedia/v3/internal/dd;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/dd;Lcom/google/ads/interactivemedia/v3/internal/df;Lcom/google/ads/interactivemedia/v3/internal/dh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dg;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/dg;->c:Lcom/google/ads/interactivemedia/v3/internal/dh;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dg;->d:Lcom/google/ads/interactivemedia/v3/internal/dd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/dc;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dc;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/dc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dg;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/dg;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dg;->a:Ljava/lang/String;

    .line 4
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dg;->d:Lcom/google/ads/interactivemedia/v3/internal/dd;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->d:Lcom/google/ads/interactivemedia/v3/internal/dd;

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/dd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 6
    invoke-static {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dg;->c:Lcom/google/ads/interactivemedia/v3/internal/dh;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->c:Lcom/google/ads/interactivemedia/v3/internal/dh;

    .line 7
    invoke-static {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dg;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/df;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dg;->d:Lcom/google/ads/interactivemedia/v3/internal/dd;

    .line 10
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/dd;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
