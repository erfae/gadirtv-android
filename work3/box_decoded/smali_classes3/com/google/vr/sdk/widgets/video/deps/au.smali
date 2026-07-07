.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ao$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/au;->a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/au;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/au;->a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/au;->b:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b(I)V

    return-void
.end method
