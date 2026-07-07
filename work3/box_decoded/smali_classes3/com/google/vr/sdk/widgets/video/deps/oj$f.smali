.class final Lcom/google/vr/sdk/widgets/video/deps/oj$f;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/oj$e;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/oj$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$f;->a:Lcom/google/vr/sdk/widgets/video/deps/oj$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$f;->a:Lcom/google/vr/sdk/widgets/video/deps/oj$e;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj$e;->g()V

    return-void
.end method
