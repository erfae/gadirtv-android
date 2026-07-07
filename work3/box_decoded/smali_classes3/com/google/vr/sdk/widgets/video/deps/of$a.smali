.class public abstract Lcom/google/vr/sdk/widgets/video/deps/of$a;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/of$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/of;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/of$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/of$f;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/of$f;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/of$a;->a:Lcom/google/vr/sdk/widgets/video/deps/of$f;

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/vr/sdk/widgets/video/deps/nr;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/of$a;->b()Lcom/google/vr/sdk/widgets/video/deps/of;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/vr/sdk/widgets/video/deps/of;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/of$a;->a:Lcom/google/vr/sdk/widgets/video/deps/of$f;

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/of$a;->b(Lcom/google/vr/sdk/widgets/video/deps/of$f;)Lcom/google/vr/sdk/widgets/video/deps/of;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b(Lcom/google/vr/sdk/widgets/video/deps/of$f;)Lcom/google/vr/sdk/widgets/video/deps/of;
.end method
