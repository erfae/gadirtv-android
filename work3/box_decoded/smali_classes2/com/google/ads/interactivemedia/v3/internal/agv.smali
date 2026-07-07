.class public final Lcom/google/ads/interactivemedia/v3/internal/agv;
.super Lcom/google/ads/interactivemedia/v3/internal/aeg;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/ads/interactivemedia/v3/internal/adr;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/aec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/adv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/adv<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/aim;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/aeh;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/agt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/agt;"
        }
    .end annotation
.end field

.field private g:Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aec;Lcom/google/ads/interactivemedia/v3/internal/adv;Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;Lcom/google/ads/interactivemedia/v3/internal/aeh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aec<",
            "TT;>;",
            "Lcom/google/ads/interactivemedia/v3/internal/adv<",
            "TT;>;",
            "Lcom/google/ads/interactivemedia/v3/internal/adr;",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "TT;>;",
            "Lcom/google/ads/interactivemedia/v3/internal/aeh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aeg;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/agt;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/agt;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->f:Lcom/google/ads/interactivemedia/v3/internal/agt;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->b:Lcom/google/ads/interactivemedia/v3/internal/aec;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->c:Lcom/google/ads/interactivemedia/v3/internal/adv;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->a:Lcom/google/ads/interactivemedia/v3/internal/adr;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->d:Lcom/google/ads/interactivemedia/v3/internal/aim;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->e:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    return-void
.end method

.method private final a()Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->g:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->a:Lcom/google/ads/interactivemedia/v3/internal/adr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->e:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->d:Lcom/google/ads/interactivemedia/v3/internal/aim;

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Lcom/google/ads/interactivemedia/v3/internal/aeh;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->g:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    return-object v0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/aim;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aeh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/aeh;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aim;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/agu;

    .line 2
    invoke-direct {v1, p1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/agu;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/aim;Z)V

    return-object v1
.end method


# virtual methods
.method public final read(Lcom/google/ads/interactivemedia/v3/internal/aio;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aio;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->c:Lcom/google/ads/interactivemedia/v3/internal/adv;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/agv;->a()Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->read(Lcom/google/ads/interactivemedia/v3/internal/aio;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lcom/google/ads/interactivemedia/v3/internal/aio;)Lcom/google/ads/interactivemedia/v3/internal/adw;

    move-result-object p1

    .line 5
    instance-of p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ady;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->c:Lcom/google/ads/interactivemedia/v3/internal/adv;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->d:Lcom/google/ads/interactivemedia/v3/internal/aim;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aim;->b()Ljava/lang/reflect/Type;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/adv;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aiq;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->b:Lcom/google/ads/interactivemedia/v3/internal/aec;

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/agv;->a()Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->write(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->f()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/agv;->d:Lcom/google/ads/interactivemedia/v3/internal/aim;

    .line 9
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aim;->b()Ljava/lang/reflect/Type;

    invoke-interface {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aec;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/adw;

    move-result-object p2

    .line 10
    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;Lcom/google/ads/interactivemedia/v3/internal/aiq;)V

    return-void
.end method
