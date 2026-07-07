.class public abstract Lcom/google/vr/sdk/widgets/video/deps/iz;
.super Lcom/google/vr/sdk/widgets/video/deps/jk;
.source "BaseMediaChunk.java"


# instance fields
.field public final a:J

.field private k:Lcom/google/vr/sdk/widgets/video/deps/jb;

.field private l:[I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJ)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p12

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/jk;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJ)V

    move-wide/from16 v1, p10

    .line 2
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/iz;->a:J

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iz;->l:[I

    aget p1, v0, p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jb;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iz;->k:Lcom/google/vr/sdk/widgets/video/deps/jb;

    .line 5
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/jb;->a()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iz;->l:[I

    return-void
.end method

.method protected final c()Lcom/google/vr/sdk/widgets/video/deps/jb;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iz;->k:Lcom/google/vr/sdk/widgets/video/deps/jb;

    return-object v0
.end method
