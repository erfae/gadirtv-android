.class final Lcom/google/ads/interactivemedia/v3/internal/ri;
.super Lcom/google/ads/interactivemedia/v3/internal/rd;
.source "IMASDK"


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ri;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/rd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/er;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/dg;)Lcom/google/ads/interactivemedia/v3/internal/ri;
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ri;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/rj;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/rj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dg;)V

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->a:Ljava/lang/Object;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ri;->c:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ri;-><init>(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ri;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ri;

    .line 4
    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ri;-><init>(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ri;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->e:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->b:Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 8
    iget-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->e:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ri;->c:Ljava/lang/Object;

    iput-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/eq;J)Lcom/google/ads/interactivemedia/v3/internal/eq;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->b:Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 11
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;J)Lcom/google/ads/interactivemedia/v3/internal/eq;

    .line 12
    iget-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->d:Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->a:Ljava/lang/Object;

    iput-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/er;)Lcom/google/ads/interactivemedia/v3/internal/ri;
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ri;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->d:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->e:Ljava/lang/Object;

    .line 2
    invoke-direct {v0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ri;-><init>(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->b:Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->e:Ljava/lang/Object;

    .line 10
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ri;->c:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->b:Lcom/google/ads/interactivemedia/v3/internal/er;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ri;->c:Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ri;->e:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
