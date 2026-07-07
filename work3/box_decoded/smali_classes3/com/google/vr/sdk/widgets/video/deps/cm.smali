.class public final Lcom/google/vr/sdk/widgets/video/deps/cm;
.super Ljava/lang/Object;
.source "ChunkIndex.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/da;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[J

.field public final d:[J

.field public final e:[J

.field private final f:J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->b:[I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->c:[J

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->d:[J

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->e:[J

    .line 6
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->a:I

    if-lez p1, :cond_0

    add-int/lit8 p2, p1, -0x1

    .line 8
    aget-wide p2, p3, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->f:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 9
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->f:J

    :goto_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/da$a;
    .locals 7

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cm;->b(J)I

    move-result v0

    .line 15
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/db;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->e:[J

    aget-wide v3, v2, v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->c:[J

    aget-wide v5, v2, v0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    .line 16
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/db;->b:J

    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->a:I

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/db;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->e:[J

    add-int/lit8 v0, v0, 0x1

    aget-wide v2, p2, v0

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->c:[J

    aget-wide v4, p2, v0

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    .line 19
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p2, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p2

    .line 17
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(J)I
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->e:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([JJZZ)I

    move-result p1

    return p1
.end method

.method public b()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->f:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->a:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->b:[I

    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->c:[J

    .line 22
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->e:[J

    .line 23
    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cm;->d:[J

    .line 24
    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x47

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "ChunkIndex(length="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sizes="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", offsets="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timeUs="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", durationsUs="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
