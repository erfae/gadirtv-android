.class final Lcom/google/vr/sdk/widgets/video/deps/kn$c;
.super Lcom/google/vr/sdk/widgets/video/deps/ja;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final b:Lcom/google/vr/sdk/widgets/video/deps/ld;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ld;JI)V
    .locals 4

    int-to-long v0, p4

    .line 1
    iget-object p4, p1, Lcom/google/vr/sdk/widgets/video/deps/ld;->l:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    int-to-long v2, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ja;-><init>(JJ)V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn$c;->b:Lcom/google/vr/sdk/widgets/video/deps/ld;

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kn$c;->c:J

    return-void
.end method
