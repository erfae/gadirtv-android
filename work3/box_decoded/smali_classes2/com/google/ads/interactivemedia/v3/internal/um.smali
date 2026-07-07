.class final Lcom/google/ads/interactivemedia/v3/internal/um;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/internal/aak<",
        "Lcom/google/ads/interactivemedia/v3/internal/aau<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/uo;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/uo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/um;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJLjava/io/IOException;I)Lcom/google/ads/interactivemedia/v3/internal/aal;
    .locals 7

    move-object v1, p1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/aau;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/um;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Lcom/google/ads/interactivemedia/v3/internal/aau;JJLjava/io/IOException;)Lcom/google/ads/interactivemedia/v3/internal/aal;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/aau;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/um;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/uo;->b(Lcom/google/ads/interactivemedia/v3/internal/aau;JJ)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJZ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/aau;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/um;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/uo;->c(Lcom/google/ads/interactivemedia/v3/internal/aau;JJ)V

    return-void
.end method
