.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/qi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:F


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/qd$a;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/qi;->a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/qi;->b:I

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/qi;->c:I

    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/qi;->d:I

    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/qi;->e:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qi;->a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/qi;->b:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/qi;->c:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/qi;->d:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/qi;->e:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b(IIIF)V

    return-void
.end method
