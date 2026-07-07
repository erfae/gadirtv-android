.class public final Lcom/google/vr/sdk/widgets/video/deps/af$a;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field private e:J

.field private f:Lcom/google/vr/sdk/widgets/video/deps/iy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/iy$a;->a(I)I

    move-result p1

    return p1
.end method

.method public a(J)I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/iy;->a(J)I

    move-result p1

    return p1
.end method

.method public a()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->d:J

    return-wide v0
.end method

.method public a(I)J
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/iy;->c:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/vr/sdk/widgets/video/deps/af$a;
    .locals 9

    .line 2
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/iy;->a:Lcom/google/vr/sdk/widgets/video/deps/iy;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/vr/sdk/widgets/video/deps/iy;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/vr/sdk/widgets/video/deps/iy;)Lcom/google/vr/sdk/widgets/video/deps/af$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b:Ljava/lang/Object;

    .line 5
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c:I

    .line 6
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->d:J

    .line 7
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->e:J

    .line 8
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    return-object p0
.end method

.method public b(I)I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/iy$a;->a()I

    move-result p1

    return p1
.end method

.method public b(J)I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/iy;->b(J)I

    move-result p1

    return p1
.end method

.method public b()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->e:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(II)Z
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    aget-object p1, v0, p1

    .line 21
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/iy$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/iy$a;->c:[I

    aget p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()I
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/iy;->b:I

    return v0
.end method

.method public c(II)J
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    aget-object p1, v0, p1

    .line 23
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/iy$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/iy$a;->d:[J

    aget-wide v0, p1, p2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public c(I)Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/iy$a;->b()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public d(I)I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    aget-object p1, v0, p1

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/iy$a;->a:I

    return p1
.end method

.method public d()J
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->f:Lcom/google/vr/sdk/widgets/video/deps/iy;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/iy;->e:J

    return-wide v0
.end method
