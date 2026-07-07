.class public Lcom/google/vr/sdk/widgets/video/deps/kg$b;
.super Lcom/google/vr/sdk/widgets/video/deps/kg$a;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/ke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ke;JJJJLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ke;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/kg$d;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/ke;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/vr/sdk/widgets/video/deps/kg$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ke;JJJJLjava/util/List;)V

    .line 2
    iput-object p11, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$b;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/kf;J)Lcom/google/vr/sdk/widgets/video/deps/ke;
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$b;->g:Ljava/util/List;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$b;->d:J

    sub-long/2addr p2, v0

    long-to-int p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ke;

    return-object p1
.end method

.method public b(J)I
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$b;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
