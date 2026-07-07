.class final Lcom/google/vr/sdk/widgets/video/deps/dy$d;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/pe;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dx$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$d;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$d;->a:I

    .line 5
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$d;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$d;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$d;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v0

    :cond_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$d;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
