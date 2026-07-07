.class public final Lcom/google/vr/sdk/widgets/video/deps/fy;
.super Ljava/lang/Object;
.source "SpliceInfoSectionReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# instance fields
.field private a:Lcom/google/vr/sdk/widgets/video/deps/pp;

.field private b:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 8

    .line 7
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pp;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 11
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pp;->c()J

    move-result-wide v2

    const-string v4, "application/x-scte35"

    .line 12
    invoke-static {v1, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Z

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v5

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v0, p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 16
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pp;->b()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 3
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 4
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result p1

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 5
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/x-scte35"

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p2, p3, v0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    return-void
.end method
