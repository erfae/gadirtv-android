.class final Lcom/google/vr/sdk/widgets/video/deps/nc$b;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/vr/sdk/widgets/video/deps/nc$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/nc$c;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/nc$c;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->a:Lcom/google/vr/sdk/widgets/video/deps/nc$c;

    const/4 v0, 0x0

    .line 3
    invoke-static {p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(IZ)Z

    move-result p3

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->b:I

    .line 4
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;)Z

    move-result p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->c:I

    .line 5
    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->d:I

    .line 6
    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->e:I

    .line 7
    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->f:I

    .line 8
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->g:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/nc$b;)I
    .locals 3

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->b:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->b:I

    if-eq v0, v1, :cond_0

    .line 11
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(II)I

    move-result p1

    return p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->c:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->c:I

    if-eq v0, v1, :cond_1

    .line 13
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(II)I

    move-result p1

    return p1

    .line 14
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->d:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->d:I

    if-eq v0, v1, :cond_2

    .line 15
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(II)I

    move-result p1

    return p1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->a:Lcom/google/vr/sdk/widgets/video/deps/nc$c;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->m:Z

    if-eqz v0, :cond_3

    .line 17
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->g:I

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->g:I

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(II)I

    move-result p1

    return p1

    .line 18
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    .line 19
    :goto_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->e:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->e:I

    if-eq v0, v2, :cond_5

    .line 20
    invoke-static {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(II)I

    move-result p1

    :goto_1
    mul-int v1, v1, p1

    return v1

    .line 21
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->f:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->f:I

    if-eq v0, v2, :cond_6

    .line 22
    invoke-static {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(II)I

    move-result p1

    goto :goto_1

    .line 23
    :cond_6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->g:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->g:I

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(II)I

    move-result p1

    goto :goto_1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->a(Lcom/google/vr/sdk/widgets/video/deps/nc$b;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;

    .line 29
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->b:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->c:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->d:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->e:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->e:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->f:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->f:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->g:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->g:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 30
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 32
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->g:I

    add-int/2addr v0, v1

    return v0
.end method
