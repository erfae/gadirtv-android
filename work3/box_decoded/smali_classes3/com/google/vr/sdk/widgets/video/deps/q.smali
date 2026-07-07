.class final Lcom/google/vr/sdk/widgets/video/deps/q;
.super Ljava/lang/Object;
.source "MediaPeriodInfo.java"


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Z

.field public final f:Z


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    .line 4
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:J

    .line 5
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->d:J

    .line 6
    iput-boolean p8, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->e:Z

    .line 7
    iput-boolean p9, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->f:Z

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/q;
    .locals 11

    .line 9
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:J

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->d:J

    iget-boolean v8, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->e:Z

    iget-boolean v9, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->f:Z

    move-object v0, v10

    move-wide v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/q;-><init>(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJZZ)V

    return-object v10
.end method
