.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/il;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/ig;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/ig$b;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/ig$c;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ig$a;Lcom/google/vr/sdk/widgets/video/deps/ig;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/il;->a:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/il;->b:Lcom/google/vr/sdk/widgets/video/deps/ig;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/il;->c:Lcom/google/vr/sdk/widgets/video/deps/ig$b;

    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/il;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/il;->a:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/il;->b:Lcom/google/vr/sdk/widgets/video/deps/ig;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/il;->c:Lcom/google/vr/sdk/widgets/video/deps/ig$b;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/il;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ig;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V

    return-void
.end method
