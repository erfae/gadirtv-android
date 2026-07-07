.class public final Lcom/google/vr/sdk/widgets/video/deps/gw;
.super Ljava/lang/Object;
.source "EventMessageDecoder.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/gq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/gs;)Lcom/google/vr/sdk/widgets/video/deps/gp;
    .locals 16

    move-object/from16 v0, p1

    .line 2
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gs;->b:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 5
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v2, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([BI)V

    .line 6
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->A()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->A()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v12

    .line 9
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v14

    .line 10
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v6

    .line 11
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v8

    .line 12
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 13
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gp;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/deps/gp$a;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/gv;

    move-object v3, v2

    move-wide v11, v14

    invoke-direct/range {v3 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/gv;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[BJ)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gp;-><init>([Lcom/google/vr/sdk/widgets/video/deps/gp$a;)V

    return-object v0
.end method
