.class public final Lcom/google/ads/interactivemedia/v3/internal/adr;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/aeh;",
            ">;"
        }
    .end annotation
.end field

.field final b:Z

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "*>;",
            "Lcom/google/ads/interactivemedia/v3/internal/adq<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "*>;",
            "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/afc;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/agd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    .line 1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/aim;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afe;->a:Lcom/google/ads/interactivemedia/v3/internal/afe;

    const/4 v0, 0x0

    throw v0
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/afe;Lcom/google/ads/interactivemedia/v3/internal/adk;Ljava/util/Map;ZILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/afe;",
            "Lcom/google/ads/interactivemedia/v3/internal/adk;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/ads/interactivemedia/v3/internal/adt<",
            "*>;>;ZI",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/aeh;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/lang/ThreadLocal;

    .line 3
    invoke-direct {p4}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->c:Ljava/lang/ThreadLocal;

    new-instance p4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->d:Ljava/util/Map;

    new-instance p4, Lcom/google/ads/interactivemedia/v3/internal/afc;

    .line 5
    invoke-direct {p4, p3}, Lcom/google/ads/interactivemedia/v3/internal/afc;-><init>(Ljava/util/Map;)V

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->e:Lcom/google/ads/interactivemedia/v3/internal/afc;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->b:Z

    new-instance p3, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/aih;->W:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/agl;->a:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 8
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {p3, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p6, Lcom/google/ads/interactivemedia/v3/internal/aih;->B:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 11
    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/google/ads/interactivemedia/v3/internal/aih;->m:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 12
    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/google/ads/interactivemedia/v3/internal/aih;->g:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 13
    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/google/ads/interactivemedia/v3/internal/aih;->i:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 14
    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/google/ads/interactivemedia/v3/internal/aih;->k:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 15
    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget p6, Lcom/google/ads/interactivemedia/v3/internal/aee;->a:I

    if-ne p5, p6, :cond_0

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->t:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    goto :goto_0

    .line 55
    :cond_0
    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/adn;

    invoke-direct {p5}, Lcom/google/ads/interactivemedia/v3/internal/adn;-><init>()V

    .line 17
    :goto_0
    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v0, Ljava/lang/Long;

    invoke-static {p6, v0, p5}, Lcom/google/ads/interactivemedia/v3/internal/aih;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/aeg;)Lcom/google/ads/interactivemedia/v3/internal/aeh;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object p6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/adl;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/adl;-><init>()V

    const-class v1, Ljava/lang/Double;

    invoke-static {p6, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aih;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/aeg;)Lcom/google/ads/interactivemedia/v3/internal/aeh;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object p6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/adm;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/adm;-><init>()V

    const-class v1, Ljava/lang/Float;

    invoke-static {p6, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aih;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/aeg;)Lcom/google/ads/interactivemedia/v3/internal/aeh;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/google/ads/interactivemedia/v3/internal/aih;->v:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 20
    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/google/ads/interactivemedia/v3/internal/aih;->o:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 21
    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/google/ads/interactivemedia/v3/internal/aih;->q:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 22
    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/google/ads/interactivemedia/v3/internal/ado;

    .line 23
    invoke-direct {p6, p5}, Lcom/google/ads/interactivemedia/v3/internal/ado;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aeg;)V

    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    invoke-virtual {p6}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->nullSafe()Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object p6

    .line 25
    invoke-static {v0, p6}, Lcom/google/ads/interactivemedia/v3/internal/aih;->a(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/aeg;)Lcom/google/ads/interactivemedia/v3/internal/aeh;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/google/ads/interactivemedia/v3/internal/adp;

    .line 26
    invoke-direct {p6, p5}, Lcom/google/ads/interactivemedia/v3/internal/adp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aeg;)V

    const-class p5, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 27
    invoke-virtual {p6}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->nullSafe()Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object p6

    .line 28
    invoke-static {p5, p6}, Lcom/google/ads/interactivemedia/v3/internal/aih;->a(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/aeg;)Lcom/google/ads/interactivemedia/v3/internal/aeh;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->s:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 29
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->x:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 30
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->D:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 31
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->F:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 32
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p5, Ljava/math/BigDecimal;

    sget-object p6, Lcom/google/ads/interactivemedia/v3/internal/aih;->z:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    .line 33
    invoke-static {p5, p6}, Lcom/google/ads/interactivemedia/v3/internal/aih;->a(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/aeg;)Lcom/google/ads/interactivemedia/v3/internal/aeh;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p5, Ljava/math/BigInteger;

    sget-object p6, Lcom/google/ads/interactivemedia/v3/internal/aih;->A:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    .line 34
    invoke-static {p5, p6}, Lcom/google/ads/interactivemedia/v3/internal/aih;->a(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/aeg;)Lcom/google/ads/interactivemedia/v3/internal/aeh;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->H:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 35
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->J:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 36
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->N:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 37
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->P:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 38
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->U:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 39
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->L:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 40
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->d:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 41
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/agc;->a:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 42
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->S:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 43
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/ags;->a:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 44
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/agq;->a:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 45
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->Q:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 46
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/afy;->a:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 47
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/ads/interactivemedia/v3/internal/aih;->b:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 48
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/aga;

    .line 49
    invoke-direct {p5, p4}, Lcom/google/ads/interactivemedia/v3/internal/aga;-><init>(Lcom/google/ads/interactivemedia/v3/internal/afc;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/agj;

    .line 50
    invoke-direct {p5, p4}, Lcom/google/ads/interactivemedia/v3/internal/agj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/afc;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/agd;

    .line 51
    invoke-direct {p5, p4}, Lcom/google/ads/interactivemedia/v3/internal/agd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/afc;)V

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->f:Lcom/google/ads/interactivemedia/v3/internal/agd;

    .line 52
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/google/ads/interactivemedia/v3/internal/aih;->X:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 53
    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/google/ads/interactivemedia/v3/internal/ago;

    .line 54
    invoke-direct {p6, p4, p2, p1, p5}, Lcom/google/ads/interactivemedia/v3/internal/ago;-><init>(Lcom/google/ads/interactivemedia/v3/internal/afc;Lcom/google/ads/interactivemedia/v3/internal/adk;Lcom/google/ads/interactivemedia/v3/internal/afe;Lcom/google/ads/interactivemedia/v3/internal/agd;)V

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->a:Ljava/util/List;

    return-void
