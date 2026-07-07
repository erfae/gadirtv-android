.class final Lcom/google/vr/sdk/widgets/video/deps/jd$a;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/jd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/dc;


# direct methods
.method public constructor <init>(IILcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->b:I

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->c:I

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I

    move-result p1

    return p1
.end method

.method public a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V
    .locals 7

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jd$b;)V
    .locals 2

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cq;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/cq;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    return-void

    .line 9
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->b:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->c:I

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jd$b;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    return-void
.end method
