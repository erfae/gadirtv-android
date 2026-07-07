.class public final Lcom/google/ads/interactivemedia/v3/internal/agd;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aeh;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/afc;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/afc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/agd;->a:Lcom/google/ads/interactivemedia/v3/internal/afc;

    return-void
.end method

.method static final a(Lcom/google/ads/interactivemedia/v3/internal/afc;Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;Lcom/google/ads/interactivemedia/v3/internal/aei;)Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/afc;",
            "Lcom/google/ads/interactivemedia/v3/internal/adr;",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "*>;",
            "Lcom/google/ads/interactivemedia/v3/internal/aei;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
            "*>;"
        }
    .end annotation

    .line 4
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/internal/aei;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/aim;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/afc;->a(Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/afq;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/afq;->a()Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aeg;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/aeg;

    goto :goto_1

    .line 7
    :cond_0
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aeh;

    if-eqz v0, :cond_1

    .line 8
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/aeh;

    invoke-interface {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aeh;->a(Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object p0

    goto :goto_1

    .line 9
    :cond_1
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aec;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adv;

    if-eqz v0, :cond_2

    move-object v3, v1

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as a @JsonAdapter for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    move-object v0, p0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/aec;

    move-object v3, v0

    .line 11
    :goto_0
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adv;

    if-eqz v0, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/adv;

    :cond_4
    move-object v4, v1

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/agv;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    .line 12
    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/agv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aec;Lcom/google/ads/interactivemedia/v3/internal/adv;Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;Lcom/google/ads/interactivemedia/v3/internal/aeh;)V

    :goto_1
    if-eqz p0, :cond_5

    .line 13
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/internal/aei;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->nullSafe()Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object p0

    :cond_5
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 2
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

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/aei;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/aei;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/agd;->a:Lcom/google/ads/interactivemedia/v3/internal/afc;

    .line 3
    invoke-static {v1, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/agd;->a(Lcom/google/ads/interactivemedia/v3/internal/afc;Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;Lcom/google/ads/interactivemedia/v3/internal/aei;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object p1

    return-object p1
.end method
