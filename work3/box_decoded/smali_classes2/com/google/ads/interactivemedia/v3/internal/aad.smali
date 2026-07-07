.class public final Lcom/google/ads/interactivemedia/v3/internal/aad;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zn;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/aag;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aag;

    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/aag;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aad;->a:Lcom/google/ads/interactivemedia/v3/internal/aag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aad;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aad;->b:Ljava/lang/String;

    const/16 p1, 0x1f40

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aad;->c:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aad;->d:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aag;)Lcom/google/ads/interactivemedia/v3/internal/aah;
    .locals 4

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zz;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aad;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aad;->c:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aad;->d:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zz;-><init>(Ljava/lang/String;IILcom/google/ads/interactivemedia/v3/internal/aag;)V

    return-object v0
.end method

.method public final bridge synthetic a()Lcom/google/ads/interactivemedia/v3/internal/zo;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aad;->b()Lcom/google/ads/interactivemedia/v3/internal/aah;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/aah;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aad;->a:Lcom/google/ads/interactivemedia/v3/internal/aag;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aad;->a(Lcom/google/ads/interactivemedia/v3/internal/aag;)Lcom/google/ads/interactivemedia/v3/internal/aah;

    move-result-object v0

    return-object v0
.end method
