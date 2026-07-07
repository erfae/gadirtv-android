.class final Lcom/google/vr/sdk/widgets/video/deps/dy$e;
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
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dx$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->c:I

    .line 5
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->b:I

    return v0
.end method

.method public b()I
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v0

    return v0

    .line 12
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 15
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$e;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
