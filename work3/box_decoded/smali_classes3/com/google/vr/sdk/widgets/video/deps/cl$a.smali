.class public Lcom/google/vr/sdk/widgets/video/deps/cl$a;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/da;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/cl$e;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cl$e;JJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$e;

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->b:J

    .line 4
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->c:J

    .line 5
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->d:J

    .line 6
    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->e:J

    .line 7
    iput-wide p10, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->f:J

    .line 8
    iput-wide p12, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->g:J

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->c:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->g:J

    return-wide v0
.end method


# virtual methods
.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/da$a;
    .locals 13

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$e;

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cl$e;->a(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->c:J

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->d:J

    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->e:J

    iget-wide v9, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->f:J

    iget-wide v11, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->g:J

    .line 13
    invoke-static/range {v1 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/cl$d;->a(JJJJJJ)J

    move-result-wide v0

    .line 14
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object v2
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->b:J

    return-wide v0
.end method

.method public b(J)J
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$e;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cl$e;->a(J)J

    move-result-wide p1

    return-wide p1
.end method
