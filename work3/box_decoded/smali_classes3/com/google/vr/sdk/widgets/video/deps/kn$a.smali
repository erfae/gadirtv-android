.class final Lcom/google/vr/sdk/widgets/video/deps/kn$a;
.super Lcom/google/vr/sdk/widgets/video/deps/ji;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private j:[B


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;[BLjava/lang/String;)V
    .locals 8

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/ji;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;ILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;[B)V

    .line 2
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/kn$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn$a;->j:[B

    return-void
.end method

.method public h()[B
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn$a;->j:[B

    return-object v0
.end method
