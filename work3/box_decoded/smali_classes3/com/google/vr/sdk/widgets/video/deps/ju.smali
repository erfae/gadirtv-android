.class public final Lcom/google/vr/sdk/widgets/video/deps/ju;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/jt;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/cm;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cm;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ju;->a:Lcom/google/vr/sdk/widgets/video/deps/cm;

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ju;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(J)J
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ju;->a:Lcom/google/vr/sdk/widgets/video/deps/cm;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cm;->e:[J

    long-to-int p2, p1

    aget-wide p1, v0, p2

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ju;->b:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public a(JJ)J
    .locals 2

    .line 10
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ju;->a:Lcom/google/vr/sdk/widgets/video/deps/cm;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ju;->b:J

    add-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cm;->b(J)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 0

    .line 8
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ju;->a:Lcom/google/vr/sdk/widgets/video/deps/cm;

    iget-object p3, p3, Lcom/google/vr/sdk/widgets/video/deps/cm;->d:[J

    long-to-int p2, p1

    aget-wide p1, p3, p2

    return-wide p1
.end method

.method public b(J)Lcom/google/vr/sdk/widgets/video/deps/ke;
    .locals 7

    .line 9
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/ke;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ju;->a:Lcom/google/vr/sdk/widgets/video/deps/cm;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cm;->c:[J

    long-to-int p2, p1

    aget-wide v2, v0, p2

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ju;->a:Lcom/google/vr/sdk/widgets/video/deps/cm;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cm;->b:[I

    aget p1, p1, p2

    int-to-long v4, p1

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ke;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(J)I
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ju;->a:Lcom/google/vr/sdk/widgets/video/deps/cm;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cm;->a:I

    return p1
.end method
