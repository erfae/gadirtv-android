.class final Lcom/google/vr/sdk/widgets/video/deps/mo;
.super Ljava/lang/Object;
.source "TtmlSubtitle.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ll;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/mk;

.field private final b:[J

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/mn;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/ml;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/mk;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/mk;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/mn;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/ml;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mo;->a:Lcom/google/vr/sdk/widgets/video/deps/mk;

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/mo;->d:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mo;->c:Ljava/util/Map;

    .line 6
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/mk;->b()[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mo;->b:[J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mo;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b([JJZZ)I

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mo;->b:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a(I)J
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mo;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public b()I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mo;->b:[J

    array-length v0, v0

    return v0
.end method

.method public b(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/li;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mo;->a:Lcom/google/vr/sdk/widgets/video/deps/mk;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mo;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mo;->d:Ljava/util/Map;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/mk;->a(JLjava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
