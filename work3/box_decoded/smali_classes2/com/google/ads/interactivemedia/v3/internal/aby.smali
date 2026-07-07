.class final Lcom/google/ads/interactivemedia/v3/internal/aby;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/internal/aak<",
        "Lcom/google/ads/interactivemedia/v3/internal/aan;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/abx;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/abx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aby;->a:Lcom/google/ads/interactivemedia/v3/internal/abx;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJLjava/io/IOException;I)Lcom/google/ads/interactivemedia/v3/internal/aal;
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aby;->a:Lcom/google/ads/interactivemedia/v3/internal/abx;

    .line 3
    invoke-interface {p1, p6}, Lcom/google/ads/interactivemedia/v3/internal/abx;->a(Ljava/io/IOException;)V

    .line 4
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/aar;->a:Lcom/google/ads/interactivemedia/v3/internal/aal;

    return-object p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJ)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aca;->a()Z

    move-result p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aby;->a:Lcom/google/ads/interactivemedia/v3/internal/abx;

    .line 2
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/abx;->a()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJZ)V
    .locals 0

    return-void
.end method
