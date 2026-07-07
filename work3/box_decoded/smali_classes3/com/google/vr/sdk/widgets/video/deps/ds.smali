.class final Lcom/google/vr/sdk/widgets/video/deps/ds;
.super Lcom/google/vr/sdk/widgets/video/deps/cn;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dt$a;


# direct methods
.method public constructor <init>(JJLcom/google/vr/sdk/widgets/video/deps/cy;)V
    .locals 7

    .line 1
    iget v5, p5, Lcom/google/vr/sdk/widgets/video/deps/cy;->f:I

    iget v6, p5, Lcom/google/vr/sdk/widgets/video/deps/cy;->c:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cn;-><init>(JJII)V

    return-void
.end method


# virtual methods
.method public c(J)J
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ds;->b(J)J

    move-result-wide p1

    return-wide p1
.end method
