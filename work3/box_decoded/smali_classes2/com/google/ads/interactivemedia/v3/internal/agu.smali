.class final Lcom/google/ads/interactivemedia/v3/internal/agu;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aeh;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/aim;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/aec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aec<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/adv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/adv<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/aim;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/aec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/aec;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agu;->c:Lcom/google/ads/interactivemedia/v3/internal/aec;

    .line 2
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/internal/adv;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/adv;

    :cond_1
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/agu;->d:Lcom/google/ads/interactivemedia/v3/internal/adv;

    const/4 p1, 0x1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 3
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Z)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/agu;->a:Lcom/google/ads/interactivemedia/v3/internal/aim;

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/agu;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/internal/adr;",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agu;->a:Lcom/google/ads/interactivemedia/v3/internal/aim;

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agu;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agu;->a:Lcom/google/ads/interactivemedia/v3/internal/aim;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aim;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/agv;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/agu;->c:Lcom/google/ads/interactivemedia/v3/internal/aec;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/agu;->d:Lcom/google/ads/interactivemedia/v3/internal/adv;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/agv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aec;Lcom/google/ads/interactivemedia/v3/internal/adv;Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;Lcom/google/ads/interactivemedia/v3/internal/aeh;)V

    return-object v6
.end method
