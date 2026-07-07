.class public abstract Lcom/google/vr/sdk/widgets/video/deps/kf;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/kf$a;,
        Lcom/google/vr/sdk/widgets/video/deps/kf$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Lcom/google/vr/sdk/widgets/video/deps/l;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/kb;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/ke;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/kg;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/kg;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/kb;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kf;->a:Ljava/lang/String;

    .line 9
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kf;->b:J

    .line 10
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/kf;->c:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 11
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/kf;->d:Ljava/lang/String;

    if-nez p7, :cond_0

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kf;->f:Ljava/util/List;

    .line 16
    invoke-virtual {p6, p0}, Lcom/google/vr/sdk/widgets/video/deps/kg;->a(Lcom/google/vr/sdk/widgets/video/deps/kf;)Lcom/google/vr/sdk/widgets/video/deps/ke;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kf;->g:Lcom/google/vr/sdk/widgets/video/deps/ke;

    .line 17
    invoke-virtual {p6}, Lcom/google/vr/sdk/widgets/video/deps/kg;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kf;->e:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/kg;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/kf$1;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p7}, Lcom/google/vr/sdk/widgets/video/deps/kf;-><init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/kg;Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/kg;Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/kf;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/kg;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/kb;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/kf;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/kf;->a(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/kg;Ljava/util/List;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/kf;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/kg;Ljava/util/List;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/kf;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/kg;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/kb;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/kf;"
        }
    .end annotation

    move-object/from16 v0, p5

    .line 2
    instance-of v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kg$e;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/kf$b;

    move-object v8, v0

    check-cast v8, Lcom/google/vr/sdk/widgets/video/deps/kg$e;

    const-wide/16 v11, -0x1

    move-object v2, v1

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/kf$b;-><init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/kg$e;Ljava/util/List;Ljava/lang/String;J)V

    return-object v1

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kg$a;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/kf$a;

    move-object v8, v0

    check-cast v8, Lcom/google/vr/sdk/widgets/video/deps/kg$a;

    move-object v2, v1

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/kf$a;-><init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/kg$a;Ljava/util/List;)V

    return-object v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c()Lcom/google/vr/sdk/widgets/video/deps/ke;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kf;->g:Lcom/google/vr/sdk/widgets/video/deps/ke;

    return-object v0
.end method

.method public abstract d()Lcom/google/vr/sdk/widgets/video/deps/ke;
.end method

.method public abstract e()Lcom/google/vr/sdk/widgets/video/deps/jt;
.end method

.method public abstract f()Ljava/lang/String;
.end method
