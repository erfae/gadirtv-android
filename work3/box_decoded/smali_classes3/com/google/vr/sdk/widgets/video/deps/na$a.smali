.class public final Lcom/google/vr/sdk/widgets/video/deps/na$a;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/nf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/na;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/nn;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:F

.field private final f:F

.field private final g:J

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/oq;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/oq;->a:Lcom/google/vr/sdk/widgets/video/deps/oq;

    const/16 v1, 0x2710

    const/16 v2, 0x61a8

    const/16 v3, 0x61a8

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f400000    # 0.75f

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/na$a;-><init>(IIIFFJLcom/google/vr/sdk/widgets/video/deps/oq;)V

    return-void
.end method

.method public constructor <init>(IIIFFJLcom/google/vr/sdk/widgets/video/deps/oq;)V
    .locals 10

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/na$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nn;IIIFFJLcom/google/vr/sdk/widgets/video/deps/oq;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nn;IIIFFJLcom/google/vr/sdk/widgets/video/deps/oq;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->a:Lcom/google/vr/sdk/widgets/video/deps/nn;

    .line 7
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->b:I

    .line 8
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->c:I

    .line 9
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->d:I

    .line 10
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->e:F

    .line 11
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->f:F

    .line 12
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->g:J

    .line 13
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->h:Lcom/google/vr/sdk/widgets/video/deps/oq;

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/google/vr/sdk/widgets/video/deps/iv;Lcom/google/vr/sdk/widgets/video/deps/nn;[I)Lcom/google/vr/sdk/widgets/video/deps/na;
    .locals 17

    move-object/from16 v0, p0

    .line 15
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->a:Lcom/google/vr/sdk/widgets/video/deps/nn;

    if-eqz v1, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    .line 17
    :goto_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/na;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->b:I

    int-to-long v6, v2

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->c:I

    int-to-long v8, v2

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->d:I

    int-to-long v10, v2

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->e:F

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->f:F

    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->g:J

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/na$a;->h:Lcom/google/vr/sdk/widgets/video/deps/oq;

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v16, v4

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/na;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iv;[ILcom/google/vr/sdk/widgets/video/deps/nn;JJJFFJLcom/google/vr/sdk/widgets/video/deps/oq;)V

    return-object v1
.end method

.method public synthetic b(Lcom/google/vr/sdk/widgets/video/deps/iv;Lcom/google/vr/sdk/widgets/video/deps/nn;[I)Lcom/google/vr/sdk/widgets/video/deps/nf;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/na$a;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;Lcom/google/vr/sdk/widgets/video/deps/nn;[I)Lcom/google/vr/sdk/widgets/video/deps/na;

    move-result-object p1

    return-object p1
.end method
