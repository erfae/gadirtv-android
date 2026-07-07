.class final Lcom/google/vr/sdk/widgets/video/deps/t;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/if$a;


# instance fields
.field public final b:Lcom/google/vr/sdk/widgets/video/deps/af;

.field public final c:Ljava/lang/Object;

.field public final d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:Z

.field public final i:Lcom/google/vr/sdk/widgets/video/deps/iw;

.field public final j:Lcom/google/vr/sdk/widgets/video/deps/nj;

.field public final k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

.field public volatile l:J

.field public volatile m:J

.field public volatile n:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/if$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/t;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJIZLcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJ)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-wide v1, p4

    .line 6
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    move-wide v1, p6

    .line 7
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    move v1, p8

    .line 8
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    move v1, p9

    .line 9
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    move-object v1, p12

    .line 12
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-wide/from16 v1, p13

    .line 13
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->l:J

    move-wide/from16 v1, p15

    .line 14
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->m:J

    move-wide/from16 v1, p17

    .line 15
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    return-void
.end method

.method public static a(JLcom/google/vr/sdk/widgets/video/deps/nj;)Lcom/google/vr/sdk/widgets/video/deps/t;
    .locals 20

    move-wide/from16 v4, p0

    move-wide/from16 v13, p0

    move-wide/from16 v17, p0

    move-object/from16 v11, p2

    .line 1
    new-instance v19, Lcom/google/vr/sdk/widgets/video/deps/t;

    move-object/from16 v0, v19

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/af;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    sget-object v12, Lcom/google/vr/sdk/widgets/video/deps/t;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-object v3, v12

    sget-object v10, Lcom/google/vr/sdk/widgets/video/deps/iw;->a:Lcom/google/vr/sdk/widgets/video/deps/iw;

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/t;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJIZLcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJ)V

    return-object v19
.end method


# virtual methods
.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/t;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v9, p1

    .line 21
    new-instance v20, Lcom/google/vr/sdk/widgets/video/deps/t;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    iget-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->l:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->m:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/t;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJIZLcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJ)V

    return-object v20
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/t;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 20
    new-instance v20, Lcom/google/vr/sdk/widgets/video/deps/t;

    move-object/from16 v1, v20

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    iget-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->l:J

    move-object/from16 p2, v1

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->m:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    move-wide/from16 v18, v1

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/t;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJIZLcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJ)V

    return-object v20
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/t;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 24
    new-instance v20, Lcom/google/vr/sdk/widgets/video/deps/t;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    iget-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->l:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->m:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/t;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJIZLcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJ)V

    return-object v20
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;
    .locals 21

    move-object/from16 v0, p0

    .line 17
    new-instance v20, Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v7, p4

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    :goto_0
    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    iget-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    const-wide/16 v16, 0x0

    move-object/from16 v1, v20

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/t;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJIZLcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJ)V

    return-object v20
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;)Lcom/google/vr/sdk/widgets/video/deps/t;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 23
    new-instance v20, Lcom/google/vr/sdk/widgets/video/deps/t;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    iget-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->l:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->m:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/t;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJIZLcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJ)V

    return-object v20
.end method

.method public a(Z)Lcom/google/vr/sdk/widgets/video/deps/t;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 22
    new-instance v20, Lcom/google/vr/sdk/widgets/video/deps/t;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->l:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->m:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/t;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJIZLcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJ)V

    return-object v20
.end method
