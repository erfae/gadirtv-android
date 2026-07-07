.class public abstract Lcom/google/ads/interactivemedia/v3/internal/vl;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ve;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/vi;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/vr;Ljava/util/List;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/vl;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/vl;->b:Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/vl;->d:Ljava/util/List;

    invoke-virtual {p3, p0}, Lcom/google/ads/interactivemedia/v3/internal/vr;->a(Lcom/google/ads/interactivemedia/v3/internal/vl;)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/vl;->e:Lcom/google/ads/interactivemedia/v3/internal/vi;

    iget-wide v0, p3, Lcom/google/ads/interactivemedia/v3/internal/vr;->i:J

    iget-wide v4, p3, Lcom/google/ads/interactivemedia/v3/internal/vr;->h:J

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/vl;->c:J

    return-void
.end method


# virtual methods
.method public abstract c()Lcom/google/ads/interactivemedia/v3/internal/vi;
.end method

.method public abstract d()Lcom/google/ads/interactivemedia/v3/internal/up;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final f()Lcom/google/ads/interactivemedia/v3/internal/vi;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vl;->e:Lcom/google/ads/interactivemedia/v3/internal/vi;

    return-object v0
.end method
