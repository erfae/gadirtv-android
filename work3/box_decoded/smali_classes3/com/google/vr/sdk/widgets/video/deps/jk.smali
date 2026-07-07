.class public abstract Lcom/google/vr/sdk/widgets/video/deps/jk;
.super Lcom/google/vr/sdk/widgets/video/deps/jc;
.source "MediaChunk.java"


# instance fields
.field public final j:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJ)V
    .locals 11

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/jc;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;ILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJ)V

    .line 2
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v1, p10

    .line 3
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jk;->j:J

    return-void
.end method


# virtual methods
.method public h()J
    .locals 5

    .line 5
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jk;->j:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    :cond_0
    return-wide v2
.end method

.method public abstract i()Z
.end method
