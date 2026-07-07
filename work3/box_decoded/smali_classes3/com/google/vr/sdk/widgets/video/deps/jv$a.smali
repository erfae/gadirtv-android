.class public final Lcom/google/vr/sdk/widgets/video/deps/jv$a;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/jn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/jv$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr$a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr$a;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$a;->a:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    .line 5
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/ok;Lcom/google/vr/sdk/widgets/video/deps/jz;I[ILcom/google/vr/sdk/widgets/video/deps/nf;IJZZLcom/google/vr/sdk/widgets/video/deps/jx$c;Lcom/google/vr/sdk/widgets/video/deps/oo;)Lcom/google/vr/sdk/widgets/video/deps/jn;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    .line 7
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$a;->a:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/nr$a;->a()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v10

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v10, v1}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    .line 10
    :cond_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/jv;

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$a;->b:I

    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v11, p7

    move/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/jv;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ok;Lcom/google/vr/sdk/widgets/video/deps/jz;I[ILcom/google/vr/sdk/widgets/video/deps/nf;ILcom/google/vr/sdk/widgets/video/deps/nr;JIZZLcom/google/vr/sdk/widgets/video/deps/jx$c;)V

    return-object v1
.end method
