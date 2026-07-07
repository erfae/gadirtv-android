.class public final Lcom/google/vr/sdk/widgets/video/deps/ma;
.super Lcom/google/vr/sdk/widgets/video/deps/lj;
.source "DvbDecoder.java"


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/mb;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "DvbDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lj;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result p1

    .line 4
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v0

    .line 5
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/mb;

    invoke-direct {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/mb;-><init>(II)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ma;->a:Lcom/google/vr/sdk/widgets/video/deps/mb;

    return-void
.end method


# virtual methods
.method protected synthetic a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ll;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ma;->b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/mc;

    move-result-object p1

    return-object p1
.end method

.method protected b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/mc;
    .locals 1

    if-eqz p3, :cond_0

    .line 8
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ma;->a:Lcom/google/vr/sdk/widgets/video/deps/mb;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/mb;->a()V

    .line 9
    :cond_0
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/mc;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ma;->a:Lcom/google/vr/sdk/widgets/video/deps/mb;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/mb;->a([BI)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/mc;-><init>(Ljava/util/List;)V

    return-object p3
.end method
