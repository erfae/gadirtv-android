.class public Lcom/google/vr/sdk/widgets/video/deps/kf$b;
.super Lcom/google/vr/sdk/widgets/video/deps/kf;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/kf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final g:Landroid/net/Uri;

.field public final h:J

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/ke;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/kh;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/kg$e;Ljava/util/List;Ljava/lang/String;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/kg$e;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/kb;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/kf;-><init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/kg;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/kf$1;)V

    .line 2
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/kf$b;->g:Landroid/net/Uri;

    .line 3
    invoke-virtual/range {p6 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/kg$e;->b()Lcom/google/vr/sdk/widgets/video/deps/ke;

    move-result-object v0

    iput-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/kf$b;->j:Lcom/google/vr/sdk/widgets/video/deps/ke;

    const/4 v1, 0x0

    if-eqz p8, :cond_0

    move-object/from16 v2, p8

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    move-object v2, p4

    .line 5
    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v2, p2

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iput-object v2, v9, Lcom/google/vr/sdk/widgets/video/deps/kf$b;->i:Ljava/lang/String;

    move-wide/from16 v2, p9

    .line 6
    iput-wide v2, v9, Lcom/google/vr/sdk/widgets/video/deps/kf$b;->h:J

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/kh;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ke;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object p1, v0

    move-object p2, v4

    move-wide p3, v5

    move-wide/from16 p5, p9

    invoke-direct/range {p1 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/ke;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/kh;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ke;)V

    :goto_1
    iput-object v1, v9, Lcom/google/vr/sdk/widgets/video/deps/kf$b;->k:Lcom/google/vr/sdk/widgets/video/deps/kh;

    return-void
.end method


# virtual methods
.method public d()Lcom/google/vr/sdk/widgets/video/deps/ke;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kf$b;->j:Lcom/google/vr/sdk/widgets/video/deps/ke;

    return-object v0
.end method

.method public e()Lcom/google/vr/sdk/widgets/video/deps/jt;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kf$b;->k:Lcom/google/vr/sdk/widgets/video/deps/kh;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kf$b;->i:Ljava/lang/String;

    return-object v0
.end method
