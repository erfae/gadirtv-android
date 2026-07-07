.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/qh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

.field private final b:I

.field private final c:J


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/qd$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/qh;->a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/qh;->b:I

    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/qh;->c:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qh;->a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/qh;->b:I

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/qh;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b(IJ)V

    return-void
.end method
