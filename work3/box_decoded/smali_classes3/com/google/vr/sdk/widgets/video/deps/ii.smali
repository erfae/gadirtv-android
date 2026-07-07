.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/ii;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/ig;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/if$a;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ig$a;Lcom/google/vr/sdk/widgets/video/deps/ig;Lcom/google/vr/sdk/widgets/video/deps/if$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ii;->a:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ii;->b:Lcom/google/vr/sdk/widgets/video/deps/ig;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ii;->c:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ii;->a:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ii;->b:Lcom/google/vr/sdk/widgets/video/deps/ig;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ii;->c:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->b(Lcom/google/vr/sdk/widgets/video/deps/ig;Lcom/google/vr/sdk/widgets/video/deps/if$a;)V

    return-void
.end method
