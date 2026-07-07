.class final Lcom/google/vr/sdk/widgets/video/deps/ir$a;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lcom/google/vr/sdk/widgets/video/deps/nk;

.field public e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->d:Lcom/google/vr/sdk/widgets/video/deps/nk;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/nk;->b:I

    add-int/2addr p2, p1

    return p2
.end method

.method public a()Lcom/google/vr/sdk/widgets/video/deps/ir$a;
    .locals 2

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->d:Lcom/google/vr/sdk/widgets/video/deps/nk;

    .line 11
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 12
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    return-object v1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/nk;Lcom/google/vr/sdk/widgets/video/deps/ir$a;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->d:Lcom/google/vr/sdk/widgets/video/deps/nk;

    .line 6
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->c:Z

    return-void
.end method
