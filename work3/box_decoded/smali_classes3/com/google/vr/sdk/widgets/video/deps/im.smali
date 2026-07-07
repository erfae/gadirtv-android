.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/im;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/ig;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/ig$b;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/ig$c;

.field private final e:Ljava/io/IOException;

.field private final f:Z


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ig$a;Lcom/google/vr/sdk/widgets/video/deps/ig;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->a:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->b:Lcom/google/vr/sdk/widgets/video/deps/ig;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->c:Lcom/google/vr/sdk/widgets/video/deps/ig$b;

    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$c;

    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->e:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->f:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->a:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->b:Lcom/google/vr/sdk/widgets/video/deps/ig;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->c:Lcom/google/vr/sdk/widgets/video/deps/ig$b;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$c;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->e:Ljava/io/IOException;

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/im;->f:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ig;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;Ljava/io/IOException;Z)V

    return-void
.end method