.end method

.method public static final a(Ljava/io/Writer;)Lcom/google/ads/interactivemedia/v3/internal/aiq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aiq;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;-><init>(Ljava/io/Writer;)V

    const/4 p0, 0x0

    .line 96
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->d(Z)V

    return-object v0
.end method

.method static a(D)V
    .locals 2

    .line 56
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aeh;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/internal/aeh;",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->a:Ljava/util/List;

    .line 91
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->f:Lcom/google/ads/interactivemedia/v3/internal/agd;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->a:Ljava/util/List;

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/aeh;

    if-nez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aeh;->a(Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->d:Ljava/util/Map;

    .line 76
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/aeg;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->c:Ljava/lang/ThreadLocal;

    .line 77
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    .line 78
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->c:Ljava/lang/ThreadLocal;

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 80
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/adq;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/adq;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/adq;-><init>()V

    .line 81
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->a:Ljava/util/List;

    .line 82
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/aeh;

    .line 83
    invoke-interface {v4, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeh;->a(Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 84
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/adq;->a(Lcom/google/ads/interactivemedia/v3/internal/aeg;)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->d:Ljava/util/Map;

    .line 85
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->c:Ljava/lang/ThreadLocal;

    .line 87
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    return-object v4

    .line 86
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.5) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 86
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 89
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->c:Ljava/lang/ThreadLocal;

    .line 87
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 89
    :cond_6
    throw v2
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
            "TT;>;"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/aim;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aio;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/internal/aio;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/adx;,
            Lcom/google/ads/interactivemedia/v3/internal/aed;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->q()Z

    move-result v0

    const/4 v1, 0x1

    .line 58
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Z)V

    .line 59
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/aim;

    move-result-object p2

    .line 61
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object p2

    .line 62
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->read(Lcom/google/ads/interactivemedia/v3/internal/aio;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Z)V

    return-object p2

    :catch_0
    move-exception p2

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 64
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    .line 65
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aed;

    .line 64
    invoke-direct {v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aed;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception p2

    .line 67
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aed;

    .line 65
    invoke-direct {v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aed;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_4
    move-exception p2

    :goto_0
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Z)V

    const/4 p1, 0x0

    return-object p1

    .line 68
    :cond_0
    :try_start_3
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aed;

    .line 66
    invoke-direct {v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aed;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Z)V

    .line 68
    throw p2
.end method

.method public final a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/adx;,
            Lcom/google/ads/interactivemedia/v3/internal/aed;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aio;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 70
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Z)V

    .line 71
    invoke-virtual {p0, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Lcom/google/ads/interactivemedia/v3/internal/aio;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 72
    :try_start_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/adx;

    const-string p2, "JSON document was not fully consumed."

    .line 73
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/adx;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/air; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/adx;

    .line 74
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/adx;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/aed;

    .line 75
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aed;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ady;->a:Lcom/google/ads/interactivemedia/v3/internal/ady;

    new-instance v0, Ljava/io/StringWriter;

    .line 107
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Ljava/io/Writer;)Lcom/google/ads/interactivemedia/v3/internal/aiq;

    move-result-object v1

    .line 109
    invoke-virtual {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;Lcom/google/ads/interactivemedia/v3/internal/aiq;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 116
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/adx;

    .line 110
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/adx;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    .line 113
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_1
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    .line 114
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Ljava/io/Writer;)Lcom/google/ads/interactivemedia/v3/internal/aiq;

    move-result-object v2

    .line 115
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/aiq;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 115
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/adx;

    .line 116
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/adx;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/adw;Lcom/google/ads/interactivemedia/v3/internal/aiq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/adx;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->g()Z

    move-result v0

    const/4 v1, 0x1

    .line 97
    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->b(Z)V

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->h()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->b:Z

    .line 98
    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->c(Z)V

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->i()Z

    move-result v2

    const/4 v3, 0x0

    .line 99
    invoke-virtual {p2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->d(Z)V

    .line 100
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;Lcom/google/ads/interactivemedia/v3/internal/aiq;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->b(Z)V

    .line 104
    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->c(Z)V

    .line 105
    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->d(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception p1

    .line 105
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/adx;

    .line 102
    invoke-direct {v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/adx;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->b(Z)V

    .line 104
    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->c(Z)V

    .line 105
    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->d(Z)V

    .line 106
    throw p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/aiq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/adx;
        }
    .end annotation

    .line 118
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/aim;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object p2

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->g()Z

    move-result v0

    const/4 v1, 0x1

    .line 119
    invoke-virtual {p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->b(Z)V

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->h()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->b:Z

    .line 120
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->c(Z)V

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->i()Z

    move-result v2

    const/4 v3, 0x0

    .line 121
    invoke-virtual {p3, v3}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->d(Z)V

    .line 122
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->write(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->b(Z)V

    .line 126
    invoke-virtual {p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->c(Z)V

    .line 127
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->d(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 127
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/adx;

    .line 124
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/adx;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :goto_0
    invoke-virtual {p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->b(Z)V

    .line 126
    invoke-virtual {p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->c(Z)V

    .line 127
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->d(Z)V

    .line 128
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/adr;->e:Lcom/google/ads/interactivemedia/v3/internal/afc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
