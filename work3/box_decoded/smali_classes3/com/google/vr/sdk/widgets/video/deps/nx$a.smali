.class public final Lcom/google/vr/sdk/widgets/video/deps/nx$a;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/nx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/google/vr/sdk/widgets/video/deps/nn$a;

.field private c:J

.field private d:I

.field private e:Lcom/google/vr/sdk/widgets/video/deps/oq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf4240

    .line 2
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nx$a;->c:J

    const/16 v0, 0x7d0

    .line 3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nx$a;->d:I

    .line 4
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/oq;->a:Lcom/google/vr/sdk/widgets/video/deps/oq;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nx$a;->e:Lcom/google/vr/sdk/widgets/video/deps/oq;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/nx;
    .locals 7

    .line 6
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/nx;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx$a;->c:J

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/nx$a;->d:I

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/nx$a;->e:Lcom/google/vr/sdk/widgets/video/deps/oq;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/nx;-><init>(JILcom/google/vr/sdk/widgets/video/deps/oq;Lcom/google/vr/sdk/widgets/video/deps/nx$1;)V

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nx$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx$a;->b:Lcom/google/vr/sdk/widgets/video/deps/nn$a;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v6, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nx;->a(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/nn$a;)V

    :cond_0
    return-object v6
.end method
