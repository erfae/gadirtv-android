.class public final Lcom/google/ads/interactivemedia/v3/internal/cr;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public a:Lcom/google/ads/interactivemedia/v3/internal/du;

.field public b:I

.field public c:Z

.field public d:I

.field public e:Z

.field public f:I

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/du;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->a:Lcom/google/ads/interactivemedia/v3/internal/du;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/cr;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->g:Z

    return p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->g:Z

    or-int/2addr v0, p1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->g:Z

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->b:I

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/du;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->g:Z

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->a:Lcom/google/ads/interactivemedia/v3/internal/du;

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->g:Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->a:Lcom/google/ads/interactivemedia/v3/internal/du;

    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->d:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->g:Z

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->c:Z

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->d:I

    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->g:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->e:Z

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cr;->f:I

    return-void
.end method
