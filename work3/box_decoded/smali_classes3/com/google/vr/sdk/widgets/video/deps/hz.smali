.class public final Lcom/google/vr/sdk/widgets/video/deps/hz;
.super Ljava/lang/Object;
.source "EmptySampleStream.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/is;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I
    .locals 0

    const/4 p1, 0x4

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a_(I)V

    const/4 p1, -0x4

    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b_(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
