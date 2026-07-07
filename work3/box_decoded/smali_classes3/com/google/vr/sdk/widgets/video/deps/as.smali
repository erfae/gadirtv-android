.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

.field private final b:I

.field private final c:J

.field private final d:J


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ao$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/as;->a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/as;->b:I

    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/as;->c:J

    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/as;->d:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/as;->a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/as;->b:I

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/as;->c:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/as;->d:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b(IJJ)V

    return-void
.end method
