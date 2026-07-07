.class final Lcom/google/ads/interactivemedia/v3/internal/mk;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/google/ads/interactivemedia/v3/internal/abo;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/mk;Lcom/google/ads/interactivemedia/v3/internal/mk;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->a:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->c:Lcom/google/ads/interactivemedia/v3/internal/abo;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->c:Lcom/google/ads/interactivemedia/v3/internal/abo;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->f:I

    iget v5, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->f:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->g:I

    iget v5, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->g:I

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->h:Z

    iget-boolean v5, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->h:Z

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->i:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->i:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->j:Z

    iget-boolean v5, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->j:Z

    if-ne v4, v5, :cond_7

    :cond_2
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->d:I

    iget v5, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->d:I

    if-eq v4, v5, :cond_3

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    :cond_3
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/abo;->k:I

    if-nez v0, :cond_4

    iget v0, v3, Lcom/google/ads/interactivemedia/v3/internal/abo;->k:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->m:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->m:I

    if-ne v0, v3, :cond_7

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->n:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->n:I

    if-ne v0, v3, :cond_7

    goto :goto_0

    :cond_4
    if-ne v0, v2, :cond_5

    iget v0, v3, Lcom/google/ads/interactivemedia/v3/internal/abo;->k:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->o:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->o:I

    if-ne v0, v3, :cond_7

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->p:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->p:I

    if-eq v0, v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->k:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->k:Z

    if-ne v0, v3, :cond_7

    if-eqz v0, :cond_8

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->l:I

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/mk;->l:I

    if-eq p0, p1, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    return v1

    :cond_7
    :goto_2
    const/4 v1, 0x1

    :cond_8
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->b:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->a:Z

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->b:Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abo;IIIIZZZZIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->c:Lcom/google/ads/interactivemedia/v3/internal/abo;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->d:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->e:I

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->f:I

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->g:I

    iput-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->h:Z

    iput-boolean p7, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->i:Z

    iput-boolean p8, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->j:Z

    iput-boolean p9, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->k:Z

    iput p10, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->l:I

    iput p11, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->m:I

    iput p12, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->n:I

    iput p13, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->o:I

    iput p14, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->p:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->a:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mk;->e:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method
