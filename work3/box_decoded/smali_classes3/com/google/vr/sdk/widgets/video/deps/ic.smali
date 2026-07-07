.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/ic;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ia;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ic;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ic;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->i()V

    return-void
.end method
