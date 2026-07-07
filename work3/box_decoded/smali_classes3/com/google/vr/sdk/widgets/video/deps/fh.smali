.class public final Lcom/google/vr/sdk/widgets/video/deps/fh;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/gd$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private c:Z

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/gd$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->a:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/dc;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->b:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Z
    .locals 2

    .line 45
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 48
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->c:Z

    .line 49
    :cond_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->d:I

    .line 50
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->c:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 21
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->c:Z

    .line 22
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->f:J

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->e:I

    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->d:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 11

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->b:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/gd$a;

    .line 9
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 10
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v2

    .line 12
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/gd$a;->c:[B

    .line 13
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/gd$a;->a:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v4, "application/dvbsubs"

    .line 14
    invoke-static/range {v3 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v1

    .line 15
    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 16
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->b:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 6

    .line 32
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->c:Z

    if-eqz v0, :cond_3

    .line 33
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fh;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/fh;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    .line 38
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v2

    .line 39
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->b:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 41
    invoke-interface {v5, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_2
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->e:I

    :cond_3
    return-void
.end method

.method public b()V
    .locals 11

    .line 26
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->c:Z

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->b:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 28
    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->f:J

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_0
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->c:Z

    :cond_1
    return-void
.end method
