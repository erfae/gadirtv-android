.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ao$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->c:J

    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->d:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->c:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->d:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b(Ljava/lang/String;JJ)V

    return-void
.end method
