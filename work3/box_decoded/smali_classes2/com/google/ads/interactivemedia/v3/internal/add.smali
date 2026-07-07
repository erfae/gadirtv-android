.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/add;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/adg;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:F


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/adg;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/add;->a:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/add;->b:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/add;->c:I

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/add;->d:I

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/add;->e:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/add;->a:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/add;->b:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/add;->c:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/add;->d:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/add;->e:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/adg;->b(IIIF)V

    return-void
.end method
