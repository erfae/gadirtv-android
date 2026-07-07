.class public Lcom/google/vr/sdk/widgets/video/deps/kg$e;
.super Lcom/google/vr/sdk/widgets/video/deps/kg;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field final d:J

.field final e:J


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    .line 5
    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/kg$e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ke;JJJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ke;JJJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/kg;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ke;JJ)V

    .line 2
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$e;->d:J

    .line 3
    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$e;->e:J

    return-void
.end method


# virtual methods
.method public b()Lcom/google/vr/sdk/widgets/video/deps/ke;
    .locals 7

    .line 7
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$e;->e:J

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/ke;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$e;->d:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ke;-><init>(Ljava/lang/String;JJ)V

    :goto_0
    return-object v0
.end method
