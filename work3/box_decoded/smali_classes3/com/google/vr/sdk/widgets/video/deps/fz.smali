.class final Lcom/google/vr/sdk/widgets/video/deps/fz;
.super Lcom/google/vr/sdk/widgets/video/deps/cl;
.source "TsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fz$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/pp;JJI)V
    .locals 16

    .line 1
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cl$b;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl$b;-><init>()V

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/fz$a;

    move-object/from16 v0, p1

    move/from16 v3, p6

    invoke-direct {v2, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/fz$a;-><init>(ILcom/google/vr/sdk/widgets/video/deps/pp;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/cl;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cl$e;Lcom/google/vr/sdk/widgets/video/deps/cl$g;JJJJJJI)V

    return-void
.end method
